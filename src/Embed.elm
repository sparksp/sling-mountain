module Embed exposing (Embed(..), map, step)


type Embed
    = None
    | One


map :
    { default : () -> a
    , visible : () -> a
    }
    -> Embed
    -> a
map { default, visible } embed =
    case embed of
        None ->
            default ()

        One ->
            visible ()


step : Embed -> Embed
step _ =
    None
