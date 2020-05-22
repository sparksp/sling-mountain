module Tests.TodoList exposing (all)

import Expect
import Fuzz
import Json.Decode as Decode
import Json.Encode as Encode
import Random
import Test exposing (Test, describe, fuzz, test)
import TodoList


all : Test
all =
    describe "TodoList comparable v"
        [ chooseFromListTest
        , completeTest
        , disableCurrentTest
        , disableTest
        , decodeTests
        , emptyTest
        , encodeTests
        , pickTest
        , restoreTests
        , skipTest
        ]


chooseFromListTest : Test
chooseFromListTest =
    describe "chooseFromList"
        [ test "current and remaining have all the items" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( chosenTodoList, _ ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
                in
                chosenTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "b", 2 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "c", 3 ) ]
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "with empty list is empty" <|
            \() ->
                let
                    ( chosenTodoList, _ ) =
                        Random.step (TodoList.chooseFromList []) (Random.initialSeed 0)
                in
                chosenTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal Nothing
                        , TodoList.remaining >> Expect.equal []
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
                        Random.step (TodoList.skip TodoList.empty) (Random.initialSeed 0)
                in
                skippedTodoList
                    |> Expect.equal TodoList.empty
        , test "with all done is not changed" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( remainingTodoList, remainingSeed ) =
                        Random.step (TodoList.complete initialTodoList) initialSeed

                    ( completeTodoList, completeSeed ) =
                        Random.step (TodoList.complete remainingTodoList) remainingSeed

                    ( finalTodoList, finalSeed ) =
                        -- completed = a, b, c
                        Random.step (TodoList.complete completeTodoList) completeSeed

                    ( skippedTodoList, _ ) =
                        Random.step (TodoList.skip finalTodoList) finalSeed
                in
                skippedTodoList
                    |> Expect.equal finalTodoList
        , test "with no remaining is not changed" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( remainingTodoList, remainingSeed ) =
                        Random.step (TodoList.complete initialTodoList) initialSeed

                    ( completeTodoList, completeSeed ) =
                        -- current = c, completed = a, b
                        Random.step (TodoList.complete remainingTodoList) remainingSeed

                    ( skippedTodoList, _ ) =
                        Random.step (TodoList.skip completeTodoList) completeSeed
                in
                skippedTodoList
                    |> Expect.equal completeTodoList
        , fuzz Fuzz.int "chooses new current from remaining" <|
            \seed ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed seed)

                    initialCurrent =
                        TodoList.current initialTodoList

                    ( skippedTodoList, _ ) =
                        Random.step (TodoList.skip initialTodoList) initialSeed
                in
                skippedTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.notEqual Nothing
                        , TodoList.current >> Expect.notEqual initialCurrent
                        , TodoList.remaining >> contains initialCurrent >> Expect.true "Remaining must contain initial current"
                        , TodoList.disabled >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


contains : Maybe a -> List a -> Bool
contains maybeVal list =
    case maybeVal of
        Nothing ->
            False

        Just val ->
            List.member val list


completeTest : Test
completeTest =
    describe "complete"
        [ test "with empty list is empty" <|
            \() ->
                let
                    ( initialTodoList, seed ) =
                        ( TodoList.empty, Random.initialSeed 0 )

                    ( completeTodoList, _ ) =
                        Random.step (TodoList.complete initialTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ) ]

                    ( initialTodoList, seed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        Random.step (TodoList.complete initialTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, seed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        Random.step (TodoList.complete initialTodoList) seed
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
                        Random.step (TodoList.disableCurrent TodoList.empty) (Random.initialSeed 0)
                in
                disabledList
                    |> Expect.equal TodoList.empty
        , test "with current and some remaining, disable current and return a random remaining" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( disabledTodoList, disabledSeed ) =
                        -- current = a, remaining = b, c, e, disabled = d
                        Random.step (TodoList.disableCurrent initialTodoList) initialSeed

                    ( finalTodoList, _ ) =
                        -- current = e, remaining = b, c, disabled = a, d
                        Random.step (TodoList.disableCurrent disabledTodoList) disabledSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ) ]

                    ( initialTodoList, initialSeed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( disabledTodoList, disabledSeed ) =
                        Random.step (TodoList.disableCurrent initialTodoList) initialSeed

                    ( finalTodoList, _ ) =
                        -- disabled = a, b
                        Random.step (TodoList.disableCurrent disabledTodoList) disabledSeed
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
                    initialList =
                        [ ( "a", 1 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = a
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, completeSeed ) =
                        -- completed = a
                        Random.step (TodoList.complete initialTodoList) initialSeed

                    ( disabledTodoList, _ ) =
                        -- completed = a
                        Random.step (TodoList.complete completeTodoList) completeSeed
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
                    initialList =
                        [ ( "a", 1 ) ]

                    ( initialTodoList, _ ) =
                        -- current = a
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
                in
                TodoList.disable "a" initialTodoList
                    |> Expect.equal initialTodoList
        , test "with key in remaining, disables item" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        -- current = a, remaining = b, c, e, completed = d
                        Random.step (TodoList.complete initialTodoList) initialSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, completeSeed ) =
                        -- current = a, remaining = b, c, e, completed = d
                        Random.step (TodoList.complete initialTodoList) initialSeed

                    ( finalTodoList, _ ) =
                        -- current = e, remaining = b, c, completed = a, d
                        Random.step (TodoList.complete completeTodoList) completeSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( remainingTodoList, remainingSeed ) =
                        Random.step (TodoList.complete initialTodoList) initialSeed

                    ( completeTodoList, completeSeed ) =
                        Random.step (TodoList.complete remainingTodoList) remainingSeed

                    ( finalTodoList, _ ) =
                        -- completed = a, b, c
                        Random.step (TodoList.complete completeTodoList) completeSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        -- current = a, remaining = b, c, e, completed = d
                        Random.step (TodoList.complete initialTodoList) initialSeed

                    finalTodoList =
                        TodoList.disable "e" completeTodoList
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, _ ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, seed ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        -- current = a, remaining = b, c, e, completed = d
                        Random.step (TodoList.complete initialTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ) ]

                    ( initialTodoList, intermediateSeed ) =
                        -- current = a, remaining = b
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( intermediateTodoList, seed ) =
                        -- current = b, completed = a
                        Random.step (TodoList.complete initialTodoList) intermediateSeed

                    ( completeTodoList, _ ) =
                        -- completed = a, b
                        Random.step (TodoList.complete intermediateTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, seed ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        -- current = a, remaining = b, c, e, disabled = d
                        Random.step (TodoList.disableCurrent initialTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ) ]

                    ( initialTodoList, intermediateSeed ) =
                        -- current = a, remaining = b
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( intermediateTodoList, seed ) =
                        -- current = b, disabled = a
                        Random.step (TodoList.disableCurrent initialTodoList) intermediateSeed

                    ( completeTodoList, _ ) =
                        -- disabled = a, b
                        Random.step (TodoList.disableCurrent intermediateTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, _ ) =
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, _ ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( finalTodoList, _ ) =
                        -- current = a, remaining = c, completed = b
                        Random.step (TodoList.complete initialTodoList) initialSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    disabledTodoList =
                        initialTodoList
                            |> TodoList.disable "a"
                            |> TodoList.disable "c"

                    ( finalTodoList, _ ) =
                        -- completed = b, disabled = a, c
                        Random.step (TodoList.complete disabledTodoList) initialSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    disabledTodoList =
                        initialTodoList
                            |> TodoList.disable "a"

                    ( finalTodoList, _ ) =
                        -- current = c, completed = b, disabled = a
                        Random.step (TodoList.complete disabledTodoList) initialSeed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, initialSeed ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    disabledTodoList =
                        initialTodoList
                            |> TodoList.disable "a"
                            |> TodoList.disable "c"

                    ( finalTodoList, _ ) =
                        -- completed = b, disabled = a, c
                        Random.step (TodoList.complete disabledTodoList) initialSeed
                in
                TodoList.restore "a" finalTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                        , TodoList.disabled >> Expect.equal [ ( "c", 3 ) ]
                        ]
        ]


encodeTests : Test
encodeTests =
    describe "encode"
        [ test "no completed or disabled are empty arrays" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, _ ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
                in
                TodoList.encoder initialTodoList
                    |> Encode.encode 0
                    |> Expect.equal "{\"current\":\"b\",\"completed\":[],\"disabled\":[]}"
        , test "completed encodes key" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, seed ) =
                        -- current = b, remaining = a, c
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        -- current = a, remaining = c, completed = b
                        Random.step (TodoList.complete initialTodoList) seed
                in
                TodoList.encoder completeTodoList
                    |> Encode.encode 0
                    |> Expect.equal "{\"current\":\"a\",\"completed\":[\"b\"],\"disabled\":[]}"
        , test "no current encodes null" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ) ]

                    ( initialTodoList, seed ) =
                        -- current = a
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)

                    ( completeTodoList, _ ) =
                        -- completed = a
                        Random.step (TodoList.complete initialTodoList) seed
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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ) ]

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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

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
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "y", 25 ), ( "z", 26 ) ]

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
