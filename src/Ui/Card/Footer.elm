module Ui.Card.Footer exposing
    ( Footer
    , button
    , figure
    , image
    , link
    , none
    , view
    , withAction
    )

import Css
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw
import Ui.Card.Action as Action exposing (Action)


type Footer msg
    = Link { href : String, text : String }
    | Action { parent : Footer msg, action : Action msg }
    | Button { text : String, onClick : msg }
    | Figure { attributes : List (Html.Attribute msg), content : List (Html msg) }
    | Image { src : String, alt : String }
    | None



--- CONSTRUCTORS


link : { href : String, text : String } -> Footer msg
link options =
    Link options


button : { text : String, onClick : msg } -> Footer msg
button options =
    Button options


figure : { attributes : List (Html.Attribute msg), content : List (Html msg) } -> Footer msg
figure options =
    Figure options


image : { src : String, alt : String } -> Footer msg
image options =
    Image options


none : Footer msg
none =
    None


withAction : Action msg -> Footer msg -> Footer msg
withAction action parent =
    Action { parent = parent, action = action }



--- VIEW


view : Footer msg -> List (Html msg)
view link_ =
    viewHelper link_ []


viewHelper : Footer msg -> List (Html msg) -> List (Html msg)
viewHelper link_ actions =
    case link_ of
        None ->
            actions

        Link { href, text } ->
            [ Html.nav
                [ Attr.css
                    [ Tw.bg_color TwTheme.transparent
                    , Tw.border_t
                    , Tw.px_3
                    , Tw.flex
                    ]
                ]
                (Html.a
                    [ Attr.href href
                    , Attr.title text
                    , Attr.css
                        [ Tw.block
                        , Tw.flex_1
                        , Css.hover [ Tw.text_color TwTheme.gray_800 ]
                        , Tw.px_3
                        , Tw.py_2
                        , Tw.text_color TwTheme.gray_500
                        , Tw.text_left
                        ]
                    ]
                    [ Html.text text
                    ]
                    :: actions
                )
            ]

        Button { text, onClick } ->
            [ Html.figure
                [ Attr.css
                    [ Tw.bg_color TwTheme.transparent
                    , Tw.border_t
                    , Tw.px_3
                    , Tw.flex
                    ]
                ]
                (Html.button
                    [ Events.onClick onClick
                    , Attr.title text
                    , Attr.css
                        [ Tw.block
                        , Css.hover [ Tw.text_color TwTheme.gray_800 ]
                        , Tw.px_3
                        , Tw.py_2
                        , Tw.text_color TwTheme.gray_500
                        , Tw.w_full
                        , Tw.text_left
                        ]
                    ]
                    [ Html.text text
                    ]
                    :: actions
                )
            ]

        Figure { attributes, content } ->
            [ Html.figure (Attr.css [ Tw.border_t ] :: attributes) content
            ]

        Image { src, alt } ->
            [ Html.figure
                [ Attr.css
                    [ Tw.bg_color TwTheme.transparent
                    , Tw.border_t
                    ]
                ]
                [ Html.img [ Attr.src src, Attr.alt alt ] []
                ]
            ]

        Action { parent, action } ->
            viewHelper parent
                (Action.view
                    [ Attr.css
                        [ Tw.px_3
                        , Tw.py_2
                        , Tw.h_6
                        ]
                    ]
                    action
                    :: actions
                )
