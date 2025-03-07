module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  daisyui: {
    themes: [
      {
        mytheme: {
          "primary": "#00a3af",
          "secondary": "#008899",
          "accent": "#e17b34",
          "neutral": "#18141f",
          "base-100": "#FFFFFF",
          "info": "#4d4398",
          "success": "#99f6e4",
          "warning": "#fde68a",
          "error": "#ef857b",
        },
      },
    ],
  },
    plugins: [
    require("daisyui"),
  ],
}
