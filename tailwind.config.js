const { frontile, safelist } = require('@frontile/theme/plugin');

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    'app/**/*.{js,ts,hbs,gjs,gts,html}',
    './node_modules/@frontile/theme/dist/**/*.{js,ts}',
  ],
  theme: {
    extend: {},
  },
  safelist: [...safelist],
  plugins: [frontile()],
};
