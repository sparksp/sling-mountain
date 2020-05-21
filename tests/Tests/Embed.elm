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
                    Embed.step Embed.One
                        |> Expect.equal Embed.None
            ]
        , describe "view"
            [ test "with None calls default" <|
                \() ->
                    Embed.None
                        |> Embed.map { default = \() -> "Hide", visible = \() -> "Show" }
                        |> Expect.equal "Hide"
            , test "with One calls visible" <|
                \() ->
                    Embed.One
                        |> Embed.map { default = \() -> "Hide", visible = \() -> "Show" }
                        |> Expect.equal "Show"
            ]
        ]
