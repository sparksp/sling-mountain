module Tests.TodoList exposing (all)

import Expect
import Fuzz
import Json.Decode as Decode
import Json.Encode as Encode
import Random
import Test exposing (Test, describe, fuzz, test)
import TodoList exposing (TodoList)


all : Test
all =
    describe "TodoList comparable v"
        [ chooseFromListTest
        , completeTest
        , decodeTests
        , disableCurrentTest
        , disableTest
        , emptyTest
        , encodeTests
        , pickTest
        , restoreTests
        , describe "restoreAllCompleted" restoreAllCompletedTests
        , describe "restoreAllDisabled" restoreAllDisabledTests
        , skipTest
        , updateTest
        ]


chooseFromListTest : Test
chooseFromListTest =
    describe "chooseFromList"
        [ test "with empty list is empty" <|
            \() ->
                let
                    ( chosenTodoList, _ ) =
                        seed 0 (TodoList.chooseFromList "z") []
                in
                chosenTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "key not found, random current is chosen, rest are remaining" <|
            \() ->
                let
                    ( chosenTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed 0 (TodoList.chooseFromList "z")
                in
                chosenTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "b", 2 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , fuzz (oneOf [ "a", "b", "c" ]) "with known key current is key, rest are remaining" <|
            \key ->
                let
                    ( chosenTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed 0 (TodoList.chooseFromList key)
                in
                chosenTodoList
                    |> Expect.all
                        [ TodoList.current >> Maybe.map Tuple.first >> Expect.equal (Just key)
                        , TodoList.remaining >> List.length >> Expect.equal 2
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


skipTest : Test
skipTest =
    describe "skip"
        [ test "with empty list is empty" <|
            \() ->
                let
                    ( skippedTodoList, _ ) =
                        TodoList.empty
                            |> seed 0 TodoList.skip
                in
                skippedTodoList
                    |> Expect.equal TodoList.empty
        , test "with all done is not changed" <|
            \() ->
                let
                    ( finalTodoList, finalSeed ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed 0 (TodoList.chooseFromList "")
                            |> step TodoList.complete
                            |> step TodoList.complete
                            -- completed = a, b, c
                            |> step TodoList.complete

                    ( skippedTodoList, _ ) =
                        ( finalTodoList, finalSeed )
                            |> step TodoList.skip
                in
                skippedTodoList
                    |> Expect.equal finalTodoList
        , test "with no remaining is not changed" <|
            \() ->
                let
                    ( completeTodoList, completeSeed ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed 0 (TodoList.chooseFromList "")
                            |> step TodoList.complete
                            -- current = c, completed = a, b
                            |> step TodoList.complete

                    ( skippedTodoList, _ ) =
                        ( completeTodoList, completeSeed )
                            |> step TodoList.skip
                in
                skippedTodoList
                    |> Expect.equal completeTodoList
        , fuzz Fuzz.int "chooses new current from remaining" <|
            \initialSeed ->
                let
                    ( initialTodoList, intermediateSeed ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed initialSeed (TodoList.chooseFromList "")

                    initialCurrent : Maybe ( String, number )
                    initialCurrent =
                        TodoList.current initialTodoList

                    ( skippedTodoList, _ ) =
                        ( initialTodoList, intermediateSeed )
                            |> step TodoList.skip
                in
                skippedTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.notEqual Nothing
                        , TodoList.current >> Expect.notEqual initialCurrent
                        , (TodoList.remaining >> contains initialCurrent)
                            >> Expect.equal True
                            >> Expect.onFail "Remaining must contain initial current"
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


completeTest : Test
completeTest =
    describe "complete"
        [ test "with empty list is empty" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        TodoList.empty
                            |> seed 0 TodoList.complete
                in
                completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "with current and no remaining moves current to completed" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ) ]
                            |> seed 0 (TodoList.chooseFromList "")
                            |> step TodoList.complete
                in
                completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "a", 1 ) ]
                        ]
        , test "with current and remaining moves current to completed and chooses a new current" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed 0 (TodoList.chooseFromList "")
                            |> step TodoList.complete
                in
                completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal [ ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                        ]
        ]


disableCurrentTest : Test
disableCurrentTest =
    describe "disableCurrent"
        [ test "with empty list is empty" <|
            \() ->
                let
                    ( disabledList, _ ) =
                        seed 0 TodoList.disableCurrent TodoList.empty
                in
                disabledList
                    |> Expect.equal TodoList.empty
        , test "with current and some remaining, disable current and return a random remaining" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = b, c, e, disabled = d
                            |> step TodoList.disableCurrent
                            -- current = e, remaining = b, c, disabled = a, d
                            |> step TodoList.disableCurrent
                in
                finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "e", 5 ))
                        , TodoList.remaining >> Expect.equal [ ( "b", 2 ), ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal [ ( "a", 1 ), ( "d", 4 ) ]
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "with current and no remaining, the list is all done" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ) ]
                            |> seed 0 (TodoList.chooseFromList "")
                            |> step TodoList.disableCurrent
                            -- disabled = a, b
                            |> step TodoList.disableCurrent
                in
                finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal [ ( "a", 1 ), ( "b", 2 ) ]
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "with no current the list is the same" <|
            \() ->
                let
                    ( disabledTodoList, _ ) =
                        [ ( "a", 1 ) ]
                            -- current = a
                            |> seed 0 (TodoList.chooseFromList "")
                            -- completed = a
                            |> step TodoList.complete
                            -- completed = a
                            |> step TodoList.complete
                in
                disabledTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "a", 1 ) ]
                        ]
        ]


disableTest : Test
disableTest =
    describe "disable"
        [ test "with empty list is empty" <|
            \() ->
                TodoList.disable "a" TodoList.empty
                    |> Expect.equal TodoList.empty
        , test "with key in current is unchanged" <|
            -- should use disableCurrent instead
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ) ]
                            -- current = a
                            |> seed 0 (TodoList.chooseFromList "")
                in
                TodoList.disable "a" initialTodoList
                    |> Expect.equal initialTodoList
        , test "with key in remaining, disables item" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = b, c, e, completed = d
                            |> step TodoList.complete
                in
                completeTodoList
                    |> TodoList.disable "e"
                    |> TodoList.disable "b"
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal [ ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal [ ( "b", 2 ), ( "e", 5 ) ]
                        , TodoList.completed >> Expect.equal [ ( "d", 4 ) ]
                        ]
        , test "with key in completed, disables item" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = b, c, e, completed = d
                            |> step TodoList.complete
                            -- current = e, remaining = b, c, completed = a, d
                            |> step TodoList.complete
                in
                finalTodoList
                    |> TodoList.disable "d"
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "e", 5 ))
                        , TodoList.remaining >> Expect.equal [ ( "b", 2 ), ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal [ ( "d", 4 ) ]
                        , TodoList.completed >> Expect.equal [ ( "a", 1 ) ]
                        ]
        , test "with key in all completed, disables item" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            |> seed 0 (TodoList.chooseFromList "")
                            |> step TodoList.complete
                            |> step TodoList.complete
                            -- completed = a, b, c
                            |> step TodoList.complete
                in
                finalTodoList
                    |> TodoList.disable "a"
                    |> TodoList.disable "b"
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal [ ( "b", 2 ), ( "a", 1 ) ]
                        , TodoList.completed >> Expect.equal [ ( "c", 3 ) ]
                        ]
        , test "with key in disabled, nothing changes" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = b, c, e, completed = d
                            |> step TodoList.complete
                            -- current = a, remaining = b, c, completed = d, disabled = e
                            |> call (TodoList.disable "e")
                in
                finalTodoList
                    |> TodoList.disable "e"
                    |> Expect.equal finalTodoList
        ]


emptyTest : Test
emptyTest =
    describe "empty"
        [ test "is empty" <|
            \() ->
                TodoList.empty
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


pickTest : Test
pickTest =
    describe "pick"
        [ test "with empty list is empty" <|
            \() ->
                TodoList.empty
                    |> TodoList.pick "a"
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "picks item with key from remaining" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                in
                TodoList.pick "a" initialTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal [ ( "d", 4 ), ( "b", 2 ), ( "c", 3 ), ( "e", 5 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "picks item with key from completed" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = b, c, e, completed = d
                            |> step TodoList.complete
                in
                TodoList.pick "d" completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "d", 4 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "e", 5 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "picks item with key from all completed" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ) ]
                            -- current = a, remaining = b
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = b, completed = a
                            |> step TodoList.complete
                            -- completed = a, b
                            |> step TodoList.complete
                in
                TodoList.pick "a" completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                        ]
        , test "picks item with key from disabled" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = b, c, e, disabled = d
                            |> step TodoList.disableCurrent
                in
                TodoList.pick "d" completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "d", 4 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "e", 5 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "picks item with key from all disabled" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ) ]
                            -- current = a, remaining = b
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = b, disabled = a
                            |> step TodoList.disableCurrent
                            -- disabled = a, b
                            |> step TodoList.disableCurrent
                in
                TodoList.pick "a" completeTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.disabled >> Expect.equal [ ( "b", 2 ) ]
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "picks item with current key changes nothing" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")
                in
                TodoList.pick "d" initialTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "d", 4 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "e", 5 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "with missing key returns original list" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                in
                TodoList.pick "z" initialTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "b", 2 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


restoreTests : Test
restoreTests =
    describe "restore"
        [ test "empty list is empty" <|
            \() ->
                TodoList.restore "a" TodoList.empty
                    |> Expect.equal TodoList.empty
        , test "with current restores complete to remaining" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = c, completed = b
                            |> step TodoList.complete
                in
                TodoList.restore "b" finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal [ ( "b", 2 ), ( "c", 3 ) ]
                        , TodoList.completed >> Expect.equal []
                        , TodoList.disabled >> Expect.equal []
                        ]
        , test "all done restores complete to current" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                            |> call (TodoList.disable "a")
                            |> call (TodoList.disable "c")
                            -- completed = b, disabled = a, c
                            |> step TodoList.complete
                in
                TodoList.restore "b" finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "b", 2 ))
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        , TodoList.disabled >> Expect.equal [ ( "c", 3 ), ( "a", 1 ) ]
                        ]
        , test "with current restores disabled to remaining" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                            |> call (TodoList.disable "a")
                            -- current = c, completed = b, disabled = a
                            |> step TodoList.complete
                in
                TodoList.restore "a" finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "c", 3 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ) ]
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                        , TodoList.disabled >> Expect.equal []
                        ]
        , test "all done restores disabled to current" <|
            \() ->
                let
                    ( finalTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                            |> call (TodoList.disable "a")
                            |> call (TodoList.disable "c")
                            -- completed = b, disabled = a, c
                            |> step TodoList.complete
                in
                TodoList.restore "a" finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                        , TodoList.disabled >> Expect.equal [ ( "c", 3 ) ]
                        ]
        ]


restoreAllCompletedTests : List Test
restoreAllCompletedTests =
    [ test "with empty list is empty" <|
        \() ->
            TodoList.empty
                |> TodoList.restoreAllCompleted
                |> Expect.equal TodoList.empty
    , test "with no completed changes nothing" <|
        \() ->
            let
                ( initialTodoList, _ ) =
                    [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                        -- current = b, remaining = a, c
                        |> seed 0 (TodoList.chooseFromList "")
            in
            initialTodoList
                |> TodoList.restoreAllCompleted
                |> Expect.equal initialTodoList
    , test "with current and completed, moves completed to remaining" <|
        \() ->
            let
                ( complete1TodoList, _ ) =
                    [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                        -- current = b, remaining = a, c
                        |> seed 0 (TodoList.chooseFromList "")
                        -- current = c, remaining = a, disabled = b
                        |> step TodoList.disableCurrent
                        -- current = c, completed = a, completed = b
                        |> step TodoList.complete
            in
            complete1TodoList
                |> TodoList.restoreAllCompleted
                |> Expect.all
                    [ TodoList.current >> Expect.equal (Just ( "c", 3 ))
                    , TodoList.remaining >> Expect.equal [ ( "a", 1 ) ]
                    , TodoList.completed >> Expect.equal []
                    , TodoList.disabled >> Expect.equal [ ( "b", 2 ) ]
                    ]
    , test "with no current, moves first completed to current and rest to remaining" <|
        \() ->
            let
                ( completeAllTodoList, _ ) =
                    [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                        -- current = b, remaining = a, c
                        |> seed 0 (TodoList.chooseFromList "")
                        -- current = a, remaining = c, disabled = b
                        |> step TodoList.disableCurrent
                        -- current = c, completed = a, disabled = b
                        |> step TodoList.complete
                        -- completed = c, a, disabled = b
                        |> step TodoList.complete
            in
            completeAllTodoList
                |> TodoList.restoreAllCompleted
                |> Expect.all
                    [ TodoList.current >> Expect.equal (Just ( "c", 3 ))
                    , TodoList.remaining >> Expect.equal [ ( "a", 1 ) ]
                    , TodoList.completed >> Expect.equal []
                    , TodoList.disabled >> Expect.equal [ ( "b", 2 ) ]
                    ]
    ]


restoreAllDisabledTests : List Test
restoreAllDisabledTests =
    [ test "with empty list is empty" <|
        \() ->
            TodoList.empty
                |> TodoList.restoreAllDisabled
                |> Expect.equal TodoList.empty
    , test "with no disabled changes nothing" <|
        \() ->
            let
                ( initialTodoList, _ ) =
                    [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                        -- current = b, remaining = a, c
                        |> seed 0 (TodoList.chooseFromList "")
            in
            initialTodoList
                |> TodoList.restoreAllDisabled
                |> Expect.equal initialTodoList
    , test "with current and disabled, moves disabled to remaining" <|
        \() ->
            let
                ( completeTodoList, _ ) =
                    [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                        -- current = b, remaining = a, c
                        |> seed 0 (TodoList.chooseFromList "")
                        -- current = c, remaining = a, disabled = b
                        |> step TodoList.disableCurrent
                        -- current = c, completed = a, completed = b
                        |> step TodoList.complete
            in
            completeTodoList
                |> TodoList.restoreAllDisabled
                |> Expect.all
                    [ TodoList.current >> Expect.equal (Just ( "c", 3 ))
                    , TodoList.remaining >> Expect.equal [ ( "b", 2 ) ]
                    , TodoList.completed >> Expect.equal [ ( "a", 1 ) ]
                    , TodoList.disabled >> Expect.equal []
                    ]
    , test "with no current, moves first disabled to current and rest to remaining" <|
        \() ->
            let
                ( completeAllTodoList, _ ) =
                    [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                        -- current = b, remaining = a, c
                        |> seed 0 (TodoList.chooseFromList "")
                        -- current = c, remaining = a, completed = b
                        |> step TodoList.complete
                        -- current = a, completed = b, disabled = c
                        |> step TodoList.disableCurrent
                        -- completed = b, disabled = c, a
                        |> step TodoList.disableCurrent
            in
            completeAllTodoList
                |> TodoList.restoreAllDisabled
                |> Expect.all
                    [ TodoList.current >> Expect.equal (Just ( "c", 3 ))
                    , TodoList.remaining >> Expect.equal [ ( "a", 1 ) ]
                    , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                    , TodoList.disabled >> Expect.equal []
                    ]
    ]


encodeTests : Test
encodeTests =
    describe "encode"
        [ test "no completed or disabled are empty arrays" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                in
                TodoList.encoder initialTodoList
                    |> Encode.encode 0
                    |> Expect.equal "{\"current\":\"b\",\"completed\":[],\"disabled\":[]}"
        , test "completed encodes key" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]
                            -- current = b, remaining = a, c
                            |> seed 0 (TodoList.chooseFromList "")
                            -- current = a, remaining = c, completed = b
                            |> step TodoList.complete
                in
                TodoList.encoder completeTodoList
                    |> Encode.encode 0
                    |> Expect.equal "{\"current\":\"a\",\"completed\":[\"b\"],\"disabled\":[]}"
        , test "no current encodes null" <|
            \() ->
                let
                    ( completeTodoList, _ ) =
                        [ ( "a", 1 ) ]
                            -- current = a
                            |> seed 0 (TodoList.chooseFromList "")
                            -- completed = a
                            |> step TodoList.complete
                in
                TodoList.encoder completeTodoList
                    |> Encode.encode 0
                    |> Expect.equal "{\"current\":null,\"completed\":[\"a\"],\"disabled\":[]}"
        ]


decodeTests : Test
decodeTests =
    describe "decode"
        [ test "with current" <|
            \() ->
                let
                    initialList : List ( String, number )
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ) ]

                    json : String
                    json =
                        "{\"current\":\"a\",\"completed\":[],\"disabled\":[]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "a", 1 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "b", 2 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [])
                        , Result.map TodoList.disabled >> Expect.equal (Ok [])
                        ]
        , test "with completed" <|
            \() ->
                let
                    initialList : List ( String, number )
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json : String
                    json =
                        "{\"current\":\"a\",\"completed\":[\"b\",\"d\"],\"disabled\":[]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "a", 1 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "c", 3 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "b", 2 ) ])
                        , Result.map TodoList.disabled >> Expect.equal (Ok [])
                        ]
        , test "with disabled" <|
            \() ->
                let
                    initialList : List ( String, number )
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json : String
                    json =
                        "{\"current\":\"a\",\"completed\":[],\"disabled\":[\"b\",\"d\"]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "a", 1 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "c", 3 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [])
                        , Result.map TodoList.disabled >> Expect.equal (Ok [ ( "b", 2 ) ])
                        ]
        , test "with no current" <|
            \() ->
                let
                    initialList : List ( String, number )
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json : String
                    json =
                        "{\"current\":null,\"completed\":[\"a\",\"b\",\"d\"],\"disabled\":[\"c\",\"e\"]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok Nothing)
                        , Result.map TodoList.remaining >> Expect.equal (Ok [])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ), ( "b", 2 ) ])
                        , Result.map TodoList.disabled >> Expect.equal (Ok [ ( "c", 3 ) ])
                        ]
        , test "current no longer in list, gets next remaining" <|
            \() ->
                let
                    initialList : List ( String, number )
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json : String
                    json =
                        "{\"current\":\"d\",\"completed\":[\"a\",\"b\"],\"disabled\":[]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "c", 3 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ), ( "b", 2 ) ])
                        , Result.map TodoList.disabled >> Expect.equal (Ok [])
                        ]
        , test "no current but items remaining, gets current from remaining" <|
            \() ->
                let
                    initialList : List ( String, number )
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "y", 25 ), ( "z", 26 ) ]

                    json : String
                    json =
                        "{\"current\":null,\"completed\":[\"a\",\"b\"],\"disabled\":[\"c\"]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "y", 25 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "z", 26 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ), ( "b", 2 ) ])
                        , Result.map TodoList.disabled >> Expect.equal (Ok [ ( "c", 3 ) ])
                        ]
        ]


updateTest : Test
updateTest =
    describe "update"
        [ test "on an empty list is empty" <|
            \() ->
                let
                    state : String
                    state =
                        "{\"current\":null,\"completed\":[],\"disabled\":[]}"
                in
                case Decode.decodeString Decode.value state of
                    Err _ ->
                        Expect.fail "There was a problem with the test JSON"

                    Ok json ->
                        TodoList.empty
                            |> TodoList.update json
                            |> Expect.equal (Ok TodoList.empty)
        , test "applies completed and disabled, does not change current" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")

                    state : String
                    state =
                        "{\"current\":\"b\",\"completed\":[\"a\"],\"disabled\":[\"c\"]}"
                in
                case Decode.decodeString Decode.value state of
                    Err _ ->
                        Expect.fail "There was a problem with the test JSON"

                    Ok json ->
                        initialTodoList
                            |> TodoList.update json
                            |> Expect.all
                                [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "d", 4 )))
                                , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "b", 2 ), ( "e", 5 ) ])
                                , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ) ])
                                , Result.map TodoList.disabled >> Expect.equal (Ok [ ( "c", 3 ) ])
                                ]
        , test "applies completed and disabled, changes current when old current is completed" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")

                    state : String
                    state =
                        "{\"current\":\"b\",\"completed\":[\"a\",\"d\"],\"disabled\":[\"c\"]}"
                in
                case Decode.decodeString Decode.value state of
                    Err _ ->
                        Expect.fail "There was a problem with the test JSON"

                    Ok json ->
                        initialTodoList
                            |> TodoList.update json
                            |> Expect.all
                                [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "b", 2 )))
                                , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "e", 5 ) ])
                                , Result.map TodoList.completed >> Expect.equal (Ok [ ( "d", 4 ), ( "a", 1 ) ])
                                , Result.map TodoList.disabled >> Expect.equal (Ok [ ( "c", 3 ) ])
                                ]
        , test "applies completed and disabled, changes current when old current is disabled" <|
            \() ->
                let
                    ( initialTodoList, _ ) =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]
                            -- current = d, remaining = a, b, c, e
                            |> seed 0 (TodoList.chooseFromList "")

                    state : String
                    state =
                        "{\"current\":\"e\",\"completed\":[\"a\"],\"disabled\":[\"c\",\"d\"]}"
                in
                case Decode.decodeString Decode.value state of
                    Err _ ->
                        Expect.fail "There was a problem with the test JSON"

                    Ok json ->
                        initialTodoList
                            |> TodoList.update json
                            |> Expect.all
                                [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "e", 5 )))
                                , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "b", 2 ) ])
                                , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ) ])
                                , Result.map TodoList.disabled >> Expect.equal (Ok [ ( "d", 4 ), ( "c", 3 ) ])
                                ]
        ]



--- HELPERS


contains : Maybe a -> List a -> Bool
contains maybeVal list =
    case maybeVal of
        Nothing ->
            False

        Just val ->
            List.member val list


oneOf : List a -> Fuzz.Fuzzer a
oneOf list =
    List.map Fuzz.constant list
        |> Fuzz.oneOf


seed :
    Int
    -> (a -> Random.Generator (TodoList comparable v))
    -> a
    -> ( TodoList comparable v, Random.Seed )
seed initialSeed fn start =
    Random.step (fn start) (Random.initialSeed initialSeed)


step :
    (TodoList comparable v -> Random.Generator (TodoList comparable v))
    -> ( TodoList comparable v, Random.Seed )
    -> ( TodoList comparable v, Random.Seed )
step fn ( list, currentSeed ) =
    Random.step (fn list) currentSeed


call :
    (TodoList comparable v -> TodoList comparable v)
    -> ( TodoList comparable v, Random.Seed )
    -> ( TodoList comparable v, Random.Seed )
call =
    Tuple.mapFirst
