module TodoList exposing (Position(..), TodoList, chooseFromList, complete, completed, current, empty, pick, remaining, skipped)

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
    List.foldl (finder search) ( Nothing, [] ) list


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
