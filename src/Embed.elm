module Embed exposing (Embed(..), map, none)


type Embed
    = None
    | One String


map :
    { key : String
    , default : () -> a
    , visible : () -> a
    }
    -> Embed
    -> a
map { key, default, visible } embed =
    case embed of
        None ->
            default ()

        One k ->
            if k == key then
                visible ()

            else
                default ()


none : Embed
none =
    None
