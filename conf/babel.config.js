// ~/babel.config.js

/**

此配置可结合 vscode 右键 `Run Code` 执行选中的 js代码
需要如下配置 vscode 的 `code-runner.executorMap` 选项

"code-runner.executorMap": {
  // babel 6
  // 需要全局安装 `npm i -g babel-cli babel-preset-stage-0`
  // "javascript": "babel-node --presets=stage-0",
  // babel 7
  // 需要全局安装 npm i -g @babel/core @babel/node
  "javascript": "babel-node --config-file=~/babel.config.js", // https://babeljs.io/docs/en/babel-node
  // "javascript": "babel-node --presets=@babel/preset-env",
  "md": "babel-node",
  "vue": "babel-node"
},

*/

module.exports = {
  // 'rootMode': 'upward', // 针对 monorepo 配置
  // 允许这两个子 package 加载 babelrc 相对配置
  // babelrcRoots: ['.', './src'],
  presets: [
    [
      '@babel/preset-env',
      {
        targets: {
          // node: 'current',
          // esmodules: false,

        }
      }
    ]
  ],
  plugins: [
    '@babel/plugin-syntax-dynamic-import'
  ],
}
