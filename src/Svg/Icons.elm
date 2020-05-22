module Svg.Icons exposing
    ( check
    , chevronRight
    , cross
    , disable
    , restore
    , skip
    , todo
    )

{-| -}

import Html exposing (Html)
import Svg
import Svg.Attributes exposing (d, fill, viewBox)


{-| Check (checkmark-outline)

From [zondicons](https://www.zondicons.com/).

-}
check : List (Svg.Attribute msg) -> Html msg
check attributes =
    svg attributes
        [ Svg.path [ d "M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM6.7 9.29L9 11.6l4.3-4.3 1.4 1.42L9 14.4l-3.7-3.7 1.4-1.42z" ] [] ]


{-| Chevron Right

From [zondicons](https://www.zondicons.com/).

-}
chevronRight : List (Svg.Attribute msg) -> Html msg
chevronRight attributes =
    svg attributes
        [ Svg.path [ d "M12.95 10.707l.707-.707L8 4.343 6.586 5.757 10.828 10l-4.242 4.243L8 15.657l4.95-4.95z" ] [] ]


{-| Cross (close-outline)

From [zondicons](https://www.zondicons.com/).

-}
cross : List (Svg.Attribute msg) -> Html msg
cross attributes =
    svg attributes
        [ Svg.path [ d "M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm1.41-1.41A8 8 0 1 0 15.66 4.34 8 8 0 0 0 4.34 15.66zm9.9-8.49L11.41 10l2.83 2.83-1.41 1.41L10 11.41l-2.83 2.83-1.41-1.41L8.59 10 5.76 7.17l1.41-1.41L10 8.59l2.83-2.83 1.41 1.41z" ] [] ]


{-| Disable (trash)

From [zondicons](https://www.zondicons.com/).

-}
disable : List (Svg.Attribute msg) -> Html msg
disable attributes =
    svg attributes
        [ Svg.path [ d "M6 2l2-2h4l2 2h4v2H2V2h4zM3 6h14l-1 14H4L3 6zm5 2v10h1V8H8zm3 0v10h1V8h-1z" ] [] ]


{-| Restore (reply)

From [zondicons](https://www.zondicons.com/).

-}
restore : List (Svg.Attribute msg) -> Html msg
restore attributes =
    svg attributes
        [ Svg.path [ d "M15 17v-2.99A4 4 0 0 0 11 10H8v5L2 9l6-6v5h3a6 6 0 0 1 6 6v3h-2z" ] [] ]


{-| Skip (fast-forward)

From [zondicons](https://www.zondicons.com/).

-}
skip : List (Svg.Attribute msg) -> Html msg
skip attributes =
    svg attributes
        [ Svg.path [ d "M1 5l9 5-9 5V5zm9 0l9 5-9 5V5z" ] [] ]


{-| Todo
-}
todo : List (Svg.Attribute msg) -> Html msg
todo attributes =
    svg attributes
        [ Svg.path [ d "M2.93 17.07c-5.537-5.348-3.208-14.684 4.191-16.806 3.554-1.019 7.381 7e-3 9.949 2.666 5.348 5.537 2.696 14.787-4.773 16.65-3.346 0.834-6.886-0.114-9.367-2.51zm1.41-1.41c4.357 4.357 11.797 2.364 13.392-3.588 0.74-2.763-0.05-5.71-2.072-7.732-4.357-4.357-11.797-2.364-13.392 3.588-0.74 2.763 0.05 5.71 2.072 7.732z" ] [] ]



--- HELPERS


svg : List (Svg.Attribute msg) -> List (Svg.Svg msg) -> Html msg
svg attributes icon =
    Svg.svg (viewBox "0 0 20 20" :: fill "currentColor" :: attributes) icon
