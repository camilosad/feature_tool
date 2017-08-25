module.exports = {
    "extends": "airbnb",
    "parser": "babel-eslint",
    "plugins": [
        "react",
        "jsx-a11y",
        "import"
    ],
    "rules": {
      "max-len": ["error", 120],
      "semi": ["error", "never"],
      "react/jsx-closing-bracket-location": [1, {selfClosing: 'after-props', nonEmpty: 'after-props'}],
      "react/forbid-prop-types": 0,
      "react/require-default-props": 0,
      "jsx-a11y/label-has-for": 0,
      "jsx-a11y/no-static-element-interactions": 0,
      "react/no-string-refs": 0,
      "react/no-find-dom-node": 0,
      //TODO: remove string refs and dom node in future
      "react/sort-comp": [1, { order: [
        'static-methods',
        'lifecycle',
        'render',
        'everything-else',
      ]}],
    },
    "root": true
};
