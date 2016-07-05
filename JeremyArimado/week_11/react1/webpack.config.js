const HtmlWebpackPlugin = require('html-webpack-plugin');
const HtmlWebPackPluginConfig = new HtmlWebpackPlugin({
    template: __dirname + "/app/index.html",
    filename: "index.html",
    inject: "body" // can put body or head in this (where your thing is going to be injected)
});

module.exports = {
    entry: ['./app/index.js'],
    output: {
        path: __dirname + "/dist",
        filename: "index_bundle.js"
    },
    module: {
        loaders: [
            { test: /\.jsx?/, exclude: /node_modules/, loader: "babel-loader" }
        ]
    },
    plugins: [
        HtmlWebPackPluginConfig
    ],
};
