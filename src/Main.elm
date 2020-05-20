module Main exposing (main)

import Browser
import Html
import Scenario exposing (Scenario)
import SlingMountain


main : Program () SlingMountain.Model SlingMountain.Msg
main =
    Browser.element
        { init = SlingMountain.init getScenarios
        , update = SlingMountain.update
        , subscriptions = \_ -> Sub.none
        , view = SlingMountain.view
        }


getScenarios : List Scenario
getScenarios =
    [ Html.p [] [ Html.text "Build a belay using a single sling with 3 anchor points." ]
        |> Scenario.build "3-point Sling Belay"
        |> Scenario.withLink "https://youtu.be/HtuaqHjYdtc"
    , Html.p [] [ Html.text "Build a belay using a single sling with 2 anchor points." ]
        |> Scenario.build "2-point Sling Belay"
        |> Scenario.withLink "https://youtu.be/HtuaqHjYdtc"
    , Html.p [] [ Html.text "Build a belay using the rope to two in-reach anchors." ]
        |> Scenario.build "2-point In-reach Belay"
    , Html.p [] [ Html.text "Build a belay using the rope to three in-reach anchors." ]
        |> Scenario.build "3-point In-reach Belay"
    , Html.p [] [ Html.text "Rig a group abseil with both a static and a safety line. The static line must be rigged so that it can be released in an emergency." ]
        |> Scenario.build "Group Abseil"
    , Html.p [] [ Html.text "Rig a personal abseil using just the rope and 3 anchors." ]
        |> Scenario.build "Personal Abseil"
    , Html.p [] [ Html.text "Rig a climb ready for a novice group to belay from the bottom of the crag." ]
        |> Scenario.build "Group bottom belay"
    , Html.p [] [ Html.text "Rig a climb ready for belaying a novice group from the top of the crag." ]
        |> Scenario.build "Group top rope"
    , Html.p [] [ Html.text "Set up an out-of-reach anchor system of your choice using the rope. Now escape from the system, assuming your climber has their full weight on the rope." ]
        |> Scenario.build "Escape - Anchors out of reach"
    ]
