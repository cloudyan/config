let presets = [];
let plugins = [];

// vue config
// presets = ['@vue/app'];
// plugins = [
//   [
//     'component',
//     {
//       libraryName: 'mint-ui',
//       style: true,
//     },
//   ],
//   [
//     'import',
//     {
//       libraryName: 'vant',
//       libraryDirectory: 'es',
//       style: true,
//     },
//     'vant',
//   ],
// ];

// if (process.env.NODE_ENV !== 'development') {
//   plugins.push([
//     'transform-remove-console',
//     { 'exclude': [ 'error', 'warn'] },
//   ])
// }

// 用于 debug 调试
if (!process.env.NODE_ENV) {
  presets = [
    // @babel/core
    // @babel/preset-env
    [
      '@babel/preset-env',
      {
        targets: {
          node: 'current',
          esmodules: true,
        },
      },
    ],
  ];
  // babel-plugin-add-module-exports
  plugins = ['add-module-exports'];
}

module.exports = {
  presets,
  plugins,
};
