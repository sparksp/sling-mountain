module TodoList exposing (Position(..), TodoList, chooseFromList, complete, completed, current, decoder, empty, encoder, pick, remaining, skipped)

import Json.Decode as Decode
import Json.Encode as Encode
import Random
import Random.List


type Position
    = Current
    | Remaining
    | Completed
    | Skipped


type TodoList comparable v
    = AllDone
        { completed : List ( comparable, v )
        , skipped : List ( comparable, v )
        }
    | Todo
        { current : ( comparable, v )
        , remaining : List ( comparable, v )
        , completed : List ( comparable, v )
        , skipped : List ( comparable, v )
        }


empty : TodoList comparable v
empty =
    AllDone { completed = [], skipped = [] }


pick : comparable -> TodoList comparable v -> TodoList comparable v
pick key list =
    case list of
        Todo data ->
            case find key data.remaining of
                ( Nothing, _ ) ->
                    list

                ( Just item, rest ) ->
                    Todo { data | current = item, remaining = data.current :: rest }

        AllDone _ ->
            list


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


skipped : TodoList comparable v -> List ( comparable, v )
skipped list =
    case list of
        Todo data ->
            data.skipped

        AllDone data ->
            data.skipped


complete : TodoList comparable v -> Random.Generator (TodoList comparable v)
complete list =
    case list of
        Todo data ->
            chooseData { data | completed = data.current :: data.completed }

        AllDone _ ->
            Random.constant list


chooseFromList : List ( comparable, v ) -> Random.Generator (TodoList comparable v)
chooseFromList list =
    chooseData { remaining = list, completed = [], skipped = [] }



--- DECODER


decoder : List ( String, v ) -> Decode.Decoder (TodoList String v)
decoder list =
    Decode.map3 DecoderData
        (Decode.field "current" (Decode.nullable Decode.string))
        (Decode.field "completed" (Decode.list Decode.string))
        (Decode.field "skipped" (Decode.list Decode.string))
        |> Decode.map (fromListWithDecoderData list)



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


encodeData : { a | completed : List ( String, v ), skipped : List ( String, v ) } -> List ( String, Encode.Value )
encodeData data =
    [ ( "completed", Encode.list encodeKey data.completed )
    , ( "skipped", Encode.list encodeKey data.skipped )
    ]


encodeKey : ( String, v ) -> Encode.Value
encodeKey ( key, _ ) =
    Encode.string key



--- PRIVATE


chooseData :
    { a
        | remaining : List ( comparable, v )
        , completed : List ( comparable, v )
        , skipped : List ( comparable, v )
    }
    -> Random.Generator (TodoList comparable v)
chooseData data =
    Random.List.choose data.remaining
        |> Random.map
            (\( maybeItem, rest ) ->
                case maybeItem of
                    Nothing ->
                        AllDone { completed = data.completed, skipped = data.skipped }

                    Just item ->
                        Todo { current = item, remaining = rest, completed = data.completed, skipped = data.skipped }
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


partitionListByKeys : List String -> List ( String, v ) -> ( List ( String, v ), List ( String, v ) )
partitionListByKeys keys list =
    List.partition (\( key, _ ) -> List.member key keys) list


type alias DecoderData v =
    { current : Maybe v
    , completed : List v
    , skipped : List v
    }


fromListWithDecoderData : List ( String, v ) -> DecoderData String -> TodoList String v
fromListWithDecoderData list keys =
    let
        ( maybeCurrent, currentRemaining ) =
            findMaybe keys.current list

        ( completedList, completedRemaining ) =
            partitionListByKeys keys.completed currentRemaining

        ( skippedList, remainingList ) =
            partitionListByKeys keys.skipped completedRemaining
    in
    case ( maybeCurrent, remainingList ) of
        ( Nothing, [] ) ->
            AllDone { completed = completedList, skipped = skippedList }

        ( Nothing, first :: rest ) ->
            Todo { current = first, remaining = rest, completed = completedList, skipped = skippedList }

        ( Just gotCurrent, _ ) ->
            Todo { current = gotCurrent, remaining = remainingList, completed = completedList, skipped = skippedList }
