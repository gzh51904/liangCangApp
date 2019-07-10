module.exports = {
    presets: [
        '@vue/app'
    ],
    "plugins": [
        ["component",
            [
                {
                    "libraryName": "mint-ui",
                    "style": true,
                    "libraryName": "element-ui",
                    "styleLibraryName": "theme-chalk"
                }
            ]
        ]
    ]
}
