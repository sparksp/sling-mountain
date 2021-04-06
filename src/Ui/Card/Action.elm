module Ui.Card.Action exposing
    ( Action
    , button
    , icon
    , link
    , view
    )

import Css
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Svg.Styled.Attributes as SvgAttributes
import Tailwind.Utilities as Tw
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
            Attr.css
                [ Tw.flex
                , Tw.flex_row
                , Tw.items_center
                , Tw.box_content
                , Tw.text_gray_600
                ]
                :: attributes
    in
    case action of
        Button options ->
            Html.button
                (Events.onClick options.onClick
                    :: Attr.title options.text
                    :: Attr.css [ Css.hover [ Tw.text_black ] ]
                    :: baseAttributes
                )
                [ options.icon
                    [ SvgAttributes.css [ Tw.h_4, Tw.w_4 ]
                    ]
                ]

        Icon options ->
            Html.div
                (Attr.title options.text
                    :: Attr.css [ Tw.cursor_not_allowed ]
                    :: baseAttributes
                )
                [ options.icon
                    [ SvgAttributes.css [ Tw.h_4, Tw.w_4 ]
                    ]
                ]

        Link options ->
            Html.a
                (Attr.title options.text
                    :: Attr.href options.href
                    :: Attr.css [ Css.hover [ Tw.text_gray_900 ] ]
                    :: baseAttributes
                )
                [ options.icon
                    [ SvgAttributes.css [ Tw.h_4, Tw.w_4 ]
                    ]
                ]
