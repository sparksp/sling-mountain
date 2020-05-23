module Ui.Card.Title exposing
    ( Title
    , active
    , static
    , view
    , withActions
    )

import Html exposing (Html)
import Html.Events as Events
import Html.Tailwind as TW
import Svg.Tailwind as STW
import Ui.Card.Action as Action exposing (Action)
import Ui.Icons as Icons


type Title msg
    = Active
        { actions : List (Action msg)
        , icon : Icons.Icon msg
        , onClick : msg
        , text : String
        }
    | Static
        { actions : List (Action msg)
        , icon : Icons.Icon msg
        , text : String
        }


active : { icon : Icons.Icon msg, onClick : msg } -> String -> Title msg
active { icon, onClick } text =
    Active
        { actions = []
        , icon = icon
        , onClick = onClick
        , text = text
        }


static : Icons.Icon msg -> String -> Title msg
static icon text =
    Static { actions = [], icon = icon, text = text }


withActions : List (Action msg) -> Title msg -> Title msg
withActions actions title =
    case title of
        Active options ->
            Active { options | actions = actions }

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
    case title_ of
        Active { actions, icon, onClick, text } ->
            Html.div
                [ TW.flex
                , TW.flexRow
                , TW.fontBold
                , TW.leading6
                , TW.px1
                , TW.smPx3
                , TW.textXl
                ]
                (Html.button
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
                )

        Static { icon, text, actions } ->
            Html.div
                [ TW.flex
                , TW.flexRow
                , TW.fontBold
                , TW.leading6
                , TW.px1
                , TW.smPx3
                , TW.textXl
                ]
                (Html.p buttonPadding
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
