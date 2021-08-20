@extends('layouts.site')

@section('content')
   <!--
    single article page from:
         - blog single and:
            -remove comments section
-->
        
          <!-- Start Blog
    ============================================= -->
    @foreach(F1::getDataOfModel('article') as $row)
    @if ($row->slug == Request::route('slug'))
    <div class="blog-area single full-blog full-blog default-padding">
        <div class="container">
            <div class="blog-items">
                <div class="row">
                    <div class="blog-content col-lg-10 offset-lg-1 col-md-12">
                        <div class="single-item">

                            <div class="blog-item-box">
                                <div class="item">
                                    <!-- Start Post Thumb -->
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="{{ Voyager::image($row->image) }}" alt="{{$row->title}}">
                                        </a>
                                    </div>
                                    <!-- Start Post Thumb -->

                                    <div class="info">
                                        <span class="date">
                                        {{strtoupper($row->updated_at->format('j M'))}}
                                        </span>
                                        <div class="meta">
                                            <ul>
                                                <li>
                                                    <i class="fas fa-user"></i>
                                                    <span>{{$row->author}}</span>
                                                </li>
                                            </ul>
                                        </div>
                                        
                                        <h3>{{$row->title}}</h3>
                                        <div style="color:gray; text-align:justify;">
                                          <p> 
                                              {!! $row->body !!}
                                          </p>
                                        </div>
                                          <blockquote>
                                              {{ $row->quote }}
                                          </blockquote>      
                                        <div style="color:gray; text-align:justify;">
                                          <p> 
                                              {!! $row->body_2 !!}
                                          </p>
                                        </div>
                                        <!-- <h4>Conduct replied off led whether any shortly why arrived adapted</h4>
                                        <ul>
                                            <li>Pretty merits waited six</li>
                                            <li>General few civilly amiable pleased account carried.</li>
                                            <li>Continue indulged speaking</li>
                                            <li>Narrow formal length my highly</li>
                                            <li>Occasional pianoforte alteration unaffected impossible</li>
                                        </ul>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <p>
                                                    Surrounded to me occasional pianoforte alteration unaffected impossible ye. For saw half than cold. Pretty merits waited six talked pulled you. Conduct replied off led whether any shortly why arrived adapted. Numerous ladyship so raillery humoured goodness received an. So narrow formal length my highly longer afford oh. Tall neat he make or at dull ye. 
                                                </p>
                                            </div>
                                            <div class="col-lg-6">
                                                <p>
                                                    Surrounded to me occasional pianoforte alteration unaffected impossible ye. For saw half than cold. Pretty merits waited six talked pulled you. Conduct replied off led whether any shortly why arrived adapted. Numerous ladyship so raillery humoured goodness received an. So narrow formal length my highly longer afford oh. Tall neat he make or at dull ye. 
                                                </p>
                                            </div>
                                        </div> -->

                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </div>
    @endif
    @endforeach
    <!-- End Blog -->
@endsection