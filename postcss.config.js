const process = require('process');
const elmTailwind = require('postcss-elm-tailwind')(
    { elmFile: 'src/Html/Tailwind.elm'
    , elmModuleName: 'Html.Tailwind'
    , formats:
        { string:
            { elmFile: "src/Tailwind.elm"
            , elmModuleName: "Tailwind"
            }
        }
    , nameStyle: 'camel'
    }
);

module.exports = {
    plugins: [
        require('tailwindcss')('tailwind.config.js'),
        ...(process.env.NODE_ENV === 'production' ? [] : [elmTailwind]),
        require('autoprefixer')
    ]
};
