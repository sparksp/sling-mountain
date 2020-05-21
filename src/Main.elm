module Main exposing (main)

import Browser
import Html
import Scenario exposing (Scenario)
import SlingMountain


main : Program () SlingMountain.Model SlingMountain.Msg
main =
    Browser.document
        { init = SlingMountain.init getScenarios
        , update = SlingMountain.update
        , subscriptions = SlingMountain.subscriptions
        , view = SlingMountain.view
        }


getScenarios : List Scenario
getScenarios =
    [ Scenario.build "2-point Sling Belay"
        (Html.p [] [ Html.text "Build a belay using a single sling with 2 anchor points." ])
        |> Scenario.withLink (Scenario.Youtube "HtuaqHjYdtc")
    , Scenario.build "2-point Trad Belay (in-reach)"
        (Html.p [] [ Html.text "Build a belay using the rope to two in-reach anchors." ])
        |> Scenario.withLink (Scenario.Youtube "Jw9zEgq09pE")
    , Scenario.build "3-point Sling Belay"
        (Html.p [] [ Html.text "Build a belay using a single sling with 3 anchor points." ])
        |> Scenario.withLink (Scenario.Youtube "HtuaqHjYdtc")
    , Scenario.build "3-point Trad Belay (in-reach)"
        (Html.p [] [ Html.text "Build a belay using the rope to three in-reach anchors." ])
        |> Scenario.withLink (Scenario.Youtube "Jw9zEgq09pE")
    , Scenario.build "3-point Trad Belay (out-of-reach)"
        (Html.p [] [ Html.text "Build a belay using the rope to two out-of-reach anchors and one in-reach anchor." ])
        |> Scenario.withLink (Scenario.Youtube "Jw9zEgq09pE")
    , Scenario.build "Abseil past a knot"
        (Html.p [] [ Html.text "As you abseil down you notice a damaged section of rope just below you. Stop and make yourself safe, then isolate the damage and move past it." ])
        |> Scenario.withLink (Scenario.Youtube "FifPoymPxNc")
    , Scenario.build "Ascend the Rope"
        (Html.p [] [ Html.text "You need to make your way up a fixed rope and there's no one available to belay you. You have your guide plate and a prusik to hand." ])
        |> Scenario.withLink (Scenario.Youtube "RWSVpnEQ-EY")
    , Scenario.build "Assisted Hoist"
        (Html.p [] [ Html.text "Your partner is stuck on a move below you and can't get around it. Set up an assisted hoist to give them a boost up." ])
        |> Scenario.withLink (Scenario.Youtube "0EZ1Umt4Kqw")
    , Scenario.build "Clean a Sport Route"
        (Html.p [] [ Html.text "You've finished climbing a sport route - rethread the chains with your rope ready to lower off. Make sure you keep yourself safe and leave nothing behind." ])
        |> Scenario.withLink (Scenario.Youtube "EjDNpYw4l34")
    , Scenario.build "Escape - Anchors in reach"
        (Html.p [] [ Html.text "Set up a belay using in reach anchors and your rope. Put your climber on belay. Now escape from the system, assuming your climber has their full weight on the rope." ])
        |> Scenario.withLink (Scenario.Youtube "6s1OR4RycfU")
    , Scenario.build "Escape - Anchors out of reach"
        (Html.p [] [ Html.text "Set up an out-of-reach anchor system of your choice using the rope. Now escape from the system, assuming your climber has their full weight on the rope." ])
        |> Scenario.withLink (Scenario.Youtube "z6cdgTe0ZzE")
    , Scenario.build "Escape - Sling belay"
        (Html.p [] [ Html.text "Set up a belay using sling(s), attach yourself and put your climber on belay. Now escape from the system, assuming your climber has their full weight on the rope." ])
        |> Scenario.withLink (Scenario.Youtube "6s1OR4RycfU")
    , Scenario.build "Group Abseil"
        (Html.p [] [ Html.text "Rig a group abseil with both a static and a safety line. The static line must be rigged so that it can be released in an emergency." ])
        |> Scenario.withLink (Scenario.Youtube "WOnyBfdFuMY")
    , Scenario.build "Group bottom belay"
        (Html.p [] [ Html.text "Rig a climb ready for a novice group to belay from the bottom of the crag." ])
        |> Scenario.withLink (Scenario.Youtube "eaApvRKwqSE")
    , Scenario.build "Group top rope"
        (Html.p [] [ Html.text "Rig a climb ready for belaying a novice group from the top of the crag." ])
        |> Scenario.withLink (Scenario.Youtube "eaApvRKwqSE")
    , Scenario.build "Guide-mode Assisted Hoist"
        (Html.p [] [ Html.text "Set up a sling belay and put your partner on belay using guide mode. They've got a little stuck and need you to hoist them past a couple of moves." ])
        |> Scenario.withLink (Scenario.Youtube "2ZYWfcYRL9s")
    , Scenario.build "Lower past a knot"
        (Html.p [] [ Html.text "You are lowering your partner to the ground - you've joined both of the ropes together so you can get them down in one go. Lower them safely past the knot." ])
        |> Scenario.withLink (Scenario.Youtube "FifPoymPxNc")
    , Scenario.build "Lowering on a Guide Plate"
        (Html.p [] [ Html.text "Set up a sling belay and put your partner on belay using guide mode. Unfortunately they're unable to finish the climb and need you to lower them all the way back down." ])
        |> Scenario.withLink (Scenario.Youtube "2ZYWfcYRL9s")
    , Scenario.build "Novice Abseil Safety"
        (Html.p [] [ Html.text "You've finished climbing your route and are getting ready to abseil down, but your partner is not comfortable abseiling on their own. Set up a retrievable abseil, then safeguard their abseil with a safety rope. Finally, abseil down to join them." ])
        |> Scenario.withLink (Scenario.Youtube "65UxlZ8S6OI")
    , Scenario.build "Novice Sport Lower-off"
        (Html.p [] [ Html.text "You are sport climbing with someone who does not know how to thread the chains. Set up the lower-off so that they are not climbing on the fixed hardware but can easily remove your equipment and lower-off without having to untie from the rope." ])
        |> Scenario.withLink (Scenario.Youtube "7wMnCI91V-Y")
    , Scenario.build "Personal Abseil"
        (Html.p [] [ Html.text "You and your partner have just finished a single pitch trad route, but your partner was not able to get all of the year out. Set up a fixed rope using three anchors so that you can abseil down and get the gear back." ])
        |> Scenario.withLink (Scenario.Youtube "LEaB0TBOwhg")
    , Scenario.build "Retrievable Abseil"
        (Html.p [] [ Html.text "You've finished a long multi-pitch route and decide to abseil back down. Set up a retrievable abseil for you and your partner. You'll need at least two full rope lengths to get to the bottom." ])
        |> Scenario.withLink (Scenario.Youtube "WPrcUv3mc8M")
    , Scenario.build "Unassisted Hoist"
        (Html.p [] [ Html.text "Your partner unconscious and needs your help! You've already escaped from the system and decided you need to hoist them up to you. Set up a suitable hoist system." ])
        |> Scenario.withLink (Scenario.Youtube "0EZ1Umt4Kqw")
    ]
