const colors = require('tailwindcss/colors')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
     colors: {
      'light-blue': colors.sky,
      cyan: colors.cyan,
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
