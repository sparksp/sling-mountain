module Ui.Card exposing (Card, view)

import Css
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw
import Ui.Card.Footer as Footer exposing (Footer)
import Ui.Card.Frame as Frame exposing (Frame)
import Ui.Card.Title as Title exposing (Title)


type alias Card msg =
    { frame : Frame
    , title : Title msg
    , body : List (Html msg)
    , footer : Footer msg
    }


view : Card msg -> Html msg
view ({ frame, body } as card) =
    let
        baseAttributes : List (Html.Attribute msg)
        baseAttributes =
            [ Attr.css
                [ Tw.bg_color TwTheme.white
                , Tw.my_3
                , Tw.overflow_hidden
                , Breakpoints.sm [ Tw.rounded ]
                , Tw.w_full
                ]
            ]

        ( element, attributes ) =
            case frame of
                Frame.Default ->
                    ( Html.div
                    , Attr.css [ Tw.shadow_sm ]
                        :: baseAttributes
                    )

                Frame.Primary ->
                    ( Html.main_
                    , Attr.id "current"
                        :: Attr.css [ Tw.shadow_lg ]
                        :: baseAttributes
                    )

                Frame.Active ->
                    ( Html.div
                    , Attr.css
                        [ Tw.shadow_sm
                        , Css.hover [ Tw.shadow_lg ]
                        , Breakpoints.sm [ Css.hover [ Tw.translate_x_1 ], Tw.transform ]
                        , Tw.transition_all
                        , Tw.duration_150
                        , Tw.ease_in_out
                        ]
                        :: baseAttributes
                    )
    in
    element attributes (Title.view card.title :: withBody body ++ Footer.view card.footer)



--- HELPERS --------------------


withBody : List (Html msg) -> List (Html msg)
withBody body =
    case body of
        [] ->
            []

        _ ->
            [ Html.div
                [ Attr.css
                    [ Tw.text_color TwTheme.gray_700
                    , Tw.text_base
                    , Tw.px_4
                    , Breakpoints.sm [ Tw.px_6 ]
                    , Tw.mb_3
                    ]
                ]
                body
            ]
