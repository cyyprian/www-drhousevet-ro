@extends('layouts.site')

@section('content')
  <!--
    single service page from:
        - department single and:
            - add sub-services list with prices
            - add side bar with:
                    - expert doctor
                    - other service from:
                        side bar (our departments)
  -->

    @foreach(F1::getDataOfModel('service') as $row)
    @if ($row->slug == Request::route('slug'))

    <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image($row->image) }});">
          <h1> {{$row->title}}</h1>
     </div>
    <!-- End Breadcrumb -->

    @endif
    @endforeach

@endsection