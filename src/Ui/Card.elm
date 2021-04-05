module Ui.Card exposing (Card, view)

import Html exposing (Html)
import Html.Attributes as Attr
import Tailwind as TW
import Ui.Card.Footer as Footer exposing (Footer)
import Ui.Card.Frame as Frame exposing (Frame)
import Ui.Card.Title as Title exposing (Title)


type alias Card msg =
    { frame : Frame
    , title : Title msg
    , body : List (Html msg)
    , footer : Footer msg
    }


view : Card msg -> Html msg
view ({ frame, body } as card) =
    let
        baseAttributes : List (Html.Attribute msg)
        baseAttributes =
            [ Attr.class TW.bgWhite
            , Attr.class TW.my3
            , Attr.class TW.overflowHidden
            , Attr.class TW.smRounded
            , Attr.class TW.wFull
            ]

        ( element, attributes ) =
            case frame of
                Frame.Default ->
                    ( Html.div
                    , Attr.class TW.shadowSm
                        :: baseAttributes
                    )

                Frame.Primary ->
                    ( Html.main_
                    , Attr.id "current"
                        :: Attr.class TW.shadowLg
                        :: baseAttributes
                    )

                Frame.Active ->
                    ( Html.div
                    , Attr.class TW.shadowSm
                        :: Attr.class TW.hoverShadowLg
                        :: Attr.class TW.smHoverTranslateX1
                        :: Attr.class TW.smTransform
                        :: Attr.class TW.transitionAll
                        :: Attr.class TW.duration150
                        :: Attr.class TW.easeInOut
                        :: baseAttributes
                    )
    in
    element attributes (Title.view card.title :: withBody body ++ Footer.view card.footer)



--- HELPERS --------------------


withBody : List (Html msg) -> List (Html msg)
withBody body =
    case body of
        [] ->
            []

        _ ->
            [ Html.div
                [ Attr.class TW.textGray700
                , Attr.class TW.textBase
                , Attr.class TW.px4
                , Attr.class TW.smPx6
                , Attr.class TW.mb3
                ]
                body
            ]
