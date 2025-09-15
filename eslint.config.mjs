import js from "@eslint/js";
import globals from "globals";
import { defineConfig } from "eslint/config";

export default defineConfig([
  {
    files: ["**/*.{js,mjs,cjs}"],  // only Node.js files
    plugins: { js },
    extends: ["js/recommended"],
    languageOptions: {
      globals: globals.node,      
      ecmaVersion: 2021,
      sourceType: "module"
    },
    rules: {
      
    },
  },
]);
