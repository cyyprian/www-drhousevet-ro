@extends('layouts.site')

@section('content')
       <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image(F1::getRowDataOfModel('page', 'not-found')->image) }});">
          <h1> {{F1::getRowDataOfModel('page', 'not-found')->title}}</h1>
     </div>
    <!-- End Breadcrumb -->
    
         <!-- Start Blog
    ============================================= -->
    <div class="blog-area single full-blog full-blog default-padding">
        <div class="container">
            <div class="blog-items">
                <div class="row">
                    <div class="blog-content col-lg-10 offset-lg-1 col-md-12">
                        <div class="single-item">
                            <div class="blog-item-box">
                                <div class="item">
                                    <div class="info">
                                      @if(F1::getRowDataOfModel('page', 'not-found')->sub_title)
                                        <h3>{{F1::getRowDataOfModel('page', 'not-found')->sub_title}}</h3>
                                        <br>
                                      @endif
                                        <div style="color:gray; text-align:justify;">
                                          <p> 
                                              {!! F1::getRowDataOfModel('page', 'not-found')->body !!}
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