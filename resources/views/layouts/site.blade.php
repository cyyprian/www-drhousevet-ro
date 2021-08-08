<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" href="{{ Voyager::image(Voyager::setting('site.icon', '')) }}" type="image/png">

    {!! SEO::generate(true) !!}

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Scripts -->
    <script src="{{ asset('js/lib.js') }}" defer></script>
    <script src="{{ asset('js/theme.js') }}" defer></script>
    <script src="{{ asset('js/site.js') }}" defer></script>

    <!-- Styles -->
    <link href="{{ asset('css/lib.css') }}" rel="stylesheet">
    <link href="{{ asset('css/theme.css') }}" rel="stylesheet">
    <link href="{{ asset('css/site.css') }}" rel="stylesheet">

  </head>

  <body class="antialiased">
    <div class="container">
      @include('partials.nav')
      @yield('content')
    </div>
  </body>
</html>
