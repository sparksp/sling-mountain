module Ui.Card exposing (Card, view)

import Html exposing (Html)
import Html.Attributes as Attr
import Html.Tailwind as TW
import Ui.Card.Frame as Frame exposing (Frame)
import Ui.Card.Link as Link exposing (Link)
import Ui.Card.Title as Title exposing (Title)


type alias Card msg =
    { frame : Frame
    , title : Title msg
    , body : List (Html msg)
    , link : Link msg
    }


view : Card msg -> Html msg
view ({ frame, body } as card) =
    let
        baseAttributes =
            [ TW.bgWhite
            , TW.my3
            , TW.overflowHidden
            , TW.smRounded
            , TW.wFull
            ]

        ( element, attributes ) =
            case frame of
                Frame.Default ->
                    ( Html.div
                    , TW.shadowSm
                        :: baseAttributes
                    )

                Frame.Primary ->
                    ( Html.main_
                    , Attr.id "current"
                        :: TW.shadowLg
                        :: baseAttributes
                    )

                Frame.Active ->
                    ( Html.div
                    , TW.shadowSm
                        :: TW.hoverShadowLg
                        :: TW.hoverTranslateX1
                        :: TW.transform
                        :: TW.transitionAll
                        :: TW.duration150
                        :: TW.easeInOut
                        :: baseAttributes
                    )
    in
    element attributes (Title.view card.title :: withBody body ++ Link.view card.link)



--- HELPERS --------------------


withBody : List (Html msg) -> List (Html msg)
withBody body =
    case body of
        [] ->
            []

        _ ->
            [ Html.div
                [ TW.textGray700
                , TW.textBase
                , TW.px4
                , TW.smPx6
                , TW.mb3
                ]
                body
            ]
