@extends('layouts.site')

@section('content')

    <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image(F1::getRowDataOfModel('page', 'articole')->image) }});">
          <h1> {{F1::getRowDataOfModel('page', 'articole')->sub_title}}</h1>
     </div>
    <!-- End Breadcrumb -->

     <!-- Start Blog
    ============================================= -->
    <div class="blog-area full-blog blog-standard full-blog default-padding">
          <div class="container">
               <div class="blog-items">
                    <div class="blog-content">
                         <div class="blog-item-box">
                              <div class="row">

                              <!-- Single Item -->
                              @foreach(F1::getDataOfModel('article') as $row)
                              <div class="col-lg-6 col-md-6 single-item">
                                   <div class="item">
                                        <div class="thumb">
                                             <a href="articole/{{$row->slug}}"><img src="{{ Voyager::image($row->image) }}" alt="{{$row->title}}">   
                                             </a>
                                        </div>
                                   <div class="info">
                                        <span class="date">{{strtoupper($row->updated_at->format('j M'))}}</span>
                                        <div class="meta">
                                             <ul>
                                                  <li>
                                                       <i class="fas fa-user"></i>
                                                       <span>{{$row->author}}</span>
                                                  </li>
                                             </ul>
                                        </div>
                                        <h4>
                                            <a href="articole/{{$row->slug}}">{{$row->title}}</a>
                                        </h4>
                                        <a class="btn btn-sm btn-theme border circle" href="articole/{{$row->slug}}">{{$row->excerpt}} <i class="fas fa-angle-right"></i></a>
                                    </div>
                                </div>
                                
                            </div>
                            <!-- End Single Item -->
                            @endforeach

                              </div>
                               <!-- Pagination -->
                              <div class="row">
                                   <div class="col-md-12 pagi-area text-center">
                                        <nav aria-label="navigation">
                                             <ul class="pagination">
                                                  <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-left"></i></a></li>
                                                  <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                  <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a></li>
                                             </ul>
                                        </nav>
                                   </div>
                              </div>

                         </div>
                    </div>
               </div>
          </div>
     </div>

   <!--
    Lista de articole from:
         -  blog two columns (defined as single in list_article.blade.php in partials/elements folder)
    with redirection to: 
         - article.blade.php (single article page) from:
              - blog single
        -->
@endsection