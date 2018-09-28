module.exports = {
    extends: ["eslint:recommended", "plugin:prettier/recommended"],
    plugins: ["prettier"],
    env: {
      browser: true,
      node: true
    },
    rules: {
      "no-console": 1
    }
  };