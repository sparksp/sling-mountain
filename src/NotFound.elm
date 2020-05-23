module NotFound exposing (main)

import Browser
import Html exposing (Html)
import Html.Tailwind as TW
import Ui.Card as Card
import Ui.Card.Frame as Frame
import Ui.Card.Link as Link
import Ui.Card.Title as Title
import Ui.Icons as Icons


main : Program () {} msg
main =
    Browser.document
        { init = \() -> ( {}, Cmd.none )
        , update = \_ _ -> ( {}, Cmd.none )
        , subscriptions = \_ -> Sub.none
        , view = view
        }



--- VIEW


view : {} -> Browser.Document msg
view _ =
    { title = "Page Not Found on #SlingMountain"
    , body =
        [ Html.div
            [ TW.flex
            , TW.flexCol
            , TW.itemsCenter
            , TW.mdPx3
            , TW.py3
            ]
            [ viewTitle
            , Html.div [ TW.maxWLg, TW.wFull ] [ viewNotFoundCard ]
            ]
        ]
    }



--- HELPERS


viewTitle : Html msg
viewTitle =
    Html.nav [ TW.text3xl, TW.mdText4xl, TW.mb2, TW.fontTitle ]
        [ Html.span [ TW.textGray700, TW.text2xl, TW.mdText3xl ] [ Html.text "#" ]
        , Html.text "SlingMountain"
        ]


viewNotFoundCard : Html msg
viewNotFoundCard =
    Card.view
        { frame = Frame.Primary
        , title = Title.static Icons.exclamation "Page Not Found"
        , body =
            [ Html.p []
                [ Html.text "We're sorry, we couldn't find the page you requested on #SlingMountain. It might be a old link or maybe it has moved."
                ]
            ]
        , link = Link.link { href = "/", text = "Return to the homepage." }
        }
