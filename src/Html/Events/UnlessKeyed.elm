module Html.Events.UnlessKeyed exposing (onClick)

{-|

@docs onClick

-}

import Html
import Html.Events
import Json.Decode as Decode


{-| Triggers on click unless any modifier key is held.

Modifier keys: Alt, Ctrl, Meta or Shift.

    Html.a
        [ UnlessKeyed.onClick VisitElm
        , Html.Attributes.href "https://elm-lang.org/"
        ]
        [ Html.text "Visit Elm!" ]

-}
onClick : msg -> Html.Attribute msg
onClick msg =
    decodeClick ( msg, True )
        |> Html.Events.preventDefaultOn "click"



--- DECODERS


type alias Modifiers =
    { alt : Bool
    , ctrl : Bool
    , meta : Bool
    , shift : Bool
    }


anyPressed : Modifiers -> Bool
anyPressed { alt, ctrl, meta, shift } =
    alt || ctrl || meta || shift


decodeModifiers : Decode.Decoder Modifiers
decodeModifiers =
    Decode.map4 Modifiers
        (Decode.field "altKey" Decode.bool)
        (Decode.field "ctrlKey" Decode.bool)
        (Decode.field "metaKey" Decode.bool)
        (Decode.field "shiftKey" Decode.bool)


decodeClick : v -> Decode.Decoder v
decodeClick val =
    decodeModifiers
        |> Decode.andThen
            (\modifiers ->
                if anyPressed modifiers then
                    Decode.fail "A modifier is key pressed"

                else
                    Decode.succeed val
            )
