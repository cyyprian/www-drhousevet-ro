 <!-- Start Gallery Area
    ============================================= -->
    <div class="gallery-area inc-carousel default-padding-bottom">
        <div class="container-lg">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="site-heading text-center">
                        <h2>{{F1::getRowDataOfModel('page', 'servicii')->title}}</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="gallery-items gallery-carousel owl-carousel owl-item">
                        @foreach(F1::getDataOfModel('service') as $row)
                            <!-- Single Item -->
                            <div class="item">
                                <a href="servicii/{{$row->slug}}">
                                    <img  src="{{ Voyager::image($row->thumbnail('resized')) }}" alt="{{$row->title}}" >
                                </a>
                      
                                <div class="info">
                                    <div class="info-items">
                                        <div class="left-info">
                                            <h4>
                                                <a href="servicii/{{$row->slug}}">{{$row->title}}</a>
                                            </h4>
                                            <ul>
                                                <li>{{$row->excerpt}}</li>
                                            </ul>
                                        </div>
                                        <div class="right-info">
                                            <a href="servicii/{{$row->slug}}"><i class="fas fa-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        @endforeach    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Gallery Area -->