const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const htmlWebpackPlugin = new HtmlWebpackPlugin({
    // template:path.join(__dirname,'./src/index.html') ,
    template:'./src/index.html',
    filename: 'index.html'
}) 


module.exports = {
    mode:'development',
    // 将文件index.html放进内存
    plugins:[
        htmlWebpackPlugin
    ],
    // 最新的babel配置
    module: {
        rules:[
            {test: /\.js|jsx$/, use: 'babel-loader',
             exclude: /(node_modules | bower-components)/,
             use: {
                loader: 'babel-loader',
                options: {
                  presets: ['@babel/preset-env',"@babel/preset-react"],
                //   plugins:["transform-runtime"]
                }
              }
             },
             {
                test: /\.css$/,
                use: [
                    {
                        loader:'style-loader'
                    },
                    {
                        loader:'css-loader',
                        options: {
                            modules: true,
                            importLoaders: 1,
                            localIdentName: '[name]_[local]_[hash:base64]',
                            sourceMap: true,
                            minimize: true
                          }
                    }
                ] ,
                
             }


        ]
    },
    // 省略文件文件后缀名
    resolve: {
        extensions: ['.js', '.jsx', '.json']
    }
}