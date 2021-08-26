@extends('layouts.site')

@section('content')
  <!--
    Lista de servicii from:
         - departments version 2
    with redirection to: 
         - service.blade.php (single service page) from:
              - department single
        -->

          <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image(F1::getRowDataOfModel('page', 'servicii')->image) }});">
          <h1> {{F1::getRowDataOfModel('page', 'servicii')->sub_title}}</h1>
     </div>
    <!-- End Breadcrumb -->

     <!-- Start Our Services
    ============================================= -->
     <div class="services-area bg-gray default-padding bottom-less">
          <div class="container">
               <div class="services-items">
                    <div class="row">

                    <!-- Single Item -->
                    @foreach(F1::getDataOfModel('service') as $key=>$row)
                    <div class="services-single col-lg-6">
                        <div class="item">
                              <div class="thumb">
                                   <a href="servicii/{{$row->slug}}"><img src="{{ Voyager::image($row->image) }}" alt="{{$row->title}}">   
                                   </a>
                              </div>
                              <div class="info">
                                   <!-- <div class="top">
                                        <i class="flaticon-wheelchair"></i>
                                        <strong>0{{$key+1}}</strong>
                                   </div> -->
                                   <h4>
                                        <a href="servicii/{{$row->slug}}">{{$row->title}}</a>
                                   </h4>
                                   <p>
                                        {{$row->sub_title_long}}
                                   </p>
                                   <!-- <ul>
                                        <li>Joints</li>
                                        <li>Spine</li>
                                        <li>Sports Medicine</li>
                                        <li>Bones</li>
                                        <li>Spinal Fusion</li>
                                   </ul> -->
                                   <a class="btn btn-md circle btn-gradient" href="servicii/{{$row->slug}}">{{$row->primary_button_text}} <i class="fas fa-angle-right"></i></a>
                              </div>
                        </div>
                    </div>
                    @endforeach
                    <!-- End Single Item -->

                    </div>
               </div>
          </div>
     </div>

@endsection