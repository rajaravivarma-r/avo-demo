let environment = {
  plugins: [
    require('postcss-import'),
    require('tailwindcss')('tailwind.config.js'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}

if (process.env.RAILS_ENV === "production" || process.env.RAILS_ENV === "staging") {
  environment.plugins.push(
      require('@fullhuman/postcss-purgecss')({
        content: [
          './app/**/*.html.erb',
          './app/helpers/**/*.rb',
          './app/javascript/**/*.js',
          './app/javascript/**/*.jsx',
          './node_modules/react-table-6/*.js',
        ],
        defaultExtractor: content => content.match(/[A-Za-z0-9-_:/]+/g) || []
      })
  )
}

module.exports = environment
