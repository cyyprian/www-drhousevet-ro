const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/lib/js/root.js', 'public/js/lib.js')
  .js('resources/theme/js/root.js', 'public/js/theme.js')
  .js('resources/js/root.js', 'public/js/site.js')
  .sass('resources/lib/sass/root.scss', 'public/css/lib.css')
  .sass('resources/theme/sass/root.scss', 'public/css/theme.css')
  .sass('resources/sass/root.scss', 'public/css/site.css')
  .postCss('resources/lib/css/root.css', 'public/css/lib.css')
  .postCss('resources/theme/css/root.css', 'public/css/theme.css')
  .postCss('resources/css/root.css', 'public/css/site.css');