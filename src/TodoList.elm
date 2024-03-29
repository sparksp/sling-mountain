module TodoList exposing
    ( Position(..)
    , TodoList
    , chooseFromList
    , complete
    , completed
    , current
    , decoder
    , disable
    , disableCurrent
    , disabled
    , empty
    , encoder
    , pick
    , remaining
    , restore
    , restoreAllCompleted
    , restoreAllDisabled
    , skip
    , update
    )

import Json.Decode as Decode
import Json.Encode as Encode
import Maybe.Extra
import Random
import Random.List


type Position
    = Current
    | Remaining
    | Completed
    | Disabled


type TodoList comparable v
    = AllDone
        { completed : List ( comparable, v )
        , disabled : List ( comparable, v )
        }
    | Todo
        { current : ( comparable, v )
        , remaining : List ( comparable, v )
        , completed : List ( comparable, v )
        , disabled : List ( comparable, v )
        }


empty : TodoList comparable v
empty =
    AllDone { completed = [], disabled = [] }


chooseFromList : comparable -> List ( comparable, v ) -> Random.Generator (TodoList comparable v)
chooseFromList key list =
    case find key list of
        ( Just found, rest ) ->
            Random.constant (Todo { current = found, remaining = rest, completed = [], disabled = [] })

        ( Nothing, _ ) ->
            chooseData { remaining = list, completed = [], disabled = [] }


skip : TodoList comparable v -> Random.Generator (TodoList comparable v)
skip list =
    let
        keep : ( comparable, v ) -> TodoList comparable v -> TodoList comparable v
        keep =
            \value todo ->
                case todo of
                    AllDone data ->
                        Todo
                            { current = value
                            , remaining = []
                            , completed = data.completed
                            , disabled = data.disabled
                            }

                    Todo data ->
                        Todo { data | remaining = value :: data.remaining }
    in
    case list of
        Todo data ->
            chooseData data |> Random.map (keep data.current)

        AllDone _ ->
            Random.constant list


complete : TodoList comparable v -> Random.Generator (TodoList comparable v)
complete list =
    case list of
        Todo data ->
            chooseData { data | completed = data.current :: data.completed }

        AllDone _ ->
            Random.constant list


disableCurrent : TodoList comparable v -> Random.Generator (TodoList comparable v)
disableCurrent list =
    case list of
        Todo data ->
            case data.remaining of
                [] ->
                    Random.constant (AllDone { completed = data.completed, disabled = data.current :: data.disabled })

                _ ->
                    chooseData { data | disabled = data.current :: data.disabled }

        AllDone _ ->
            Random.constant list


disable : comparable -> TodoList comparable v -> TodoList comparable v
disable key list =
    let
        findResult : ( Maybe ( comparable, v ), TodoList comparable v )
        findResult =
            ( Nothing, list )
                |> findTodoListRemaining key
                |> findTodoListCompleted key
    in
    case findResult of
        ( Nothing, _ ) ->
            list

        ( Just found, Todo data ) ->
            Todo { data | disabled = found :: data.disabled }

        ( Just found, AllDone data ) ->
            AllDone { data | disabled = found :: data.disabled }


pick : comparable -> TodoList comparable v -> TodoList comparable v
pick key list =
    let
        findResult : ( Maybe ( comparable, v ), TodoList comparable v )
        findResult =
            ( Nothing, list )
                |> findTodoListRemaining key
                |> findTodoListCompleted key
                |> findTodoListDisabled key
    in
    case findResult of
        ( Nothing, _ ) ->
            list

        ( Just found, Todo data ) ->
            Todo { data | current = found, remaining = data.current :: data.remaining }

        ( Just found, AllDone data ) ->
            Todo { current = found, remaining = [], completed = data.completed, disabled = data.disabled }


{-| Attempts to return the given item to the remaining list.
-}
restore : comparable -> TodoList comparable v -> TodoList comparable v
restore key list =
    let
        findResult : ( Maybe ( comparable, v ), TodoList comparable v )
        findResult =
            ( Nothing, list )
                |> findTodoListCompleted key
                |> findTodoListDisabled key
    in
    case findResult of
        ( Nothing, _ ) ->
            list

        ( Just found, Todo data ) ->
            Todo { data | remaining = found :: data.remaining }

        ( Just found, AllDone data ) ->
            Todo { current = found, remaining = [], completed = data.completed, disabled = data.disabled }


{-| Moves anything completed to remaining, maintaining existing current if there is one or else using the first completed.
-}
restoreAllCompleted : TodoList comparable v -> TodoList comparable v
restoreAllCompleted list =
    case list of
        Todo data ->
            Todo { data | remaining = data.remaining ++ data.completed, completed = [] }

        AllDone data ->
            case data.completed of
                [] ->
                    list

                head :: rest ->
                    Todo { current = head, remaining = rest, completed = [], disabled = data.disabled }


{-| Moves anything disabled to remaining, maintaining existing current if there is one or else using the first disabled.
-}
restoreAllDisabled : TodoList comparable v -> TodoList comparable v
restoreAllDisabled list =
    case list of
        Todo data ->
            Todo { data | remaining = data.remaining ++ data.disabled, disabled = [] }

        AllDone data ->
            case data.disabled of
                [] ->
                    list

                head :: rest ->
                    Todo { current = head, remaining = rest, completed = data.completed, disabled = [] }


current : TodoList comparable v -> Maybe ( comparable, v )
current list =
    case list of
        Todo data ->
            Just data.current

        AllDone _ ->
            Nothing


remaining : TodoList comparable v -> List ( comparable, v )
remaining list =
    case list of
        Todo data ->
            data.remaining

        AllDone _ ->
            []


completed : TodoList comparable v -> List ( comparable, v )
completed list =
    case list of
        Todo data ->
            data.completed

        AllDone data ->
            data.completed


disabled : TodoList comparable v -> List ( comparable, v )
disabled list =
    case list of
        Todo data ->
            data.disabled

        AllDone data ->
            data.disabled



--- DECODER


decoder : List ( String, v ) -> Decode.Decoder (TodoList String v)
decoder list =
    decoderDataDecoder
        |> Decode.map (fromListWithDecoderData list)


update : Decode.Value -> TodoList String v -> Result Decode.Error (TodoList String v)
update json todo =
    Decode.decodeValue decoderDataDecoder json
        |> Result.map (fromTodoWithDecoderData todo)



--- ENCODER


encoder : TodoList String v -> Encode.Value
encoder todo =
    case todo of
        Todo data ->
            ( "current", encodeKey data.current )
                :: encodeData data
                |> Encode.object

        AllDone data ->
            ( "current", Encode.null )
                :: encodeData data
                |> Encode.object


encodeData : { a | completed : List ( String, v ), disabled : List ( String, v ) } -> List ( String, Encode.Value )
encodeData data =
    [ ( "completed", Encode.list encodeKey data.completed )
    , ( "disabled", Encode.list encodeKey data.disabled )
    ]


encodeKey : ( String, v ) -> Encode.Value
encodeKey ( key, _ ) =
    Encode.string key



--- PRIVATE


chooseData :
    { a
        | remaining : List ( comparable, v )
        , completed : List ( comparable, v )
        , disabled : List ( comparable, v )
    }
    -> Random.Generator (TodoList comparable v)
chooseData data =
    Random.List.choose data.remaining
        |> Random.map
            (\( maybeItem, rest ) ->
                case maybeItem of
                    Nothing ->
                        AllDone { completed = data.completed, disabled = data.disabled }

                    Just item ->
                        Todo { current = item, remaining = rest, completed = data.completed, disabled = data.disabled }
            )


find : comparable -> List ( comparable, v ) -> ( Maybe ( comparable, v ), List ( comparable, v ) )
find search list =
    List.foldr (finder search) ( Nothing, [] ) list


finder : comparable -> ( comparable, v ) -> ( Maybe ( comparable, v ), List ( comparable, v ) ) -> ( Maybe ( comparable, v ), List ( comparable, v ) )
finder search ( key, value ) ( found, tested ) =
    case found of
        Nothing ->
            if key == search then
                ( Just ( key, value ), tested )

            else
                ( Nothing, ( key, value ) :: tested )

        Just _ ->
            ( found, ( key, value ) :: tested )


findMaybe : Maybe String -> List ( String, v ) -> ( Maybe ( String, v ), List ( String, v ) )
findMaybe maybeKey list =
    case maybeKey of
        Nothing ->
            ( Nothing, list )

        Just key ->
            find key list


findTodoListRemaining : comparable -> ( Maybe ( comparable, v ), TodoList comparable v ) -> ( Maybe ( comparable, v ), TodoList comparable v )
findTodoListRemaining key ( maybeFound, todo ) =
    case todo of
        AllDone _ ->
            ( maybeFound, todo )

        Todo data ->
            let
                ( maybeCurrent, newRemaining ) =
                    find key data.remaining
            in
            ( Maybe.Extra.or maybeFound maybeCurrent
            , Todo { data | remaining = newRemaining }
            )


findTodoListCompleted : comparable -> ( Maybe ( comparable, v ), TodoList comparable v ) -> ( Maybe ( comparable, v ), TodoList comparable v )
findTodoListCompleted key ( maybeFound, todo ) =
    case todo of
        AllDone data ->
            let
                ( maybeCurrent, newCompleted ) =
                    find key data.completed
            in
            ( Maybe.Extra.or maybeFound maybeCurrent
            , AllDone { data | completed = newCompleted }
            )

        Todo data ->
            let
                ( maybeCurrent, newCompleted ) =
                    find key data.completed
            in
            ( Maybe.Extra.or maybeFound maybeCurrent
            , Todo { data | completed = newCompleted }
            )


findTodoListDisabled : comparable -> ( Maybe ( comparable, v ), TodoList comparable v ) -> ( Maybe ( comparable, v ), TodoList comparable v )
findTodoListDisabled key ( maybeFound, todo ) =
    case todo of
        AllDone data ->
            let
                ( maybeCurrent, newDisabled ) =
                    find key data.disabled
            in
            ( Maybe.Extra.or maybeFound maybeCurrent
            , AllDone { data | disabled = newDisabled }
            )

        Todo data ->
            let
                ( maybeCurrent, newDisabled ) =
                    find key data.disabled
            in
            ( Maybe.Extra.or maybeFound maybeCurrent
            , Todo { data | disabled = newDisabled }
            )


partitionListByKeys : List String -> List ( String, v ) -> ( List ( String, v ), List ( String, v ) )
partitionListByKeys keys list =
    List.partition (\( key, _ ) -> List.member key keys) list


type alias DecoderData v =
    { current : Maybe v
    , completed : List v
    , disabled : List v
    }


decoderDataDecoder : Decode.Decoder (DecoderData String)
decoderDataDecoder =
    Decode.map3
        (\currentValue completedValue disabledValue ->
            { current = currentValue
            , completed = completedValue
            , disabled = disabledValue
            }
        )
        (Decode.field "current" (Decode.nullable Decode.string))
        (Decode.field "completed" (Decode.list Decode.string))
        (Decode.field "disabled" (Decode.list Decode.string))


fromListWithDecoderData : List ( String, v ) -> DecoderData String -> TodoList String v
fromListWithDecoderData list keys =
    let
        ( maybeCurrent, currentRemaining ) =
            findMaybe keys.current list

        ( completedList, completedRemaining ) =
            partitionListByKeys keys.completed currentRemaining

        ( disabledList, remainingList ) =
            partitionListByKeys keys.disabled completedRemaining
    in
    case ( maybeCurrent, remainingList ) of
        ( Nothing, [] ) ->
            AllDone { completed = completedList, disabled = disabledList }

        ( Nothing, first :: rest ) ->
            Todo { current = first, remaining = rest, completed = completedList, disabled = disabledList }

        ( Just gotCurrent, _ ) ->
            Todo { current = gotCurrent, remaining = remainingList, completed = completedList, disabled = disabledList }


fromTodoWithDecoderData : TodoList String v -> DecoderData String -> TodoList String v
fromTodoWithDecoderData todo keys =
    let
        ( maybeCurrentKey, list ) =
            case todo of
                Todo data ->
                    ( Just (Tuple.first data.current), data.current :: data.remaining ++ data.completed ++ data.disabled )

                AllDone data ->
                    ( Nothing, data.completed ++ data.disabled )
    in
    fromListWithDecoderData list keys
        |> pickFromRemaining maybeCurrentKey


pickFromRemaining : Maybe String -> TodoList String v -> TodoList String v
pickFromRemaining maybeKey todo =
    case maybeKey of
        Nothing ->
            todo

        Just key ->
            let
                findResult : ( Maybe ( String, v ), TodoList String v )
                findResult =
                    ( Nothing, todo )
                        |> findTodoListRemaining key
            in
            case findResult of
                ( Nothing, _ ) ->
                    todo

                ( Just found, Todo data ) ->
                    Todo { data | current = found, remaining = data.current :: data.remaining }

                ( Just found, AllDone data ) ->
                    Todo { current = found, remaining = [], completed = data.completed, disabled = data.disabled }
