module.exports = {
    presets: [
        '@vue/app'
    ],
    "presets": ["@babel/preset-env"],
    "plugins": ["@babel/plugin-transform-runtime",
        "@babel/plugin-proposal-object-rest-spread",
        "@babel/plugin-proposal-class-properties",
        ["component",
            {
                "libraryName": "mint-ui",
                "style": true
            }
        ]]
}
