module TodoList exposing (Position(..), TodoList, completed, current, fromList, next, remaining, skipped)


type Position
    = Current
    | Remaining
    | Completed
    | Skipped


type TodoList v
    = Todo
        { current : v
        , remaining : List v
        , complete : List v
        , skipped : List v
        }
    | AllDone
        { complete : List v
        , skipped : List v
        }


fromList : List v -> TodoList v
fromList list =
    case list of
        [] ->
            AllDone { complete = [], skipped = [] }

        first :: rest ->
            Todo { current = first, remaining = rest, complete = [], skipped = [] }


current : TodoList v -> Maybe v
current list =
    case list of
        Todo todo ->
            Just todo.current

        AllDone _ ->
            Nothing


remaining : TodoList v -> List v
remaining list =
    case list of
        Todo todo ->
            todo.remaining

        AllDone _ ->
            []


completed : TodoList v -> List v
completed list =
    case list of
        Todo todo ->
            todo.complete

        AllDone todo ->
            todo.complete


skipped : TodoList v -> List v
skipped list =
    case list of
        Todo todo ->
            todo.skipped

        AllDone todo ->
            todo.skipped


next : TodoList v -> TodoList v
next list =
    case list of
        Todo todo ->
            case todo.remaining of
                first :: rest ->
                    Todo { todo | current = first, remaining = rest, complete = todo.current :: todo.complete }

                [] ->
                    AllDone { complete = todo.current :: todo.complete, skipped = todo.skipped }

        AllDone _ ->
            list
