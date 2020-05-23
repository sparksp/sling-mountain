module NotFound.Main exposing (main)

import Browser
import NotFound.View exposing (view)


main : Program () {} msg
main =
    Browser.document
        { init = \() -> ( {}, Cmd.none )
        , update = \_ _ -> ( {}, Cmd.none )
        , subscriptions = \_ -> Sub.none
        , view = view
        }
