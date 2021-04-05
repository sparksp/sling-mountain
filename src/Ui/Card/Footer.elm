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

import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Tailwind as TW
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
                [ Attr.class TW.bgTransparent
                , Attr.class TW.borderT
                , Attr.class TW.px3
                , Attr.class TW.flex
                ]
                (Html.a
                    [ Attr.href href
                    , Attr.title text
                    , Attr.class TW.block
                    , Attr.class TW.flex1
                    , Attr.class TW.hoverTextGray800
                    , Attr.class TW.px3
                    , Attr.class TW.py2
                    , Attr.class TW.textGray500
                    , Attr.class TW.textLeft
                    ]
                    [ Html.text text
                    ]
                    :: actions
                )
            ]

        Button { text, onClick } ->
            [ Html.figure
                [ Attr.class TW.bgTransparent
                , Attr.class TW.borderT
                , Attr.class TW.px3
                , Attr.class TW.flex
                ]
                (Html.button
                    [ Events.onClick onClick
                    , Attr.title text
                    , Attr.class TW.block
                    , Attr.class TW.hoverTextGray800
                    , Attr.class TW.px3
                    , Attr.class TW.py2
                    , Attr.class TW.textGray500
                    , Attr.class TW.wFull
                    , Attr.class TW.textLeft
                    ]
                    [ Html.text text
                    ]
                    :: actions
                )
            ]

        Figure { attributes, content } ->
            [ Html.figure (Attr.class TW.borderT :: attributes) content
            ]

        Image { src, alt } ->
            [ Html.figure
                [ Attr.class TW.bgTransparent
                , Attr.class TW.borderT
                ]
                [ Html.img [ Attr.src src, Attr.alt alt ] []
                ]
            ]

        Action { parent, action } ->
            viewHelper parent
                (Action.view
                    [ Attr.class TW.px3
                    , Attr.class TW.py2
                    , Attr.class TW.h6
                    ]
                    action
                    :: actions
                )
