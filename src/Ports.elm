port module Ports exposing (storeScenarios)

import Json.Encode as Encode


port storeScenarios : Encode.Value -> Cmd msg
