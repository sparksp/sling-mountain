module Tailwind.Theme exposing
    ( Color
    , transparent
    , current
    , black
    , white
    , gray_50
    , gray_100
    , gray_200
    , gray_300
    , gray_400
    , gray_500
    , gray_600
    , gray_700
    , gray_800
    , gray_900
    , gray_950
    , red_50
    , red_100
    , red_200
    , red_300
    , red_400
    , red_500
    , red_600
    , red_700
    , red_800
    , red_900
    , red_950
    , orange_50
    , orange_100
    , orange_200
    , orange_300
    , orange_400
    , orange_500
    , orange_600
    , orange_700
    , orange_800
    , orange_900
    , orange_950
    , yellow_50
    , yellow_100
    , yellow_200
    , yellow_300
    , yellow_400
    , yellow_500
    , yellow_600
    , yellow_700
    , yellow_800
    , yellow_900
    , yellow_950
    , green_50
    , green_100
    , green_200
    , green_300
    , green_400
    , green_500
    , green_600
    , green_700
    , green_800
    , green_900
    , green_950
    , teal_50
    , teal_100
    , teal_200
    , teal_300
    , teal_400
    , teal_500
    , teal_600
    , teal_700
    , teal_800
    , teal_900
    , teal_950
    , blue_50
    , blue_100
    , blue_200
    , blue_300
    , blue_400
    , blue_500
    , blue_600
    , blue_700
    , blue_800
    , blue_900
    , blue_950
    , indigo_50
    , indigo_100
    , indigo_200
    , indigo_300
    , indigo_400
    , indigo_500
    , indigo_600
    , indigo_700
    , indigo_800
    , indigo_900
    , indigo_950
    , purple_50
    , purple_100
    , purple_200
    , purple_300
    , purple_400
    , purple_500
    , purple_600
    , purple_700
    , purple_800
    , purple_900
    , purple_950
    , pink_50
    , pink_100
    , pink_200
    , pink_300
    , pink_400
    , pink_500
    , pink_600
    , pink_700
    , pink_800
    , pink_900
    , pink_950
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
@docs gray_50
@docs gray_100
@docs gray_200
@docs gray_300
@docs gray_400
@docs gray_500
@docs gray_600
@docs gray_700
@docs gray_800
@docs gray_900
@docs gray_950
@docs red_50
@docs red_100
@docs red_200
@docs red_300
@docs red_400
@docs red_500
@docs red_600
@docs red_700
@docs red_800
@docs red_900
@docs red_950
@docs orange_50
@docs orange_100
@docs orange_200
@docs orange_300
@docs orange_400
@docs orange_500
@docs orange_600
@docs orange_700
@docs orange_800
@docs orange_900
@docs orange_950
@docs yellow_50
@docs yellow_100
@docs yellow_200
@docs yellow_300
@docs yellow_400
@docs yellow_500
@docs yellow_600
@docs yellow_700
@docs yellow_800
@docs yellow_900
@docs yellow_950
@docs green_50
@docs green_100
@docs green_200
@docs green_300
@docs green_400
@docs green_500
@docs green_600
@docs green_700
@docs green_800
@docs green_900
@docs green_950
@docs teal_50
@docs teal_100
@docs teal_200
@docs teal_300
@docs teal_400
@docs teal_500
@docs teal_600
@docs teal_700
@docs teal_800
@docs teal_900
@docs teal_950
@docs blue_50
@docs blue_100
@docs blue_200
@docs blue_300
@docs blue_400
@docs blue_500
@docs blue_600
@docs blue_700
@docs blue_800
@docs blue_900
@docs blue_950
@docs indigo_50
@docs indigo_100
@docs indigo_200
@docs indigo_300
@docs indigo_400
@docs indigo_500
@docs indigo_600
@docs indigo_700
@docs indigo_800
@docs indigo_900
@docs indigo_950
@docs purple_50
@docs purple_100
@docs purple_200
@docs purple_300
@docs purple_400
@docs purple_500
@docs purple_600
@docs purple_700
@docs purple_800
@docs purple_900
@docs purple_950
@docs pink_50
@docs pink_100
@docs pink_200
@docs pink_300
@docs pink_400
@docs pink_500
@docs pink_600
@docs pink_700
@docs pink_800
@docs pink_900
@docs pink_950


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


{-| The color `gray_50` from the tailwind configuration.

Its value is `#f9fafb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_50 : Color
gray_50 =
    Tw.Color "rgb" "249" "250" "251" Tw.ViaVariable


{-| The color `gray_100` from the tailwind configuration.

Its value is `#f3f4f6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_100 : Color
gray_100 =
    Tw.Color "rgb" "243" "244" "246" Tw.ViaVariable


{-| The color `gray_200` from the tailwind configuration.

Its value is `#e5e7eb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_200 : Color
gray_200 =
    Tw.Color "rgb" "229" "231" "235" Tw.ViaVariable


{-| The color `gray_300` from the tailwind configuration.

Its value is `#d1d5db`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_300 : Color
gray_300 =
    Tw.Color "rgb" "209" "213" "219" Tw.ViaVariable


{-| The color `gray_400` from the tailwind configuration.

Its value is `#9ca3af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_400 : Color
gray_400 =
    Tw.Color "rgb" "156" "163" "175" Tw.ViaVariable


{-| The color `gray_500` from the tailwind configuration.

Its value is `#6b7280`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_500 : Color
gray_500 =
    Tw.Color "rgb" "107" "114" "128" Tw.ViaVariable


{-| The color `gray_600` from the tailwind configuration.

Its value is `#4b5563`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_600 : Color
gray_600 =
    Tw.Color "rgb" "75" "85" "99" Tw.ViaVariable


{-| The color `gray_700` from the tailwind configuration.

Its value is `#374151`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_700 : Color
gray_700 =
    Tw.Color "rgb" "55" "65" "81" Tw.ViaVariable


{-| The color `gray_800` from the tailwind configuration.

Its value is `#1f2937`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_800 : Color
gray_800 =
    Tw.Color "rgb" "31" "41" "55" Tw.ViaVariable


{-| The color `gray_900` from the tailwind configuration.

Its value is `#111827`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_900 : Color
gray_900 =
    Tw.Color "rgb" "17" "24" "39" Tw.ViaVariable


{-| The color `gray_950` from the tailwind configuration.

Its value is `#030712`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_950 : Color
gray_950 =
    Tw.Color "rgb" "3" "7" "18" Tw.ViaVariable


{-| The color `red_50` from the tailwind configuration.

Its value is `#fef2f2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_50 : Color
red_50 =
    Tw.Color "rgb" "254" "242" "242" Tw.ViaVariable


{-| The color `red_100` from the tailwind configuration.

Its value is `#fee2e2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_100 : Color
red_100 =
    Tw.Color "rgb" "254" "226" "226" Tw.ViaVariable


{-| The color `red_200` from the tailwind configuration.

Its value is `#fecaca`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_200 : Color
red_200 =
    Tw.Color "rgb" "254" "202" "202" Tw.ViaVariable


{-| The color `red_300` from the tailwind configuration.

Its value is `#fca5a5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_300 : Color
red_300 =
    Tw.Color "rgb" "252" "165" "165" Tw.ViaVariable


{-| The color `red_400` from the tailwind configuration.

Its value is `#f87171`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_400 : Color
red_400 =
    Tw.Color "rgb" "248" "113" "113" Tw.ViaVariable


{-| The color `red_500` from the tailwind configuration.

Its value is `#ef4444`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_500 : Color
red_500 =
    Tw.Color "rgb" "239" "68" "68" Tw.ViaVariable


{-| The color `red_600` from the tailwind configuration.

Its value is `#dc2626`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_600 : Color
red_600 =
    Tw.Color "rgb" "220" "38" "38" Tw.ViaVariable


{-| The color `red_700` from the tailwind configuration.

Its value is `#b91c1c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_700 : Color
red_700 =
    Tw.Color "rgb" "185" "28" "28" Tw.ViaVariable


{-| The color `red_800` from the tailwind configuration.

Its value is `#991b1b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_800 : Color
red_800 =
    Tw.Color "rgb" "153" "27" "27" Tw.ViaVariable


{-| The color `red_900` from the tailwind configuration.

Its value is `#7f1d1d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_900 : Color
red_900 =
    Tw.Color "rgb" "127" "29" "29" Tw.ViaVariable


{-| The color `red_950` from the tailwind configuration.

Its value is `#450a0a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_950 : Color
red_950 =
    Tw.Color "rgb" "69" "10" "10" Tw.ViaVariable


{-| The color `orange_50` from the tailwind configuration.

Its value is `#fff7ed`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_50 : Color
orange_50 =
    Tw.Color "rgb" "255" "247" "237" Tw.ViaVariable


{-| The color `orange_100` from the tailwind configuration.

Its value is `#ffedd5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_100 : Color
orange_100 =
    Tw.Color "rgb" "255" "237" "213" Tw.ViaVariable


{-| The color `orange_200` from the tailwind configuration.

Its value is `#fed7aa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_200 : Color
orange_200 =
    Tw.Color "rgb" "254" "215" "170" Tw.ViaVariable


{-| The color `orange_300` from the tailwind configuration.

Its value is `#fdba74`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_300 : Color
orange_300 =
    Tw.Color "rgb" "253" "186" "116" Tw.ViaVariable


{-| The color `orange_400` from the tailwind configuration.

Its value is `#fb923c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_400 : Color
orange_400 =
    Tw.Color "rgb" "251" "146" "60" Tw.ViaVariable


{-| The color `orange_500` from the tailwind configuration.

Its value is `#f97316`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_500 : Color
orange_500 =
    Tw.Color "rgb" "249" "115" "22" Tw.ViaVariable


{-| The color `orange_600` from the tailwind configuration.

Its value is `#ea580c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_600 : Color
orange_600 =
    Tw.Color "rgb" "234" "88" "12" Tw.ViaVariable


{-| The color `orange_700` from the tailwind configuration.

Its value is `#c2410c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_700 : Color
orange_700 =
    Tw.Color "rgb" "194" "65" "12" Tw.ViaVariable


{-| The color `orange_800` from the tailwind configuration.

Its value is `#9a3412`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_800 : Color
orange_800 =
    Tw.Color "rgb" "154" "52" "18" Tw.ViaVariable


{-| The color `orange_900` from the tailwind configuration.

Its value is `#7c2d12`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_900 : Color
orange_900 =
    Tw.Color "rgb" "124" "45" "18" Tw.ViaVariable


{-| The color `orange_950` from the tailwind configuration.

Its value is `#431407`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_950 : Color
orange_950 =
    Tw.Color "rgb" "67" "20" "7" Tw.ViaVariable


{-| The color `yellow_50` from the tailwind configuration.

Its value is `#fefce8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_50 : Color
yellow_50 =
    Tw.Color "rgb" "254" "252" "232" Tw.ViaVariable


{-| The color `yellow_100` from the tailwind configuration.

Its value is `#fef9c3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_100 : Color
yellow_100 =
    Tw.Color "rgb" "254" "249" "195" Tw.ViaVariable


{-| The color `yellow_200` from the tailwind configuration.

Its value is `#fef08a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_200 : Color
yellow_200 =
    Tw.Color "rgb" "254" "240" "138" Tw.ViaVariable


{-| The color `yellow_300` from the tailwind configuration.

Its value is `#fde047`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_300 : Color
yellow_300 =
    Tw.Color "rgb" "253" "224" "71" Tw.ViaVariable


{-| The color `yellow_400` from the tailwind configuration.

Its value is `#facc15`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_400 : Color
yellow_400 =
    Tw.Color "rgb" "250" "204" "21" Tw.ViaVariable


{-| The color `yellow_500` from the tailwind configuration.

Its value is `#eab308`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_500 : Color
yellow_500 =
    Tw.Color "rgb" "234" "179" "8" Tw.ViaVariable


{-| The color `yellow_600` from the tailwind configuration.

Its value is `#ca8a04`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_600 : Color
yellow_600 =
    Tw.Color "rgb" "202" "138" "4" Tw.ViaVariable


{-| The color `yellow_700` from the tailwind configuration.

Its value is `#a16207`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_700 : Color
yellow_700 =
    Tw.Color "rgb" "161" "98" "7" Tw.ViaVariable


{-| The color `yellow_800` from the tailwind configuration.

Its value is `#854d0e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_800 : Color
yellow_800 =
    Tw.Color "rgb" "133" "77" "14" Tw.ViaVariable


{-| The color `yellow_900` from the tailwind configuration.

Its value is `#713f12`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_900 : Color
yellow_900 =
    Tw.Color "rgb" "113" "63" "18" Tw.ViaVariable


{-| The color `yellow_950` from the tailwind configuration.

Its value is `#422006`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_950 : Color
yellow_950 =
    Tw.Color "rgb" "66" "32" "6" Tw.ViaVariable


{-| The color `green_50` from the tailwind configuration.

Its value is `#f0fdf4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_50 : Color
green_50 =
    Tw.Color "rgb" "240" "253" "244" Tw.ViaVariable


{-| The color `green_100` from the tailwind configuration.

Its value is `#dcfce7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_100 : Color
green_100 =
    Tw.Color "rgb" "220" "252" "231" Tw.ViaVariable


{-| The color `green_200` from the tailwind configuration.

Its value is `#bbf7d0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_200 : Color
green_200 =
    Tw.Color "rgb" "187" "247" "208" Tw.ViaVariable


{-| The color `green_300` from the tailwind configuration.

Its value is `#86efac`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_300 : Color
green_300 =
    Tw.Color "rgb" "134" "239" "172" Tw.ViaVariable


{-| The color `green_400` from the tailwind configuration.

Its value is `#4ade80`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_400 : Color
green_400 =
    Tw.Color "rgb" "74" "222" "128" Tw.ViaVariable


{-| The color `green_500` from the tailwind configuration.

Its value is `#22c55e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_500 : Color
green_500 =
    Tw.Color "rgb" "34" "197" "94" Tw.ViaVariable


{-| The color `green_600` from the tailwind configuration.

Its value is `#16a34a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_600 : Color
green_600 =
    Tw.Color "rgb" "22" "163" "74" Tw.ViaVariable


{-| The color `green_700` from the tailwind configuration.

Its value is `#15803d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_700 : Color
green_700 =
    Tw.Color "rgb" "21" "128" "61" Tw.ViaVariable


{-| The color `green_800` from the tailwind configuration.

Its value is `#166534`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_800 : Color
green_800 =
    Tw.Color "rgb" "22" "101" "52" Tw.ViaVariable


{-| The color `green_900` from the tailwind configuration.

Its value is `#14532d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_900 : Color
green_900 =
    Tw.Color "rgb" "20" "83" "45" Tw.ViaVariable


{-| The color `green_950` from the tailwind configuration.

Its value is `#052e16`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_950 : Color
green_950 =
    Tw.Color "rgb" "5" "46" "22" Tw.ViaVariable


{-| The color `teal_50` from the tailwind configuration.

Its value is `#f0fdfa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_50 : Color
teal_50 =
    Tw.Color "rgb" "240" "253" "250" Tw.ViaVariable


{-| The color `teal_100` from the tailwind configuration.

Its value is `#ccfbf1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_100 : Color
teal_100 =
    Tw.Color "rgb" "204" "251" "241" Tw.ViaVariable


{-| The color `teal_200` from the tailwind configuration.

Its value is `#99f6e4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_200 : Color
teal_200 =
    Tw.Color "rgb" "153" "246" "228" Tw.ViaVariable


{-| The color `teal_300` from the tailwind configuration.

Its value is `#5eead4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_300 : Color
teal_300 =
    Tw.Color "rgb" "94" "234" "212" Tw.ViaVariable


{-| The color `teal_400` from the tailwind configuration.

Its value is `#2dd4bf`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_400 : Color
teal_400 =
    Tw.Color "rgb" "45" "212" "191" Tw.ViaVariable


{-| The color `teal_500` from the tailwind configuration.

Its value is `#14b8a6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_500 : Color
teal_500 =
    Tw.Color "rgb" "20" "184" "166" Tw.ViaVariable


{-| The color `teal_600` from the tailwind configuration.

Its value is `#0d9488`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_600 : Color
teal_600 =
    Tw.Color "rgb" "13" "148" "136" Tw.ViaVariable


{-| The color `teal_700` from the tailwind configuration.

Its value is `#0f766e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_700 : Color
teal_700 =
    Tw.Color "rgb" "15" "118" "110" Tw.ViaVariable


{-| The color `teal_800` from the tailwind configuration.

Its value is `#115e59`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_800 : Color
teal_800 =
    Tw.Color "rgb" "17" "94" "89" Tw.ViaVariable


{-| The color `teal_900` from the tailwind configuration.

Its value is `#134e4a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_900 : Color
teal_900 =
    Tw.Color "rgb" "19" "78" "74" Tw.ViaVariable


{-| The color `teal_950` from the tailwind configuration.

Its value is `#042f2e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_950 : Color
teal_950 =
    Tw.Color "rgb" "4" "47" "46" Tw.ViaVariable


{-| The color `blue_50` from the tailwind configuration.

Its value is `#eff6ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_50 : Color
blue_50 =
    Tw.Color "rgb" "239" "246" "255" Tw.ViaVariable


{-| The color `blue_100` from the tailwind configuration.

Its value is `#dbeafe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_100 : Color
blue_100 =
    Tw.Color "rgb" "219" "234" "254" Tw.ViaVariable


{-| The color `blue_200` from the tailwind configuration.

Its value is `#bfdbfe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_200 : Color
blue_200 =
    Tw.Color "rgb" "191" "219" "254" Tw.ViaVariable


{-| The color `blue_300` from the tailwind configuration.

Its value is `#93c5fd`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_300 : Color
blue_300 =
    Tw.Color "rgb" "147" "197" "253" Tw.ViaVariable


{-| The color `blue_400` from the tailwind configuration.

Its value is `#60a5fa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_400 : Color
blue_400 =
    Tw.Color "rgb" "96" "165" "250" Tw.ViaVariable


{-| The color `blue_500` from the tailwind configuration.

Its value is `#3b82f6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_500 : Color
blue_500 =
    Tw.Color "rgb" "59" "130" "246" Tw.ViaVariable


{-| The color `blue_600` from the tailwind configuration.

Its value is `#2563eb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_600 : Color
blue_600 =
    Tw.Color "rgb" "37" "99" "235" Tw.ViaVariable


{-| The color `blue_700` from the tailwind configuration.

Its value is `#1d4ed8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_700 : Color
blue_700 =
    Tw.Color "rgb" "29" "78" "216" Tw.ViaVariable


{-| The color `blue_800` from the tailwind configuration.

Its value is `#1e40af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_800 : Color
blue_800 =
    Tw.Color "rgb" "30" "64" "175" Tw.ViaVariable


{-| The color `blue_900` from the tailwind configuration.

Its value is `#1e3a8a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_900 : Color
blue_900 =
    Tw.Color "rgb" "30" "58" "138" Tw.ViaVariable


{-| The color `blue_950` from the tailwind configuration.

Its value is `#172554`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_950 : Color
blue_950 =
    Tw.Color "rgb" "23" "37" "84" Tw.ViaVariable


{-| The color `indigo_50` from the tailwind configuration.

Its value is `#eef2ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_50 : Color
indigo_50 =
    Tw.Color "rgb" "238" "242" "255" Tw.ViaVariable


{-| The color `indigo_100` from the tailwind configuration.

Its value is `#e0e7ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_100 : Color
indigo_100 =
    Tw.Color "rgb" "224" "231" "255" Tw.ViaVariable


{-| The color `indigo_200` from the tailwind configuration.

Its value is `#c7d2fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_200 : Color
indigo_200 =
    Tw.Color "rgb" "199" "210" "254" Tw.ViaVariable


{-| The color `indigo_300` from the tailwind configuration.

Its value is `#a5b4fc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_300 : Color
indigo_300 =
    Tw.Color "rgb" "165" "180" "252" Tw.ViaVariable


{-| The color `indigo_400` from the tailwind configuration.

Its value is `#818cf8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_400 : Color
indigo_400 =
    Tw.Color "rgb" "129" "140" "248" Tw.ViaVariable


{-| The color `indigo_500` from the tailwind configuration.

Its value is `#6366f1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_500 : Color
indigo_500 =
    Tw.Color "rgb" "99" "102" "241" Tw.ViaVariable


{-| The color `indigo_600` from the tailwind configuration.

Its value is `#4f46e5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_600 : Color
indigo_600 =
    Tw.Color "rgb" "79" "70" "229" Tw.ViaVariable


{-| The color `indigo_700` from the tailwind configuration.

Its value is `#4338ca`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_700 : Color
indigo_700 =
    Tw.Color "rgb" "67" "56" "202" Tw.ViaVariable


{-| The color `indigo_800` from the tailwind configuration.

Its value is `#3730a3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_800 : Color
indigo_800 =
    Tw.Color "rgb" "55" "48" "163" Tw.ViaVariable


{-| The color `indigo_900` from the tailwind configuration.

Its value is `#312e81`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_900 : Color
indigo_900 =
    Tw.Color "rgb" "49" "46" "129" Tw.ViaVariable


{-| The color `indigo_950` from the tailwind configuration.

Its value is `#1e1b4b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_950 : Color
indigo_950 =
    Tw.Color "rgb" "30" "27" "75" Tw.ViaVariable


{-| The color `purple_50` from the tailwind configuration.

Its value is `#faf5ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_50 : Color
purple_50 =
    Tw.Color "rgb" "250" "245" "255" Tw.ViaVariable


{-| The color `purple_100` from the tailwind configuration.

Its value is `#f3e8ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_100 : Color
purple_100 =
    Tw.Color "rgb" "243" "232" "255" Tw.ViaVariable


{-| The color `purple_200` from the tailwind configuration.

Its value is `#e9d5ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_200 : Color
purple_200 =
    Tw.Color "rgb" "233" "213" "255" Tw.ViaVariable


{-| The color `purple_300` from the tailwind configuration.

Its value is `#d8b4fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_300 : Color
purple_300 =
    Tw.Color "rgb" "216" "180" "254" Tw.ViaVariable


{-| The color `purple_400` from the tailwind configuration.

Its value is `#c084fc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_400 : Color
purple_400 =
    Tw.Color "rgb" "192" "132" "252" Tw.ViaVariable


{-| The color `purple_500` from the tailwind configuration.

Its value is `#a855f7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_500 : Color
purple_500 =
    Tw.Color "rgb" "168" "85" "247" Tw.ViaVariable


{-| The color `purple_600` from the tailwind configuration.

Its value is `#9333ea`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_600 : Color
purple_600 =
    Tw.Color "rgb" "147" "51" "234" Tw.ViaVariable


{-| The color `purple_700` from the tailwind configuration.

Its value is `#7e22ce`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_700 : Color
purple_700 =
    Tw.Color "rgb" "126" "34" "206" Tw.ViaVariable


{-| The color `purple_800` from the tailwind configuration.

Its value is `#6b21a8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_800 : Color
purple_800 =
    Tw.Color "rgb" "107" "33" "168" Tw.ViaVariable


{-| The color `purple_900` from the tailwind configuration.

Its value is `#581c87`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_900 : Color
purple_900 =
    Tw.Color "rgb" "88" "28" "135" Tw.ViaVariable


{-| The color `purple_950` from the tailwind configuration.

Its value is `#3b0764`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_950 : Color
purple_950 =
    Tw.Color "rgb" "59" "7" "100" Tw.ViaVariable


{-| The color `pink_50` from the tailwind configuration.

Its value is `#fdf2f8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_50 : Color
pink_50 =
    Tw.Color "rgb" "253" "242" "248" Tw.ViaVariable


{-| The color `pink_100` from the tailwind configuration.

Its value is `#fce7f3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_100 : Color
pink_100 =
    Tw.Color "rgb" "252" "231" "243" Tw.ViaVariable


{-| The color `pink_200` from the tailwind configuration.

Its value is `#fbcfe8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_200 : Color
pink_200 =
    Tw.Color "rgb" "251" "207" "232" Tw.ViaVariable


{-| The color `pink_300` from the tailwind configuration.

Its value is `#f9a8d4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_300 : Color
pink_300 =
    Tw.Color "rgb" "249" "168" "212" Tw.ViaVariable


{-| The color `pink_400` from the tailwind configuration.

Its value is `#f472b6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_400 : Color
pink_400 =
    Tw.Color "rgb" "244" "114" "182" Tw.ViaVariable


{-| The color `pink_500` from the tailwind configuration.

Its value is `#ec4899`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_500 : Color
pink_500 =
    Tw.Color "rgb" "236" "72" "153" Tw.ViaVariable


{-| The color `pink_600` from the tailwind configuration.

Its value is `#db2777`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_600 : Color
pink_600 =
    Tw.Color "rgb" "219" "39" "119" Tw.ViaVariable


{-| The color `pink_700` from the tailwind configuration.

Its value is `#be185d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_700 : Color
pink_700 =
    Tw.Color "rgb" "190" "24" "93" Tw.ViaVariable


{-| The color `pink_800` from the tailwind configuration.

Its value is `#9d174d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_800 : Color
pink_800 =
    Tw.Color "rgb" "157" "23" "77" Tw.ViaVariable


{-| The color `pink_900` from the tailwind configuration.

Its value is `#831843`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_900 : Color
pink_900 =
    Tw.Color "rgb" "131" "24" "67" Tw.ViaVariable


{-| The color `pink_950` from the tailwind configuration.

Its value is `#500724`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_950 : Color
pink_950 =
    Tw.Color "rgb" "80" "7" "36" Tw.ViaVariable


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
