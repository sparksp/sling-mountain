module Tests.TodoList exposing (all)

import Expect
import Json.Decode as Decode
import Json.Encode as Encode
import Random
import Test exposing (Test, describe, test)
import TodoList


all : Test
all =
    describe "TodoList comparable v"
        [ chooseFromListTest
        , completeTest
        , decodeTests
        , emptyTest
        , encodeTests
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
                        -- current = d, remaining = a, b, c, e
                        Random.step (TodoList.chooseFromList initialList) (Random.initialSeed 0)
                in
                TodoList.pick "a" initialTodoList
                    |> Expect.all
                        [ TodoList.current >> Expect.equal (Just ( "a", 1 ))
                        , TodoList.remaining >> Expect.equal [ ( "d", 4 ), ( "b", 2 ), ( "c", 3 ), ( "e", 5 ) ]
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal [ ( "b", 2 ) ]
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
                        , TodoList.skipped >> Expect.equal []
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
                        , TodoList.skipped >> Expect.equal []
                        , TodoList.completed >> Expect.equal []
                        ]
        ]


encodeTests : Test
encodeTests =
    describe "encode"
        [ test "no completed or skipped are empty arrays" <|
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
                    |> Expect.equal "{\"current\":\"b\",\"completed\":[],\"skipped\":[]}"
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
                    |> Expect.equal "{\"current\":\"a\",\"completed\":[\"b\"],\"skipped\":[]}"
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
                    |> Expect.equal "{\"current\":null,\"completed\":[\"a\"],\"skipped\":[]}"
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
                        "{\"current\":\"a\",\"completed\":[],\"skipped\":[]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "a", 1 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "b", 2 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [])
                        , Result.map TodoList.skipped >> Expect.equal (Ok [])
                        ]
        , test "with completed" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json =
                        "{\"current\":\"a\",\"completed\":[\"b\",\"d\"],\"skipped\":[]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "a", 1 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "c", 3 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "b", 2 ) ])
                        , Result.map TodoList.skipped >> Expect.equal (Ok [])
                        ]
        , test "with skipped" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json =
                        "{\"current\":\"a\",\"completed\":[],\"skipped\":[\"b\",\"d\"]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "a", 1 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "c", 3 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [])
                        , Result.map TodoList.skipped >> Expect.equal (Ok [ ( "b", 2 ) ])
                        ]
        , test "with no current" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json =
                        "{\"current\":null,\"completed\":[\"a\",\"b\",\"d\"],\"skipped\":[\"c\",\"e\"]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok Nothing)
                        , Result.map TodoList.remaining >> Expect.equal (Ok [])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ), ( "b", 2 ) ])
                        , Result.map TodoList.skipped >> Expect.equal (Ok [ ( "c", 3 ) ])
                        ]
        , test "current no longer in list, gets next remaining" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ) ]

                    json =
                        "{\"current\":\"d\",\"completed\":[\"a\",\"b\"],\"skipped\":[]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "c", 3 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ), ( "b", 2 ) ])
                        , Result.map TodoList.skipped >> Expect.equal (Ok [])
                        ]
        , test "no current but items remaining, gets current from remaining" <|
            \() ->
                let
                    initialList =
                        [ ( "a", 1 ), ( "b", 2 ), ( "c", 3 ), ( "y", 25 ), ( "z", 26 ) ]

                    json =
                        "{\"current\":null,\"completed\":[\"a\",\"b\"],\"skipped\":[\"c\"]}"
                in
                Decode.decodeString (TodoList.decoder initialList) json
                    |> Expect.all
                        [ Result.map TodoList.current >> Expect.equal (Ok (Just ( "y", 25 )))
                        , Result.map TodoList.remaining >> Expect.equal (Ok [ ( "z", 26 ) ])
                        , Result.map TodoList.completed >> Expect.equal (Ok [ ( "a", 1 ), ( "b", 2 ) ])
                        , Result.map TodoList.skipped >> Expect.equal (Ok [ ( "c", 3 ) ])
                        ]
        ]
