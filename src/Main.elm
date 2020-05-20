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
        |> Scenario.withLink "https://www.youtube.com/watch?v=HtuaqHjYdtc"
    , Html.p [] [ Html.text "Build a belay using a single sling with 2 anchor points." ]
        |> Scenario.build "2-point Sling Belay"
        |> Scenario.withLink "https://www.youtube.com/watch?v=HtuaqHjYdtc"
    , Html.p [] [ Html.text "Build a belay using the rope to two in-reach anchors." ]
        |> Scenario.build "2-point Trad Belay (in-reach)"
        |> Scenario.withLink "https://www.youtube.com/watch?v=Jw9zEgq09pE"
    , Html.p [] [ Html.text "Build a belay using the rope to three in-reach anchors." ]
        |> Scenario.build "3-point Trad Belay (in-reach)"
        |> Scenario.withLink "https://www.youtube.com/watch?v=Jw9zEgq09pE"
    , Html.p [] [ Html.text "Build a belay using the rope to two out-of-reach anchors and one in-reach anchor." ]
        |> Scenario.build "3-point Trad Belay (out-of-reach)"
        |> Scenario.withLink "https://www.youtube.com/watch?v=Jw9zEgq09pE"
    , Html.p [] [ Html.text "Rig a group abseil with both a static and a safety line. The static line must be rigged so that it can be released in an emergency." ]
        |> Scenario.build "Group Abseil"
        |> Scenario.withLink "https://www.youtube.com/watch?v=WOnyBfdFuMY"
    , Html.p [] [ Html.text "You and your partner have just finished a single pitch trad route, but your partner was not able to get all of the year out. Set up a fixed rope using three anchors so that you can abseil down and get the gear back." ]
        |> Scenario.build "Personal Abseil"
        |> Scenario.withLink "https://www.youtube.com/watch?v=LEaB0TBOwhg"
    , Html.p [] [ Html.text "Rig a climb ready for a novice group to belay from the bottom of the crag." ]
        |> Scenario.build "Group bottom belay"
        |> Scenario.withLink "https://www.youtube.com/watch?v=eaApvRKwqSE"
    , Html.p [] [ Html.text "Rig a climb ready for belaying a novice group from the top of the crag." ]
        |> Scenario.build "Group top rope"
        |> Scenario.withLink "https://www.youtube.com/watch?v=eaApvRKwqSE"
    , Html.p [] [ Html.text "Set up a belay using sling(s), attach yourself and put your climber on belay. Now escape from the system, assuming your climber has their full weight on the rope." ]
        |> Scenario.build "Escape - Sling belay"
        |> Scenario.withLink "https://www.youtube.com/watch?v=6s1OR4RycfU"
    , Html.p [] [ Html.text "Set up a belay using in reach anchors and your rope. Put your climber on belay. Now escape from the system, assuming your climber has their full weight on the rope." ]
        |> Scenario.build "Escape - Anchors in reach"
        |> Scenario.withLink "https://www.youtube.com/watch?v=6s1OR4RycfU"
    , Html.p [] [ Html.text "Set up an out-of-reach anchor system of your choice using the rope. Now escape from the system, assuming your climber has their full weight on the rope." ]
        |> Scenario.build "Escape - Anchors out of reach"
        |> Scenario.withLink "https://www.youtube.com/watch?v=z6cdgTe0ZzE"
    , Html.p [] [ Html.text "You've finished climbing a sport route - rethread the chains with your rope ready to lower off. Make sure you keep yourself safe and leave nothing behind." ]
        |> Scenario.build "Clean a Sport Route"
        |> Scenario.withLink "https://www.youtube.com/watch?v=EjDNpYw4l34"
    , Html.p [] [ Html.text "Your partner is stuck on a move below you and can't get around it. Set up an assisted hoist to give them a boost up." ]
        |> Scenario.build "Assisted Hoist"
        |> Scenario.withLink "https://www.youtube.com/watch?v=0EZ1Umt4Kqw"
    , Html.p [] [ Html.text "Your partner unconscious and needs your help! You've already escaped from the system and decided you need to hoist them up to you. Set up a suitable hoist system." ]
        |> Scenario.build "Unassisted Hoist"
        |> Scenario.withLink "https://www.youtube.com/watch?v=0EZ1Umt4Kqw"
    , Html.p [] [ Html.text "You need to make your way up a fixed rope and there's no one available to belay you. You have your guide plate and a prusik to hand." ]
        |> Scenario.build "Ascend the Rope"
        |> Scenario.withLink "https://www.youtube.com/watch?v=RWSVpnEQ-EY"
    , Html.p [] [ Html.text "Set up a sling belay and put your partner on belay using guide mode. Unfortunately they're unable to finish the climb and need you to lower them all the way back down." ]
        |> Scenario.build "Lowering on a Guide Plate"
        |> Scenario.withLink "https://www.youtube.com/watch?v=2ZYWfcYRL9s"
    , Html.p [] [ Html.text "Set up a sling belay and put your partner on belay using guide mode. They've got a little stuck and need you to hoist them past a couple of moves." ]
        |> Scenario.build "Guide-mode Assisted Hoist"
        |> Scenario.withLink "https://www.youtube.com/watch?v=2ZYWfcYRL9s"
    , Html.p [] [ Html.text "You've finished a long multi-pitch route and decide to abseil back down. Set up a retrievable abseil for you and your partner. You'll need at least two full rope lengths to get to the bottom." ]
        |> Scenario.build "Retrievable Abseil"
        |> Scenario.withLink "https://www.youtube.com/watch?v=WPrcUv3mc8M"
    , Html.p [] [ Html.text "As you abseil down you notice a damaged section of rope just below you. Stop and make yourself safe, then isolate the damage and move past it." ]
        |> Scenario.build "Abseil past a knot"
        |> Scenario.withLink "https://www.youtube.com/watch?v=FifPoymPxNc"
    , Html.p [] [ Html.text "You are lowering your partner to the ground - you've joined both of the ropes together so you can get them down in one go. Lower them safely past the knot." ]
        |> Scenario.build "Lower past a knot"
        |> Scenario.withLink "https://www.youtube.com/watch?v=FifPoymPxNc"
    , Html.p [] [ Html.text "You are sport climbing with someone who does not know how to thread the chains. Set up the lower-off so that they are not climbing on the fixed hardware but can easily remove your equipment and lower-off without having to untie from the rope." ]
        |> Scenario.build "Novice Sport Lower-off"
        |> Scenario.withLink "https://www.youtube.com/watch?v=7wMnCI91V-Y"
    , Html.p [] [ Html.text "You've finished climbing your route and are getting ready to abseil down, but your partner is not comfortable abseiling on their own. Set up a retrievable abseil, then safeguard their abseil with a safety rope. Finally, abseil down to join them." ]
        |> Scenario.build "Novice Abseil Safety"
        |> Scenario.withLink "https://www.youtube.com/watch?v=65UxlZ8S6OI"
    ]
