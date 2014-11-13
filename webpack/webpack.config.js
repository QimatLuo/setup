const HtmlWebpackPlugin = require('html-webpack-plugin')
const path = require('path')

let entry = {
	app: [
		'./src/main.js',
	]
}

let output = {
	filename: 'bundle.js',
	path: path.resolve(__dirname, 'dist'),
}

let plugins = [
	new HtmlWebpackPlugin({
		template: './src/index.html',
		filename: 'index.html',
	}),
]

module.exports = {
	entry,
	output,
	plugins,
}
