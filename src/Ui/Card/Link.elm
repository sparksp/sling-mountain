module Ui.Card.Link exposing
    ( Link
    , button
    , figure
    , image
    , link
    , none
    , view
    )

import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events.UnlessKeyed as UnlessKeyed
import Html.Tailwind as TW


type Link msg
    = Link { href : String, text : String }
    | Button { href : String, text : String, onClick : msg }
    | Figure { attributes : List (Html.Attribute msg), content : List (Html msg) }
    | Image { src : String, alt : String }
    | None



--- CONSTRUCTORS


link : { href : String, text : String } -> Link msg
link options =
    Link options


button : { href : String, text : String, onClick : msg } -> Link msg
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



--- VIEW


view : Link msg -> List (Html msg)
view link_ =
    case link_ of
        None ->
            []

        Link { href, text } ->
            [ Html.nav [ TW.bgTransparent, TW.borderT ]
                [ Html.a
                    [ Attr.href href
                    , Attr.title text
                    , TW.block
                    , TW.textCenter
                    , TW.hoverTextGray800
                    , TW.px6
                    , TW.py2
                    , TW.textGray500
                    ]
                    [ Html.text text
                    ]
                ]
            ]

        Button { href, text, onClick } ->
            [ Html.figure [ TW.bgTransparent, TW.borderT ]
                [ Html.a
                    [ UnlessKeyed.onClick onClick
                    , Attr.href href
                    , Attr.title text
                    , TW.block
                    , TW.textCenter
                    , TW.hoverTextGray800
                    , TW.px6
                    , TW.py2
                    , TW.textGray500
                    ]
                    [ Html.text text
                    ]
                ]
            ]

        Figure { attributes, content } ->
            [ Html.figure (TW.borderT :: attributes) content
            ]

        Image { src, alt } ->
            [ Html.figure [ TW.bgTransparent, TW.borderT ]
                [ Html.img [ Attr.src src, Attr.alt alt ] []
                ]
            ]
