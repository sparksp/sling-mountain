module TodoList exposing (Position(..), TodoList, chooseFromList, complete, completed, current, empty, remaining, skipped)

import Random
import Random.List


type Position
    = Current
    | Remaining
    | Completed
    | Skipped


type alias Data v =
    { remaining : List v
    , completed : List v
    , skipped : List v
    }


type TodoList v
    = Ready (Data v)
    | Todo v (Data v)


empty : TodoList v
empty =
    Ready { remaining = [], completed = [], skipped = [] }


current : TodoList v -> Maybe v
current list =
    case list of
        Todo item _ ->
            Just item

        Ready _ ->
            Nothing


remaining : TodoList v -> List v
remaining list =
    list |> getData |> .remaining


completed : TodoList v -> List v
completed list =
    list |> getData |> .completed


skipped : TodoList v -> List v
skipped list =
    list |> getData |> .skipped


complete : TodoList v -> Random.Generator (TodoList v)
complete list =
    case list of
        Todo item data ->
            chooseData { data | completed = item :: data.completed }

        Ready data ->
            chooseData data


chooseFromList : List v -> Random.Generator (TodoList v)
chooseFromList list =
    chooseData { remaining = list, completed = [], skipped = [] }



--- PRIVATE


chooseData : Data v -> Random.Generator (TodoList v)
chooseData data =
    Random.List.choose data.remaining
        |> Random.map
            (\( maybeItem, rest ) ->
                case maybeItem of
                    Nothing ->
                        Ready data

                    Just item ->
                        Todo item { data | remaining = rest }
            )


getData : TodoList v -> Data v
getData list =
    case list of
        Todo _ data ->
            data

        Ready data ->
            data
