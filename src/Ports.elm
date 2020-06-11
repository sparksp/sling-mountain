port module Ports exposing (loadScenarios, storeScenarios)

import Json.Encode as Encode


port storeScenarios : Encode.Value -> Cmd msg


port loadScenarios : (Encode.Value -> msg) -> Sub msg
