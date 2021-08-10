<!-- Image and text -->
<!-- <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="{{ url('/') }}">
    <img src="{{ Voyager::image(setting('site.logo')) }}" height="34" class="d-inline-block align-top" alt="">
      <span class="align-middle">{{ setting('site.title') }}</span>
  </a>
</nav> -->

@include('partials/header.preloader')
@include('partials/header.top_bar')
<header>
  <div class="container box-nav">
    <div class="row">
      <!-- Start Navigation -->
      <nav id="mainNav" class="navbar logo-less top-less navbar-default navbar-fixed white bootsnav on no-full nav-box no-background">       
        <div class="container">    
          @include('partials/header.emergency')
          @include('partials/header.fa_button')
          @include('partials/header.nav')
        </div>
      </nav>
      <div class="clearfix"></div>
    </div>
  </div>
</header>


