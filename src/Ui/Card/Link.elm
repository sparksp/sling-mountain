module Ui.Card.Link exposing
    ( Link
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
import Html.Tailwind as TW
import Ui.Card.Action as Action exposing (Action)


type Link msg
    = Link { href : String, text : String }
    | Action { parent : Link msg, action : Action msg }
    | Button { text : String, onClick : msg }
    | Figure { attributes : List (Html.Attribute msg), content : List (Html msg) }
    | Image { src : String, alt : String }
    | None



--- CONSTRUCTORS


link : { href : String, text : String } -> Link msg
link options =
    Link options


button : { text : String, onClick : msg } -> Link msg
button options =
    Button options


figure : { attributes : List (Html.Attribute msg), content : List (Html msg) } -> Link msg
figure options =
    Figure options


image : { src : String, alt : String } -> Link msg
image options =
    Image options


none : Link msg
none =
    None


withAction : Action msg -> Link msg -> Link msg
withAction action parent =
    Action { parent = parent, action = action }



--- VIEW


view : Link msg -> List (Html msg)
view link_ =
    viewHelper link_ []


viewHelper : Link msg -> List (Html msg) -> List (Html msg)
viewHelper link_ actions =
    case link_ of
        None ->
            actions

        Link { href, text } ->
            [ Html.nav [ TW.bgTransparent, TW.borderT, TW.px3, TW.flex ]
                (Html.a
                    [ Attr.href href
                    , Attr.title text
                    , TW.block
                    , TW.flex1
                    , TW.hoverTextGray800
                    , TW.px3
                    , TW.py2
                    , TW.textGray500
                    , TW.textLeft
                    ]
                    [ Html.text text
                    ]
                    :: actions
                )
            ]

        Button { text, onClick } ->
            [ Html.figure [ TW.bgTransparent, TW.borderT, TW.px3, TW.flex ]
                (Html.button
                    [ Events.onClick onClick
                    , Attr.title text
                    , TW.block
                    , TW.hoverTextGray800
                    , TW.px3
                    , TW.py2
                    , TW.textGray500
                    , TW.wFull
                    , TW.textLeft
                    ]
                    [ Html.text text
                    ]
                    :: actions
                )
            ]

        Figure { attributes, content } ->
            [ Html.figure (TW.borderT :: attributes) content
            ]

        Image { src, alt } ->
            [ Html.figure [ TW.bgTransparent, TW.borderT ]
                [ Html.img [ Attr.src src, Attr.alt alt ] []
                ]
            ]

        Action { parent, action } ->
            viewHelper parent (Action.view [ TW.px3, TW.py2, TW.h6 ] action :: actions)
