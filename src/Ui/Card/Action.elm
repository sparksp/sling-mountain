module Ui.Card.Action exposing
    ( Action
    , button
    , icon
    , link
    , view
    )

import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Svg.Styled.Attributes as SvgAttributes
import Tailwind as TW
import Ui.Icons as Icons


type Action msg
    = Button { icon : Icons.Icon msg, text : String, onClick : msg }
    | Icon { icon : Icons.Icon msg, text : String }
    | Link { icon : Icons.Icon msg, text : String, href : String }


button : { icon : Icons.Icon msg, text : String, onClick : msg } -> Action msg
button options =
    Button options


icon : { icon : Icons.Icon msg, text : String } -> Action msg
icon options =
    Icon options


link : { icon : Icons.Icon msg, text : String, href : String } -> Action msg
link options =
    Link options


view : List (Html.Attribute msg) -> Action msg -> Html msg
view attributes action =
    let
        baseAttributes : List (Html.Attribute msg)
        baseAttributes =
            Attr.class TW.flex
                :: Attr.class TW.flexRow
                :: Attr.class TW.itemsCenter
                :: Attr.class TW.boxContent
                :: Attr.class TW.textGray600
                :: attributes
    in
    case action of
        Button options ->
            Html.button
                (Events.onClick options.onClick
                    :: Attr.title options.text
                    :: Attr.class TW.hoverTextBlack
                    :: baseAttributes
                )
                [ options.icon
                    [ SvgAttributes.class TW.h4
                    , SvgAttributes.class TW.w4
                    ]
                ]

        Icon options ->
            Html.div
                (Attr.title options.text
                    :: Attr.class TW.cursorNotAllowed
                    :: baseAttributes
                )
                [ options.icon
                    [ SvgAttributes.class TW.h4
                    , SvgAttributes.class TW.w4
                    ]
                ]

        Link options ->
            Html.a
                (Attr.title options.text
                    :: Attr.href options.href
                    :: Attr.class TW.hoverTextGray900
                    :: baseAttributes
                )
                [ options.icon
                    [ SvgAttributes.class TW.h4
                    , SvgAttributes.class TW.w4
                    ]
                ]
