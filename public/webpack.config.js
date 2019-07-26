const path = require('path')

module.exports = {
  entry: './index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },
  resolve: {
    alias: {
      Container: path.resolve(__dirname, 'src/components/container'),
      Presentational: path.resolve(__dirname, 'src/components/presentational'),
      Styles: path.resolve(__dirname, 'src/styles'),
      Helper: path.resolve(__dirname, 'src/helpers'),
      Api: path.resolve(__dirname, 'src/api')
    }
  },
  module: {
    rules: [
      { test: /\.css$/, use: ['style-loader', 'css-loader'] },
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: 'babel-loader'
      }
    ]
  }
};
