const path = require('path');

module.exports = {
    module: {
        rules: [
            {
                test: /\.imba$/,
                loader: 'imba/loader',
            },{
                test: /\.s[ac]ss$/i,
                use: [
                    // Creates `style` nodes from JS strings
                    'style-loader',
                    // Translates CSS into CommonJS
                    'css-loader',
                    // Compiles Sass to CSS
                    'sass-loader',
                ],
            },
        ]
    },
    resolve: {
        extensions: [".imba", ".js", ".json", ".css", ".scss", "sass"]
    },
    entry: "./src/app.imba",
    output: { path: __dirname + '/public', filename: "index.js" }
}