<!-- Image and text -->
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="{{ url('/') }}">
    <img src="{{ Voyager::image(setting('site.logo')) }}" height="34" class="d-inline-block align-top" alt="">
      <span class="align-middle">{{ setting('site.title') }}</span>
  </a>
</nav>