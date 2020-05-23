module NotFound.View exposing (view)

import Browser
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Html.Tailwind as TW
import Svg
import Svg.Icons as Icons
import Svg.Tailwind as STW


view : {} -> Browser.Document msg
view _ =
    { title = "Page Not Found on #SlingMountain"
    , body =
        [ Html.div
            [ TW.flex
            , TW.flexCol
            , TW.itemsCenter
            , TW.mdPx3
            , TW.py3
            ]
            [ viewTitle
            , Html.div [ TW.maxWLg, TW.wFull ] [ viewNotFoundCard ]
            ]
        ]
    }


viewTitle : Html msg
viewTitle =
    Html.nav [ TW.text3xl, TW.mdText4xl, TW.mb2, TW.fontTitle ]
        [ Html.span [ TW.textGray700, TW.text2xl, TW.mdText3xl ] [ Html.text "#" ]
        , Html.text "SlingMountain"
        ]


viewNotFoundCard : Html msg
viewNotFoundCard =
    cardFrame CardFramePrimary
        [ cardTitle [] { onClick = Nothing, icon = Icons.exclamation, actions = [] } "Page Not Found"
        , cardBody
            (Html.p []
                [ Html.text "We're sorry, we couldn't find the page you requested on #SlingMountain. It might be a old link or maybe it has moved."
                ]
            )
        , cardLinkButton { href = "/", title = "Return to the homepage." }
        ]


type CardFrameStyle
    = CardFrameDefault
    | CardFramePrimary
    | CardFrameActive


cardFrame : CardFrameStyle -> List (Html msg) -> Html msg
cardFrame style children =
    let
        baseAttributes =
            [ TW.bgWhite
            , TW.my3
            , TW.overflowHidden
            , TW.smRounded
            , TW.wFull
            ]

        ( element, attributes ) =
            case style of
                CardFrameDefault ->
                    ( Html.div
                    , TW.shadowSm
                        :: baseAttributes
                    )

                CardFramePrimary ->
                    ( Html.main_
                    , Attr.id "current"
                        :: TW.shadowLg
                        :: baseAttributes
                    )

                CardFrameActive ->
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
    element attributes children


cardTitle :
    List (Html.Attribute msg)
    ->
        { onClick : Maybe msg
        , icon : List (Svg.Attribute msg) -> Html msg
        , actions : List (Html msg)
        }
    -> String
    -> Html msg
cardTitle attributes { onClick, icon, actions } title =
    let
        buttonPadding =
            [ TW.px3
            , TW.py3
            , TW.wFull
            ]
    in
    Html.div
        (TW.flex
            :: TW.flexRow
            :: TW.fontBold
            :: TW.leading6
            :: TW.px1
            :: TW.smPx3
            :: TW.textXl
            :: attributes
        )
        ((case onClick of
            Just msg ->
                Html.button
                    (Events.onClick msg
                        :: Attr.title "Complete this Scenario"
                        :: TW.hoverTextBlack
                        :: TW.textGray600
                        :: TW.textLeft
                        :: buttonPadding
                    )

            Nothing ->
                Html.p buttonPadding
         )
            [ icon [ STW.h4, STW.w4, STW.floatLeft, STW.mr2, STW.mt1 ]
            , Html.span [ TW.textGray900 ] [ Html.text title ]
            ]
            :: actions
        )


cardBody : Html msg -> Html msg
cardBody body =
    Html.div
        [ TW.textGray700
        , TW.textBase
        , TW.px4
        , TW.smPx6
        , TW.mb3
        ]
        [ body ]


cardLinkButton : { href : String, title : String } -> Html msg
cardLinkButton { href, title } =
    Html.nav [ TW.bgTransparent ]
        [ Html.a
            [ Attr.href href
            , Attr.title title
            , TW.block
            , TW.textCenter
            , TW.borderT
            , TW.hoverTextGray800
            , TW.px6
            , TW.py2
            , TW.textGray500
            , TW.wFull
            ]
            [ Html.text title
            ]
        ]
