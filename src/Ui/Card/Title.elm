module Ui.Card.Title exposing
    ( Title
    , button
    , link
    , static
    , view
    , withActions
    )

import Css
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Svg.Styled.Attributes as SvgAttributes
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Utilities as Tw
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
            [ Attr.css
                [ Tw.px_3
                , Tw.py_3
                , Tw.w_full
                ]
            ]
    in
    Html.div
        [ Attr.css
            [ Tw.flex
            , Tw.flex_row
            , Tw.items_start
            , Tw.font_bold
            , Tw.leading_6
            , Tw.px_1
            , Breakpoints.sm [ Tw.px_3 ]
            , Tw.text_xl
            ]
        ]
        (case title_ of
            Button { actions, icon, onClick, text } ->
                Html.button
                    (Events.onClick onClick
                        :: Attr.css
                            [ Css.hover [ Tw.text_black ]
                            , Tw.text_gray_600
                            , Tw.text_left
                            ]
                        :: buttonPadding
                    )
                    [ icon
                        [ SvgAttributes.css
                            [ Tw.h_4
                            , Tw.w_4
                            , Tw.float_left
                            , Tw.mr_2
                            , Tw.mt_1
                            ]
                        ]
                    , Html.span [ Attr.css [ Tw.text_gray_900 ] ] [ Html.text text ]
                    ]
                    :: viewActions actions

            Link { actions, icon, href, text } ->
                Html.a
                    (Attr.href href
                        :: Attr.css
                            [ Css.hover [ Tw.text_black ]
                            , Tw.text_gray_600
                            , Tw.text_left
                            ]
                        :: buttonPadding
                    )
                    [ icon
                        [ SvgAttributes.css
                            [ Tw.h_4
                            , Tw.w_4
                            , Tw.float_left
                            , Tw.mr_2
                            , Tw.mt_1
                            ]
                        ]
                    , Html.span [ Attr.css [ Tw.text_gray_900 ] ] [ Html.text text ]
                    ]
                    :: viewActions actions

            Static { icon, text, actions } ->
                Html.p buttonPadding
                    [ Html.span [ Attr.css [ Tw.text_gray_900 ] ]
                        [ icon
                            [ SvgAttributes.css
                                [ Tw.h_4
                                , Tw.w_4
                                , Tw.float_left
                                , Tw.mr_2
                                , Tw.mt_1
                                ]
                            ]
                        , Html.span [ Attr.css [ Tw.text_gray_900 ] ] [ Html.text text ]
                        ]
                    ]
                    :: viewActions actions
        )



--- HELPER


viewActions : List (Action msg) -> List (Html msg)
viewActions actions =
    List.map (Action.view [ Attr.css [ Tw.p_3, Tw.h_6 ] ]) actions
