module Tests.Embed exposing (all)

import Embed
import Expect
import Test exposing (Test, describe, test)


all : Test
all =
    describe "Embed"
        [ describe "step"
            [ test "with None it is None" <|
                \() ->
                    Embed.step Embed.None
                        |> Expect.equal Embed.None
            , test "with One it is None" <|
                \() ->
                    Embed.step (Embed.One "key")
                        |> Expect.equal Embed.None
            ]
        , describe "view"
            [ test "with None calls default" <|
                \() ->
                    Embed.None
                        |> Embed.map { key = "", default = \() -> "Hide", visible = \() -> "Show" }
                        |> Expect.equal "Hide"
            , test "with One and wrong key calls default" <|
                \() ->
                    Embed.One "key"
                        |> Embed.map { key = "other", default = \() -> "Hide", visible = \() -> "Show" }
                        |> Expect.equal "Hide"
            , test "with One and matching key calls visible" <|
                \() ->
                    Embed.One "key"
                        |> Embed.map { key = "key", default = \() -> "Hide", visible = \() -> "Show" }
                        |> Expect.equal "Show"
            ]
        ]
