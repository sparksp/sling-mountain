module Tests.TodoList exposing (all)

import Expect
import Random
import Test exposing (Test, describe, test)
import TodoList


all : Test
all =
    describe "TodoList comparable v"
        [ chooseFromListTest
        , completeTest
        , emptyTest
        , pickTest
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
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


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
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
                        ]
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
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "picks item with key from remaining" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "d", 4 ), ( "e", 5 ) ]

                    ( initialTodoList, _ ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
                in
                TodoList.pick "a" initialTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal [ ( "d", 4 ), ( "b", 2 ), ( "c", 3 ), ( "e", 5 ) ]
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        , test "with missing key returns original list" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    ( initialTodoList, _ ) =
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
                in
                TodoList.pick "z" initialTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "b", 2 ))
                        , TodoList.remaining >> Expect.equal [ ( "a", 1 ), ( "c", 3 ) ]
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]
