@extends('layouts.site')

<?php $page = F1::getRowDataOfModel('page', Request::route('slug')); ?>

@section('content')
       <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image($page->image) }});">
          <h1> {{$page->title}}</h1>
     </div>
    <!-- End Breadcrumb -->

    <div class="blog-area single full-blog full-blog default-padding">
        <div class="container">
            <div class="blog-items">
                <div class="row">
                    <div class="blog-content col-lg-10 offset-lg-1 col-md-12">
                        <div class="single-item">
                            <div class="blog-item-box">
                                <div class="item">
                                    <div class="info">
                                        <h3>{{$page->sub_title}}</h3>
                                        <br>
                                        <div style="color:gray; text-align:justify;">
                                          <p> 
                                              {!! $page->body !!}
                                          </p>      
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Blog -->
@endsection