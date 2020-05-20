module Scenario exposing (Link(..), Scenario, build, mapBody, mapLink, mapTitle, withLink)

import Html exposing (Html)


type Link
    = Youtube String


type Scenario
    = Scenario
        { title : String
        , body : Html Never
        , link : Maybe Link
        }


build : String -> Html Never -> Scenario
build title body =
    Scenario { title = title, body = body, link = Nothing }


withLink : Link -> Scenario -> Scenario
withLink link (Scenario scenario) =
    Scenario { scenario | link = Just link }


mapTitle : (String -> a) -> Scenario -> a
mapTitle mapper (Scenario { title }) =
    mapper title


mapBody : (Html Never -> a) -> Scenario -> a
mapBody mapper (Scenario { body }) =
    mapper body


mapLink : (Maybe Link -> a) -> Scenario -> a
mapLink mapper (Scenario { link }) =
    mapper link
