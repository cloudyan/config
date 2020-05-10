// https://stylelint.io/user-guide/configuration/#loading-the-configuration-object
// https://github.com/stylelint/stylelint#getting-started
// https://stylelint.io/user-guide/rules/ 规则
// 貌似只有从新打开项目才会生效
// https://stylelint.io/
// https://stylelint.docschina.org/demo/
module.exports = {
  // 扩展配置
  // https://github.com/stylelint/stylelint-config-standard
  //
  // https://github.com/prettier/stylelint-config-prettier
  // 关闭所有不必要或可能与Prettier冲突的规则。这使您可以使用自己喜欢的可共享配置，而不会在使用Prettier时让其风格选择受到影响。
  extends: [
    'stylelint-config-standard',
    'stylelint-config-prettier',
  ],
  plugins: [], // 插件
  processors: [], // 处理器
  rules: {
    indentation: 2, // 指定缩进
    // 'property-no-unknown': null, // 禁止未知属性。
    'selector-type-no-unknown': null, // 禁止未知类型选择器
    'at-rule-no-unknown': null, // 禁止未知的规则
    'selector-pseudo-class-no-unknown': null, // 禁止未知的伪类选择器
    'shorthand-property-no-redundant-values': null,
    'at-rule-empty-line-before': null,
    'at-rule-name-space-after': null,
    'comment-empty-line-before': null,
    'declaration-bang-space-before': null,
    'declaration-empty-line-before': null,
    'function-comma-newline-after': null,
    'function-name-case': null,
    'function-parentheses-newline-inside': null,
    'function-max-empty-lines': null,
    'function-whitespace-after': null,
    'number-leading-zero': null,
    'number-no-trailing-zeros': null,
    'rule-empty-line-before': null,
    'selector-combinator-space-after': null,
    'selector-descendant-combinator-no-non-space': null,
    'selector-list-comma-newline-after': null,
    'selector-pseudo-element-colon-notation': null,
    'unit-no-unknown': null,
    'no-descending-specificity': null,
    'value-list-max-empty-lines': null,
  },
}
