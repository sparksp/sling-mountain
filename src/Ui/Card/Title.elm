module Ui.Card.Title exposing
    ( Title
    , button
    , link
    , static
    , view
    , withActions
    )

import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Svg.Attributes
import Tailwind as TW
import Ui.Card.Action as Action exposing (Action)
import Ui.Icons as Icons


type Title msg
    = Button
        { actions : List (Action msg)
        , icon : Icons.Icon msg
        , onClick : msg
        , text : String
        }
    | Link
        { actions : List (Action msg)
        , icon : Icons.Icon msg
        , href : String
        , text : String
        }
    | Static
        { actions : List (Action msg)
        , icon : Icons.Icon msg
        , text : String
        }


button : { icon : Icons.Icon msg, onClick : msg } -> String -> Title msg
button { icon, onClick } text =
    Button
        { actions = []
        , icon = icon
        , onClick = onClick
        , text = text
        }


link : { icon : Icons.Icon msg, href : String } -> String -> Title msg
link { icon, href } text =
    Link
        { actions = []
        , icon = icon
        , href = href
        , text = text
        }


static : Icons.Icon msg -> String -> Title msg
static icon text =
    Static { actions = [], icon = icon, text = text }


withActions : List (Action msg) -> Title msg -> Title msg
withActions actions title =
    case title of
        Button options ->
            Button { options | actions = actions }

        Link options ->
            Link { options | actions = actions }

        Static options ->
            Static { options | actions = actions }



--- VIEW


view : Title msg -> Html msg
view title_ =
    let
        buttonPadding : List (Html.Attribute msg)
        buttonPadding =
            [ Attr.class TW.px3
            , Attr.class TW.py3
            , Attr.class TW.wFull
            ]
    in
    Html.div
        [ Attr.class TW.flex
        , Attr.class TW.flexRow
        , Attr.class TW.itemsStart
        , Attr.class TW.fontBold
        , Attr.class TW.leading6
        , Attr.class TW.px1
        , Attr.class TW.smPx3
        , Attr.class TW.textXl
        ]
        (case title_ of
            Button { actions, icon, onClick, text } ->
                Html.button
                    (Events.onClick onClick
                        :: Attr.class TW.hoverTextBlack
                        :: Attr.class TW.textGray600
                        :: Attr.class TW.textLeft
                        :: buttonPadding
                    )
                    [ icon
                        [ Svg.Attributes.class TW.h4
                        , Svg.Attributes.class TW.w4
                        , Svg.Attributes.class TW.floatLeft
                        , Svg.Attributes.class TW.mr2
                        , Svg.Attributes.class TW.mt1
                        ]
                    , Html.span [ Attr.class TW.textGray900 ] [ Html.text text ]
                    ]
                    :: viewActions actions

            Link { actions, icon, href, text } ->
                Html.a
                    (Attr.href href
                        :: Attr.class TW.hoverTextBlack
                        :: Attr.class TW.textGray600
                        :: Attr.class TW.textLeft
                        :: buttonPadding
                    )
                    [ icon
                        [ Svg.Attributes.class TW.h4
                        , Svg.Attributes.class TW.w4
                        , Svg.Attributes.class TW.floatLeft
                        , Svg.Attributes.class TW.mr2
                        , Svg.Attributes.class TW.mt1
                        ]
                    , Html.span [ Attr.class TW.textGray900 ] [ Html.text text ]
                    ]
                    :: viewActions actions

            Static { icon, text, actions } ->
                Html.p buttonPadding
                    [ Html.span [ Attr.class TW.textGray900 ]
                        [ icon
                            [ Svg.Attributes.class TW.h4
                            , Svg.Attributes.class TW.w4
                            , Svg.Attributes.class TW.floatLeft
                            , Svg.Attributes.class TW.mr2
                            , Svg.Attributes.class TW.mt1
                            ]
                        , Html.span [ Attr.class TW.textGray900 ] [ Html.text text ]
                        ]
                    ]
                    :: viewActions actions
        )



--- HELPER


viewActions : List (Action msg) -> List (Html msg)
viewActions actions =
    List.map (Action.view [ Attr.class TW.p3, Attr.class TW.h6 ]) actions
