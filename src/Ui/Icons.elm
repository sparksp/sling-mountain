module Ui.Icons exposing
    ( Icon
    , bookmarkOutline
    , bug
    , check
    , chevronRight
    , cross
    , disable
    , inboxCheck
    , info
    , instagram
    , restore
    , skip
    , todo
    , youtube
    )

{-| -}

import Html exposing (Html)
import Svg
import Svg.Attributes exposing (d, fill, viewBox)


{-| Icon
-}
type alias Icon msg =
    List (Svg.Attribute msg) -> Html msg


{-| Bookmark Outline (bookmark-outline)

From [zondicons](https://www.zondicons.com/).

-}
bookmarkOutline : Icon msg
bookmarkOutline attributes =
    zondicon attributes
        "M2 2c0-1.1.9-2 2-2h12a2 2 0 0 1 2 2v18l-8-4-8 4V2zm2 0v15l6-3 6 3V2H4z"


{-| Bug

From [zondicons](https://www.zondicons.com/).

-}
bug : Icon msg
bug attributes =
    zondicon attributes
        "M15.3 14.89l2.77 2.77a1 1 0 0 1 0 1.41 1 1 0 0 1-1.41 0l-2.59-2.58A5.99 5.99 0 0 1 11 18V9.04a1 1 0 0 0-2 0V18a5.98 5.98 0 0 1-3.07-1.51l-2.59 2.58a1 1 0 0 1-1.41 0 1 1 0 0 1 0-1.41l2.77-2.77A5.95 5.95 0 0 1 4.07 13H1a1 1 0 1 1 0-2h3V8.41L.93 5.34a1 1 0 0 1 0-1.41 1 1 0 0 1 1.41 0l2.1 2.1h11.12l2.1-2.1a1 1 0 0 1 1.41 0 1 1 0 0 1 0 1.41L16 8.41V11h3a1 1 0 1 1 0 2h-3.07c-.1.67-.32 1.31-.63 1.89zM15 5H5a5 5 0 1 1 10 0z"


{-| Check (checkmark-outline)

From [zondicons](https://www.zondicons.com/).

-}
check : Icon msg
check attributes =
    zondicon attributes
        "M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM6.7 9.29L9 11.6l4.3-4.3 1.4 1.42L9 14.4l-3.7-3.7 1.4-1.42z"


{-| Chevron Right

From [zondicons](https://www.zondicons.com/).

-}
chevronRight : Icon msg
chevronRight attributes =
    zondicon attributes
        "M12.95 10.707l.707-.707L8 4.343 6.586 5.757 10.828 10l-4.242 4.243L8 15.657l4.95-4.95z"


{-| Cross (close-outline)

From [zondicons](https://www.zondicons.com/).

-}
cross : Icon msg
cross attributes =
    zondicon attributes
        "M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm1.41-1.41A8 8 0 1 0 15.66 4.34 8 8 0 0 0 4.34 15.66zm9.9-8.49L11.41 10l2.83 2.83-1.41 1.41L10 11.41l-2.83 2.83-1.41-1.41L8.59 10 5.76 7.17l1.41-1.41L10 8.59l2.83-2.83 1.41 1.41z"


{-| Disable (trash)

From [zondicons](https://www.zondicons.com/).

-}
disable : Icon msg
disable attributes =
    zondicon attributes
        "M6 2l2-2h4l2 2h4v2H2V2h4zM3 6h14l-1 14H4L3 6zm5 2v10h1V8H8zm3 0v10h1V8h-1z"


{-| Inbox Check (inbox-check)

From [zondicons](https://www.zondicons.com/).

-}
inboxCheck : Icon msg
inboxCheck attributes =
    zondicon attributes
        "M0 2C0 .9.9 0 2 0h16a2 2 0 0 1 2 2v16a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm14 12h4V2H2v12h4c0 1.1.9 2 2 2h4a2 2 0 0 0 2-2zM5 9l2-2 2 2 4-4 2 2-6 6-4-4z"


{-| Info (information-outline)

From [zondicons](https://www.zondicons.com/).

-}
info : Icon msg
info attributes =
    zondicon attributes
        "M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM9 11V9h2v6H9v-4zm0-6h2v2H9V5z"


{-| Instagram

Designed by [Pixel perfect from Flaticon](https://www.flaticon.com/authors/pixel-perfect).

-}
instagram : Icon msg
instagram attributes =
    pixelPerfect attributes
        "M 512 160 L 512 352 C 512 440.352 440.352 512 352 512 L 160 512 C 71.648 512 0 440.352 0 352 L 0 160 C 0 71.648 71.648 0 160 0 L 352 0 C 440.352 0 512 71.648 512 160 Z M 464 160 C 464 98.24 413.76 48 352 48 L 160 48 C 98.24 48 48 98.24 48 160 L 48 352 C 48 413.76 98.24 464 160 464 L 352 464 C 413.76 464 464 413.76 464 352 Z M 384 256 C 384 326.688 326.688 384 256 384 C 185.312 384 128 326.688 128 256 C 128 185.312 185.312 128 256 128 C 326.688 128 384 185.312 384 256 Z M 336 256 C 336 211.872 300.096 176 256 176 C 211.904 176 176 211.872 176 256 C 176 300.096 211.904 336 256 336 C 300.096 336 336 300.096 336 256 Z M 410.656 118.4 C 410.656 127.82 403.02 135.456 393.6 135.456 C 384.18 135.456 376.544 127.82 376.544 118.4 C 376.544 108.98 384.18 101.344 393.6 101.344 C 403.02 101.344 410.656 108.98 410.656 118.4 Z"


{-| Restore (reply)

From [zondicons](https://www.zondicons.com/).

-}
restore : Icon msg
restore attributes =
    zondicon attributes
        "M15 17v-2.99A4 4 0 0 0 11 10H8v5L2 9l6-6v5h3a6 6 0 0 1 6 6v3h-2z"


{-| Skip (fast-forward)

From [zondicons](https://www.zondicons.com/).

-}
skip : Icon msg
skip attributes =
    zondicon attributes
        "M1 5l9 5-9 5V5zm9 0l9 5-9 5V5z"


{-| Todo
-}
todo : Icon msg
todo attributes =
    zondicon attributes
        "M2.93 17.07c-5.537-5.348-3.208-14.684 4.191-16.806 3.554-1.019 7.381 7e-3 9.949 2.666 5.348 5.537 2.696 14.787-4.773 16.65-3.346 0.834-6.886-0.114-9.367-2.51zm1.41-1.41c4.357 4.357 11.797 2.364 13.392-3.588 0.74-2.763-0.05-5.71-2.072-7.732-4.357-4.357-11.797-2.364-13.392 3.588-0.74 2.763 0.05 5.71 2.072 7.732z"


{-| YouTube

Designed by [Pixel perfect from Flaticon](https://www.flaticon.com/authors/pixel-perfect).

-}
youtube : Icon msg
youtube attributes =
    pixelPerfect attributes
        "M490.24,113.92c-13.888-24.704-28.96-29.248-59.648-30.976C399.936,80.864,322.848,80,256.064,80 c-66.912,0-144.032,0.864-174.656,2.912c-30.624,1.76-45.728,6.272-59.744,31.008C7.36,138.592,0,181.088,0,255.904 C0,255.968,0,256,0,256c0,0.064,0,0.096,0,0.096v0.064c0,74.496,7.36,117.312,21.664,141.728 c14.016,24.704,29.088,29.184,59.712,31.264C112.032,430.944,189.152,432,256.064,432c66.784,0,143.872-1.056,174.56-2.816 c30.688-2.08,45.76-6.56,59.648-31.264C504.704,373.504,512,330.688,512,256.192c0,0,0-0.096,0-0.16c0,0,0-0.064,0-0.096 C512,181.088,504.704,138.592,490.24,113.92z M192,352V160l160,96L192,352z"



--- HELPERS


{-| For icons designed by [Pixel perfect from Flaticon](https://www.flaticon.com/authors/pixel-perfect).
-}
pixelPerfect : List (Svg.Attribute msg) -> String -> Html msg
pixelPerfect attributes icon =
    Svg.svg (viewBox "0 0 512 512" :: fill "currentColor" :: attributes)
        [ Svg.path [ d icon ] [] ]


{-| For icons from [zondicons](https://www.zondicons.com/).
-}
zondicon : List (Svg.Attribute msg) -> String -> Html msg
zondicon attributes icon =
    Svg.svg (viewBox "0 0 20 20" :: fill "currentColor" :: attributes)
        [ Svg.path [ d icon ] [] ]
