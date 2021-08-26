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


     <!-- Start Department Single 
    ============================================= -->
    <div class="department-single-area overflow-hidden default-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 info">
                    <img src="{{ Voyager::image($row->image_2) }}" alt="{{$row->slug}}">
                    <h3>{{$row->title}}</h3>
                    <span>{{$row->doctor}}</span>
                    <p style="text-align: justify;">
                        {{$row->excerpt}}
                    </p>
                    <br>
                    <div>
                      {!! $row->body !!}
                    </div>
                </div>
                <div class="col-lg-4 sidebar">
                    <!-- Single Widget -->
                    <div class="widget appoinment">
                        <div class="title">
                            <h4>Programeaza o vizita</h4>
                            @foreach(F1::getDataOfModel('branches') as $row)
                                @if ($row->emergency_phone)
                                    <a class="btn circle btn-theme border btn-sm" href="tel:+4{{ $row->phone }}">Suna acum</a>
                                @endif
                            @endforeach
                        </div>
                        
                    </div>
                    <!-- End Single Widget -->

                    <!-- Single Widget -->
                    <div class="widget link">
                        <div class="title">
                            <h4>Alte servicii</h4>
                        </div>
                        <ul>
                          @foreach(F1::getDataOfModel('service') as $key=>$row)
                            <li>
                                <a href="{{$row->slug}}"><i class="fas fa-angle-right"></i>{{$row->title}}</a>
                            </li>
                          @endforeach 
                        </ul>
                    </div>
                    <!-- End Single Widget -->

                    <!-- Single Widget -->
                    <div class="widget opening-hours">
                        <div class="title">
                            <h4>Disponibilitatea serviciului</h4>
                        </div>
                        <ul>
                                @foreach(F1::getDataOfModel('openinghour') as $row)
                                <li> <span>{{$row->day}} </span>
                                  <div class="float-right"> {{$row->start}} {{$row->end ? '- ' . $row->end : ''}} </div>
                                </li>
                                @endforeach
                          </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <!-- End Widget Items -->

                </div>
            </div>
        </div>
    </div>
    <!-- End Department Single -->
  

    @endif
    @endforeach

@endsection