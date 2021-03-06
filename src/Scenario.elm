module Scenario exposing (Link(..), Scenario, build, mapBody, mapLink, mapTitle, withLink)

import Html.Styled exposing (Html)


type Link
    = Youtube String


type Scenario
    = Scenario
        { title : String
        , body : List (Html Never)
        , link : Maybe Link
        }


build : String -> List (Html Never) -> Scenario
build title body =
    Scenario { title = title, body = body, link = Nothing }


withLink : Link -> Scenario -> Scenario
withLink link (Scenario scenario) =
    Scenario { scenario | link = Just link }


mapTitle : (String -> a) -> Scenario -> a
mapTitle mapper (Scenario { title }) =
    mapper title


mapBody : (List (Html Never) -> a) -> Scenario -> a
mapBody mapper (Scenario { body }) =
    mapper body


mapLink : (Maybe Link -> a) -> Scenario -> a
mapLink mapper (Scenario { link }) =
    mapper link
