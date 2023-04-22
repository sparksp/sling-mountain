module Tailwind.Theme exposing
    ( Color
    , transparent
    , current
    , black
    , white
    , gray_100
    , gray_200
    , gray_300
    , gray_400
    , gray_500
    , gray_600
    , gray_700
    , gray_800
    , gray_900
    , red_100
    , red_200
    , red_300
    , red_400
    , red_500
    , red_600
    , red_700
    , red_800
    , red_900
    , orange_100
    , orange_200
    , orange_300
    , orange_400
    , orange_500
    , orange_600
    , orange_700
    , orange_800
    , orange_900
    , yellow_100
    , yellow_200
    , yellow_300
    , yellow_400
    , yellow_500
    , yellow_600
    , yellow_700
    , yellow_800
    , yellow_900
    , green_100
    , green_200
    , green_300
    , green_400
    , green_500
    , green_600
    , green_700
    , green_800
    , green_900
    , teal_100
    , teal_200
    , teal_300
    , teal_400
    , teal_500
    , teal_600
    , teal_700
    , teal_800
    , teal_900
    , blue_100
    , blue_200
    , blue_300
    , blue_400
    , blue_500
    , blue_600
    , blue_700
    , blue_800
    , blue_900
    , indigo_100
    , indigo_200
    , indigo_300
    , indigo_400
    , indigo_500
    , indigo_600
    , indigo_700
    , indigo_800
    , indigo_900
    , purple_100
    , purple_200
    , purple_300
    , purple_400
    , purple_500
    , purple_600
    , purple_700
    , purple_800
    , purple_900
    , pink_100
    , pink_200
    , pink_300
    , pink_400
    , pink_500
    , pink_600
    , pink_700
    , pink_800
    , pink_900
    , Opacity
    , opacity0
    , opacity5
    , opacity10
    , opacity20
    , opacity25
    , opacity30
    , opacity40
    , opacity50
    , opacity60
    , opacity70
    , opacity75
    , opacity80
    , opacity90
    , opacity95
    , opacity100
    )

{-|


## This Tailwind Theme

This module contains all colors and opacities from your tailwind configuration.

If you want to extend the set of available colors or opacities, take a look [configuring tailwind].


### Colors

@docs Color
@docs transparent
@docs current
@docs black
@docs white
@docs gray_100
@docs gray_200
@docs gray_300
@docs gray_400
@docs gray_500
@docs gray_600
@docs gray_700
@docs gray_800
@docs gray_900
@docs red_100
@docs red_200
@docs red_300
@docs red_400
@docs red_500
@docs red_600
@docs red_700
@docs red_800
@docs red_900
@docs orange_100
@docs orange_200
@docs orange_300
@docs orange_400
@docs orange_500
@docs orange_600
@docs orange_700
@docs orange_800
@docs orange_900
@docs yellow_100
@docs yellow_200
@docs yellow_300
@docs yellow_400
@docs yellow_500
@docs yellow_600
@docs yellow_700
@docs yellow_800
@docs yellow_900
@docs green_100
@docs green_200
@docs green_300
@docs green_400
@docs green_500
@docs green_600
@docs green_700
@docs green_800
@docs green_900
@docs teal_100
@docs teal_200
@docs teal_300
@docs teal_400
@docs teal_500
@docs teal_600
@docs teal_700
@docs teal_800
@docs teal_900
@docs blue_100
@docs blue_200
@docs blue_300
@docs blue_400
@docs blue_500
@docs blue_600
@docs blue_700
@docs blue_800
@docs blue_900
@docs indigo_100
@docs indigo_200
@docs indigo_300
@docs indigo_400
@docs indigo_500
@docs indigo_600
@docs indigo_700
@docs indigo_800
@docs indigo_900
@docs purple_100
@docs purple_200
@docs purple_300
@docs purple_400
@docs purple_500
@docs purple_600
@docs purple_700
@docs purple_800
@docs purple_900
@docs pink_100
@docs pink_200
@docs pink_300
@docs pink_400
@docs pink_500
@docs pink_600
@docs pink_700
@docs pink_800
@docs pink_900


### Opacities

@docs Opacity
@docs opacity0
@docs opacity5
@docs opacity10
@docs opacity20
@docs opacity25
@docs opacity30
@docs opacity40
@docs opacity50
@docs opacity60
@docs opacity70
@docs opacity75
@docs opacity80
@docs opacity90
@docs opacity95
@docs opacity100

[configuring tailwind]: https://tailwindcss.com/docs/responsive-design

-}

import Tailwind.Color as Tw


{-| The type for tailwind colors.

Values of this type can be found in this module.

They can be used with tailwind utility functions like `bg_color`.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryRgb`.

-}
type alias Color =
    Tw.Color


{-| The type for tailwind opacities.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the `withOpacity` function.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryOpactiyPct`.

-}
type alias Opacity =
    Tw.Opacity


{-| The color `transparent` from the tailwind configuration.

Its value is `transparent`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
transparent : Color
transparent =
    Tw.Color "rgb" "0" "0" "0" (Tw.Opacity "0")


{-| The color `current` from the tailwind configuration.

Its value is `currentColor`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
current : Color
current =
    Tw.Keyword "currentColor"


{-| The color `black` from the tailwind configuration.

Its value is `#000`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
black : Color
black =
    Tw.Color "rgb" "0" "0" "0" Tw.ViaVariable


{-| The color `white` from the tailwind configuration.

Its value is `#fff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
white : Color
white =
    Tw.Color "rgb" "255" "255" "255" Tw.ViaVariable


{-| The color `gray_100` from the tailwind configuration.

Its value is `#f7fafc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_100 : Color
gray_100 =
    Tw.Color "rgb" "247" "250" "252" Tw.ViaVariable


{-| The color `gray_200` from the tailwind configuration.

Its value is `#edf2f7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_200 : Color
gray_200 =
    Tw.Color "rgb" "237" "242" "247" Tw.ViaVariable


{-| The color `gray_300` from the tailwind configuration.

Its value is `#e2e8f0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_300 : Color
gray_300 =
    Tw.Color "rgb" "226" "232" "240" Tw.ViaVariable


{-| The color `gray_400` from the tailwind configuration.

Its value is `#cbd5e0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_400 : Color
gray_400 =
    Tw.Color "rgb" "203" "213" "224" Tw.ViaVariable


{-| The color `gray_500` from the tailwind configuration.

Its value is `#a0aec0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_500 : Color
gray_500 =
    Tw.Color "rgb" "160" "174" "192" Tw.ViaVariable


{-| The color `gray_600` from the tailwind configuration.

Its value is `#718096`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_600 : Color
gray_600 =
    Tw.Color "rgb" "113" "128" "150" Tw.ViaVariable


{-| The color `gray_700` from the tailwind configuration.

Its value is `#4a5568`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_700 : Color
gray_700 =
    Tw.Color "rgb" "74" "85" "104" Tw.ViaVariable


{-| The color `gray_800` from the tailwind configuration.

Its value is `#2d3748`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_800 : Color
gray_800 =
    Tw.Color "rgb" "45" "55" "72" Tw.ViaVariable


{-| The color `gray_900` from the tailwind configuration.

Its value is `#1a202c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_900 : Color
gray_900 =
    Tw.Color "rgb" "26" "32" "44" Tw.ViaVariable


{-| The color `red_100` from the tailwind configuration.

Its value is `#fff5f5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_100 : Color
red_100 =
    Tw.Color "rgb" "255" "245" "245" Tw.ViaVariable


{-| The color `red_200` from the tailwind configuration.

Its value is `#fed7d7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_200 : Color
red_200 =
    Tw.Color "rgb" "254" "215" "215" Tw.ViaVariable


{-| The color `red_300` from the tailwind configuration.

Its value is `#feb2b2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_300 : Color
red_300 =
    Tw.Color "rgb" "254" "178" "178" Tw.ViaVariable


{-| The color `red_400` from the tailwind configuration.

Its value is `#fc8181`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_400 : Color
red_400 =
    Tw.Color "rgb" "252" "129" "129" Tw.ViaVariable


{-| The color `red_500` from the tailwind configuration.

Its value is `#f56565`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_500 : Color
red_500 =
    Tw.Color "rgb" "245" "101" "101" Tw.ViaVariable


{-| The color `red_600` from the tailwind configuration.

Its value is `#e53e3e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_600 : Color
red_600 =
    Tw.Color "rgb" "229" "62" "62" Tw.ViaVariable


{-| The color `red_700` from the tailwind configuration.

Its value is `#c53030`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_700 : Color
red_700 =
    Tw.Color "rgb" "197" "48" "48" Tw.ViaVariable


{-| The color `red_800` from the tailwind configuration.

Its value is `#9b2c2c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_800 : Color
red_800 =
    Tw.Color "rgb" "155" "44" "44" Tw.ViaVariable


{-| The color `red_900` from the tailwind configuration.

Its value is `#742a2a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_900 : Color
red_900 =
    Tw.Color "rgb" "116" "42" "42" Tw.ViaVariable


{-| The color `orange_100` from the tailwind configuration.

Its value is `#fffaf0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_100 : Color
orange_100 =
    Tw.Color "rgb" "255" "250" "240" Tw.ViaVariable


{-| The color `orange_200` from the tailwind configuration.

Its value is `#feebc8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_200 : Color
orange_200 =
    Tw.Color "rgb" "254" "235" "200" Tw.ViaVariable


{-| The color `orange_300` from the tailwind configuration.

Its value is `#fbd38d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_300 : Color
orange_300 =
    Tw.Color "rgb" "251" "211" "141" Tw.ViaVariable


{-| The color `orange_400` from the tailwind configuration.

Its value is `#f6ad55`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_400 : Color
orange_400 =
    Tw.Color "rgb" "246" "173" "85" Tw.ViaVariable


{-| The color `orange_500` from the tailwind configuration.

Its value is `#ed8936`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_500 : Color
orange_500 =
    Tw.Color "rgb" "237" "137" "54" Tw.ViaVariable


{-| The color `orange_600` from the tailwind configuration.

Its value is `#dd6b20`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_600 : Color
orange_600 =
    Tw.Color "rgb" "221" "107" "32" Tw.ViaVariable


{-| The color `orange_700` from the tailwind configuration.

Its value is `#c05621`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_700 : Color
orange_700 =
    Tw.Color "rgb" "192" "86" "33" Tw.ViaVariable


{-| The color `orange_800` from the tailwind configuration.

Its value is `#9c4221`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_800 : Color
orange_800 =
    Tw.Color "rgb" "156" "66" "33" Tw.ViaVariable


{-| The color `orange_900` from the tailwind configuration.

Its value is `#7b341e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_900 : Color
orange_900 =
    Tw.Color "rgb" "123" "52" "30" Tw.ViaVariable


{-| The color `yellow_100` from the tailwind configuration.

Its value is `#fffff0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_100 : Color
yellow_100 =
    Tw.Color "rgb" "255" "255" "240" Tw.ViaVariable


{-| The color `yellow_200` from the tailwind configuration.

Its value is `#fefcbf`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_200 : Color
yellow_200 =
    Tw.Color "rgb" "254" "252" "191" Tw.ViaVariable


{-| The color `yellow_300` from the tailwind configuration.

Its value is `#faf089`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_300 : Color
yellow_300 =
    Tw.Color "rgb" "250" "240" "137" Tw.ViaVariable


{-| The color `yellow_400` from the tailwind configuration.

Its value is `#f6e05e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_400 : Color
yellow_400 =
    Tw.Color "rgb" "246" "224" "94" Tw.ViaVariable


{-| The color `yellow_500` from the tailwind configuration.

Its value is `#ecc94b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_500 : Color
yellow_500 =
    Tw.Color "rgb" "236" "201" "75" Tw.ViaVariable


{-| The color `yellow_600` from the tailwind configuration.

Its value is `#d69e2e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_600 : Color
yellow_600 =
    Tw.Color "rgb" "214" "158" "46" Tw.ViaVariable


{-| The color `yellow_700` from the tailwind configuration.

Its value is `#b7791f`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_700 : Color
yellow_700 =
    Tw.Color "rgb" "183" "121" "31" Tw.ViaVariable


{-| The color `yellow_800` from the tailwind configuration.

Its value is `#975a16`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_800 : Color
yellow_800 =
    Tw.Color "rgb" "151" "90" "22" Tw.ViaVariable


{-| The color `yellow_900` from the tailwind configuration.

Its value is `#744210`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_900 : Color
yellow_900 =
    Tw.Color "rgb" "116" "66" "16" Tw.ViaVariable


{-| The color `green_100` from the tailwind configuration.

Its value is `#f0fff4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_100 : Color
green_100 =
    Tw.Color "rgb" "240" "255" "244" Tw.ViaVariable


{-| The color `green_200` from the tailwind configuration.

Its value is `#c6f6d5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_200 : Color
green_200 =
    Tw.Color "rgb" "198" "246" "213" Tw.ViaVariable


{-| The color `green_300` from the tailwind configuration.

Its value is `#9ae6b4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_300 : Color
green_300 =
    Tw.Color "rgb" "154" "230" "180" Tw.ViaVariable


{-| The color `green_400` from the tailwind configuration.

Its value is `#68d391`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_400 : Color
green_400 =
    Tw.Color "rgb" "104" "211" "145" Tw.ViaVariable


{-| The color `green_500` from the tailwind configuration.

Its value is `#48bb78`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_500 : Color
green_500 =
    Tw.Color "rgb" "72" "187" "120" Tw.ViaVariable


{-| The color `green_600` from the tailwind configuration.

Its value is `#38a169`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_600 : Color
green_600 =
    Tw.Color "rgb" "56" "161" "105" Tw.ViaVariable


{-| The color `green_700` from the tailwind configuration.

Its value is `#2f855a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_700 : Color
green_700 =
    Tw.Color "rgb" "47" "133" "90" Tw.ViaVariable


{-| The color `green_800` from the tailwind configuration.

Its value is `#276749`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_800 : Color
green_800 =
    Tw.Color "rgb" "39" "103" "73" Tw.ViaVariable


{-| The color `green_900` from the tailwind configuration.

Its value is `#22543d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_900 : Color
green_900 =
    Tw.Color "rgb" "34" "84" "61" Tw.ViaVariable


{-| The color `teal_100` from the tailwind configuration.

Its value is `#e6fffa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_100 : Color
teal_100 =
    Tw.Color "rgb" "230" "255" "250" Tw.ViaVariable


{-| The color `teal_200` from the tailwind configuration.

Its value is `#b2f5ea`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_200 : Color
teal_200 =
    Tw.Color "rgb" "178" "245" "234" Tw.ViaVariable


{-| The color `teal_300` from the tailwind configuration.

Its value is `#81e6d9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_300 : Color
teal_300 =
    Tw.Color "rgb" "129" "230" "217" Tw.ViaVariable


{-| The color `teal_400` from the tailwind configuration.

Its value is `#4fd1c5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_400 : Color
teal_400 =
    Tw.Color "rgb" "79" "209" "197" Tw.ViaVariable


{-| The color `teal_500` from the tailwind configuration.

Its value is `#38b2ac`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_500 : Color
teal_500 =
    Tw.Color "rgb" "56" "178" "172" Tw.ViaVariable


{-| The color `teal_600` from the tailwind configuration.

Its value is `#319795`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_600 : Color
teal_600 =
    Tw.Color "rgb" "49" "151" "149" Tw.ViaVariable


{-| The color `teal_700` from the tailwind configuration.

Its value is `#2c7a7b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_700 : Color
teal_700 =
    Tw.Color "rgb" "44" "122" "123" Tw.ViaVariable


{-| The color `teal_800` from the tailwind configuration.

Its value is `#285e61`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_800 : Color
teal_800 =
    Tw.Color "rgb" "40" "94" "97" Tw.ViaVariable


{-| The color `teal_900` from the tailwind configuration.

Its value is `#234e52`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_900 : Color
teal_900 =
    Tw.Color "rgb" "35" "78" "82" Tw.ViaVariable


{-| The color `blue_100` from the tailwind configuration.

Its value is `#ebf8ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_100 : Color
blue_100 =
    Tw.Color "rgb" "235" "248" "255" Tw.ViaVariable


{-| The color `blue_200` from the tailwind configuration.

Its value is `#bee3f8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_200 : Color
blue_200 =
    Tw.Color "rgb" "190" "227" "248" Tw.ViaVariable


{-| The color `blue_300` from the tailwind configuration.

Its value is `#90cdf4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_300 : Color
blue_300 =
    Tw.Color "rgb" "144" "205" "244" Tw.ViaVariable


{-| The color `blue_400` from the tailwind configuration.

Its value is `#63b3ed`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_400 : Color
blue_400 =
    Tw.Color "rgb" "99" "179" "237" Tw.ViaVariable


{-| The color `blue_500` from the tailwind configuration.

Its value is `#4299e1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_500 : Color
blue_500 =
    Tw.Color "rgb" "66" "153" "225" Tw.ViaVariable


{-| The color `blue_600` from the tailwind configuration.

Its value is `#3182ce`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_600 : Color
blue_600 =
    Tw.Color "rgb" "49" "130" "206" Tw.ViaVariable


{-| The color `blue_700` from the tailwind configuration.

Its value is `#2b6cb0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_700 : Color
blue_700 =
    Tw.Color "rgb" "43" "108" "176" Tw.ViaVariable


{-| The color `blue_800` from the tailwind configuration.

Its value is `#2c5282`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_800 : Color
blue_800 =
    Tw.Color "rgb" "44" "82" "130" Tw.ViaVariable


{-| The color `blue_900` from the tailwind configuration.

Its value is `#2a4365`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_900 : Color
blue_900 =
    Tw.Color "rgb" "42" "67" "101" Tw.ViaVariable


{-| The color `indigo_100` from the tailwind configuration.

Its value is `#ebf4ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_100 : Color
indigo_100 =
    Tw.Color "rgb" "235" "244" "255" Tw.ViaVariable


{-| The color `indigo_200` from the tailwind configuration.

Its value is `#c3dafe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_200 : Color
indigo_200 =
    Tw.Color "rgb" "195" "218" "254" Tw.ViaVariable


{-| The color `indigo_300` from the tailwind configuration.

Its value is `#a3bffa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_300 : Color
indigo_300 =
    Tw.Color "rgb" "163" "191" "250" Tw.ViaVariable


{-| The color `indigo_400` from the tailwind configuration.

Its value is `#7f9cf5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_400 : Color
indigo_400 =
    Tw.Color "rgb" "127" "156" "245" Tw.ViaVariable


{-| The color `indigo_500` from the tailwind configuration.

Its value is `#667eea`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_500 : Color
indigo_500 =
    Tw.Color "rgb" "102" "126" "234" Tw.ViaVariable


{-| The color `indigo_600` from the tailwind configuration.

Its value is `#5a67d8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_600 : Color
indigo_600 =
    Tw.Color "rgb" "90" "103" "216" Tw.ViaVariable


{-| The color `indigo_700` from the tailwind configuration.

Its value is `#4c51bf`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_700 : Color
indigo_700 =
    Tw.Color "rgb" "76" "81" "191" Tw.ViaVariable


{-| The color `indigo_800` from the tailwind configuration.

Its value is `#434190`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_800 : Color
indigo_800 =
    Tw.Color "rgb" "67" "65" "144" Tw.ViaVariable


{-| The color `indigo_900` from the tailwind configuration.

Its value is `#3c366b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_900 : Color
indigo_900 =
    Tw.Color "rgb" "60" "54" "107" Tw.ViaVariable


{-| The color `purple_100` from the tailwind configuration.

Its value is `#faf5ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_100 : Color
purple_100 =
    Tw.Color "rgb" "250" "245" "255" Tw.ViaVariable


{-| The color `purple_200` from the tailwind configuration.

Its value is `#e9d8fd`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_200 : Color
purple_200 =
    Tw.Color "rgb" "233" "216" "253" Tw.ViaVariable


{-| The color `purple_300` from the tailwind configuration.

Its value is `#d6bcfa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_300 : Color
purple_300 =
    Tw.Color "rgb" "214" "188" "250" Tw.ViaVariable


{-| The color `purple_400` from the tailwind configuration.

Its value is `#b794f4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_400 : Color
purple_400 =
    Tw.Color "rgb" "183" "148" "244" Tw.ViaVariable


{-| The color `purple_500` from the tailwind configuration.

Its value is `#9f7aea`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_500 : Color
purple_500 =
    Tw.Color "rgb" "159" "122" "234" Tw.ViaVariable


{-| The color `purple_600` from the tailwind configuration.

Its value is `#805ad5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_600 : Color
purple_600 =
    Tw.Color "rgb" "128" "90" "213" Tw.ViaVariable


{-| The color `purple_700` from the tailwind configuration.

Its value is `#6b46c1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_700 : Color
purple_700 =
    Tw.Color "rgb" "107" "70" "193" Tw.ViaVariable


{-| The color `purple_800` from the tailwind configuration.

Its value is `#553c9a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_800 : Color
purple_800 =
    Tw.Color "rgb" "85" "60" "154" Tw.ViaVariable


{-| The color `purple_900` from the tailwind configuration.

Its value is `#44337a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_900 : Color
purple_900 =
    Tw.Color "rgb" "68" "51" "122" Tw.ViaVariable


{-| The color `pink_100` from the tailwind configuration.

Its value is `#fff5f7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_100 : Color
pink_100 =
    Tw.Color "rgb" "255" "245" "247" Tw.ViaVariable


{-| The color `pink_200` from the tailwind configuration.

Its value is `#fed7e2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_200 : Color
pink_200 =
    Tw.Color "rgb" "254" "215" "226" Tw.ViaVariable


{-| The color `pink_300` from the tailwind configuration.

Its value is `#fbb6ce`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_300 : Color
pink_300 =
    Tw.Color "rgb" "251" "182" "206" Tw.ViaVariable


{-| The color `pink_400` from the tailwind configuration.

Its value is `#f687b3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_400 : Color
pink_400 =
    Tw.Color "rgb" "246" "135" "179" Tw.ViaVariable


{-| The color `pink_500` from the tailwind configuration.

Its value is `#ed64a6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_500 : Color
pink_500 =
    Tw.Color "rgb" "237" "100" "166" Tw.ViaVariable


{-| The color `pink_600` from the tailwind configuration.

Its value is `#d53f8c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_600 : Color
pink_600 =
    Tw.Color "rgb" "213" "63" "140" Tw.ViaVariable


{-| The color `pink_700` from the tailwind configuration.

Its value is `#b83280`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_700 : Color
pink_700 =
    Tw.Color "rgb" "184" "50" "128" Tw.ViaVariable


{-| The color `pink_800` from the tailwind configuration.

Its value is `#97266d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_800 : Color
pink_800 =
    Tw.Color "rgb" "151" "38" "109" Tw.ViaVariable


{-| The color `pink_900` from the tailwind configuration.

Its value is `#702459`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_900 : Color
pink_900 =
    Tw.Color "rgb" "112" "36" "89" Tw.ViaVariable


{-| The opacity `opacity0` from the tailwind configuration.

It is set to `0` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity0 : Opacity
opacity0 =
    Tw.Opacity "0"


{-| The opacity `opacity5` from the tailwind configuration.

It is set to `0.05` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity5 : Opacity
opacity5 =
    Tw.Opacity "0.05"


{-| The opacity `opacity10` from the tailwind configuration.

It is set to `0.1` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity10 : Opacity
opacity10 =
    Tw.Opacity "0.1"


{-| The opacity `opacity20` from the tailwind configuration.

It is set to `0.2` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity20 : Opacity
opacity20 =
    Tw.Opacity "0.2"


{-| The opacity `opacity25` from the tailwind configuration.

It is set to `0.25` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity25 : Opacity
opacity25 =
    Tw.Opacity "0.25"


{-| The opacity `opacity30` from the tailwind configuration.

It is set to `0.3` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity30 : Opacity
opacity30 =
    Tw.Opacity "0.3"


{-| The opacity `opacity40` from the tailwind configuration.

It is set to `0.4` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity40 : Opacity
opacity40 =
    Tw.Opacity "0.4"


{-| The opacity `opacity50` from the tailwind configuration.

It is set to `0.5` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity50 : Opacity
opacity50 =
    Tw.Opacity "0.5"


{-| The opacity `opacity60` from the tailwind configuration.

It is set to `0.6` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity60 : Opacity
opacity60 =
    Tw.Opacity "0.6"


{-| The opacity `opacity70` from the tailwind configuration.

It is set to `0.7` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity70 : Opacity
opacity70 =
    Tw.Opacity "0.7"


{-| The opacity `opacity75` from the tailwind configuration.

It is set to `0.75` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity75 : Opacity
opacity75 =
    Tw.Opacity "0.75"


{-| The opacity `opacity80` from the tailwind configuration.

It is set to `0.8` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity80 : Opacity
opacity80 =
    Tw.Opacity "0.8"


{-| The opacity `opacity90` from the tailwind configuration.

It is set to `0.9` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity90 : Opacity
opacity90 =
    Tw.Opacity "0.9"


{-| The opacity `opacity95` from the tailwind configuration.

It is set to `0.95` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity95 : Opacity
opacity95 =
    Tw.Opacity "0.95"


{-| The opacity `opacity100` from the tailwind configuration.

It is set to `1` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity100 : Opacity
opacity100 =
    Tw.Opacity "1"
