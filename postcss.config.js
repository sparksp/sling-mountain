const process = require('process');
const elmTailwind = require('postcss-elm-tailwind')(
    { elmFile: 'src/Html/Tailwind.elm'
    , elmModuleName: 'Html.Tailwind'
    , formats:
        { svg:
            { elmFile: 'src/Svg/Tailwind.elm'
            , elmModuleName: 'Svg.Tailwind'
            }
        }
    }
);

module.exports = {
    plugins: [
        require('tailwindcss')('tailwind.config.js'),
        ...(process.env.NODE_ENV === 'production' ? [] : [elmTailwind]),
        require('autoprefixer')
    ]
};
