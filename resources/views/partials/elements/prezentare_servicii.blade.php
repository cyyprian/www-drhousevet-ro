 <!-- Start Our About
    ============================================= -->
    <div class="about-area default-padding">
        <div class="container">
            <div class="about-items">
                    <div class="row">
                        <div class="col-lg-7 thumb-box">
                            <div class="thumb">
                                <i class="fas fa-heartbeat"></i>
                                <img src="url({{ Voyager::image(F1::getRowDataOfModel('page', 'despre')->image) }});" alt="Veterinary Clinic">
                                <img src="url({{ Voyager::image(F1::getRowDataOfModel('page', 'despre')->image_2) }}));" alt="Doctor">
                            </div>
                        </div>
                        <div class="col-lg-5 info">
                            <h5>{{F1::getRowDataOfModel('page', 'despre')->title}}</h5>
                            <h2>{{F1::getRowDataOfModel('page', 'despre')->sub_title}}</h2>
                            <p>{{F1::getRowDataOfModel('page', 'despre')->excerpt}}</p>
                            <ul>
                                <li>
                                    <div class="info">
                                        <h4>{{ F1::getRowDataOfModel('page','servicii')->title }}</h4>
                                        <div class="items">
                                            @foreach(F1::getDataOfModel('service') as $row)
                                                
                                                <span>
                                                    <a href="servicii/{{$row->slug}}">{{ $row->title }}</a>
                                                </span>
                                                
                                            @endforeach
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div> 
            </div>
        </div>
    </div>
    <!-- End Our About -->