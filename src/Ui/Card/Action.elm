module Ui.Card.Action exposing
    ( Action
    , button
    , icon
    , link
    , view
    )

import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Html.Tailwind as TW
import Svg.Tailwind as STW
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
            TW.flex
                :: TW.flexRow
                :: TW.itemsCenter
                :: TW.boxContent
                :: TW.textGray600
                :: attributes
    in
    case action of
        Button options ->
            Html.button
                (Events.onClick options.onClick
                    :: Attr.title options.text
                    :: TW.hoverTextBlack
                    :: baseAttributes
                )
                [ options.icon [ STW.h4, STW.w4 ] ]

        Icon options ->
            Html.div
                (Attr.title options.text
                    :: TW.cursorNotAllowed
                    :: baseAttributes
                )
                [ options.icon [ STW.h4, STW.w4 ] ]

        Link options ->
            Html.a
                (Attr.title options.text
                    :: Attr.href options.href
                    :: TW.hoverTextGray900
                    :: baseAttributes
                )
                [ options.icon [ STW.h4, STW.w4 ] ]
