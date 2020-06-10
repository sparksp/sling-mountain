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
import Html.Tailwind as TW
import Svg.Tailwind as STW
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
        buttonPadding =
            [ TW.px3
            , TW.py3
            , TW.wFull
            ]
    in
    Html.div
        [ TW.flex
        , TW.flexRow
        , TW.itemsStart
        , TW.fontBold
        , TW.leading6
        , TW.px1
        , TW.smPx3
        , TW.textXl
        ]
        (case title_ of
            Button { actions, icon, onClick, text } ->
                Html.button
                    (Events.onClick onClick
                        :: TW.hoverTextBlack
                        :: TW.textGray600
                        :: TW.textLeft
                        :: buttonPadding
                    )
                    [ icon [ STW.h4, STW.w4, STW.floatLeft, STW.mr2, STW.mt1 ]
                    , Html.span [ TW.textGray900 ] [ Html.text text ]
                    ]
                    :: viewActions actions

            Link { actions, icon, href, text } ->
                Html.a
                    (Attr.href href
                        :: TW.hoverTextBlack
                        :: TW.textGray600
                        :: TW.textLeft
                        :: buttonPadding
                    )
                    [ icon [ STW.h4, STW.w4, STW.floatLeft, STW.mr2, STW.mt1 ]
                    , Html.span [ TW.textGray900 ] [ Html.text text ]
                    ]
                    :: viewActions actions

            Static { icon, text, actions } ->
                Html.p buttonPadding
                    [ Html.span [ TW.textGray900 ]
                        [ icon [ STW.h4, STW.w4, STW.floatLeft, STW.mr2, STW.mt1 ]
                        , Html.span [ TW.textGray900 ] [ Html.text text ]
                        ]
                    ]
                    :: viewActions actions
        )



--- HELPER


viewActions : List (Action msg) -> List (Html msg)
viewActions actions =
    List.map Action.view actions
