 <!-- Star Health Tips
    ============================================= -->
    <div class="health-tips-area default-padding-bottom bg-gray">
         <!-- Shape
         <div class="shape" style="    position: absolute;right: 0; bottom: 0;z-index: -1;">
            <img src="{{asset('assets/img/shape/1.png')}}" alt="Shape">
        </div> -->
        <div class="container">
            <div class="health-tips-items">
                <div class="row">
                    
                    <div class="col-lg-5 left-info">
                        <h2>{{F1::getRowDataOfModel('page', 'articole')->sub_title}}</h2>
                        <p>
                        {{F1::getRowDataOfModel('page', 'articole')->excerpt}}
                        </p>
                        <a class="btn btn-md btn-gradient" href="{{ F1::getRowDataOfModel('page','articole')->slug }}">
                            {{F1::getRowDataOfModel('page', 'articole')->title}} <i class="fas fa-angle-right"></i></a>
                    </div>
                    <br>
                    <div class="col-lg-7 right-info" >
                            <!-- Single Item -->
                            <div class="item">
                                <div class="info">
                                    <h2 style="text-align:center; padding: 1.2rem">{{F1::getRowDataOfModel('page', 'faqs')->sub_title}}</h2>
                                    @include('partials/lists.faqs')
                                    <a href="{{url('faqs')}}" 
                        style="margin-left: 1rem;
                                padding: 0;
                                font-size: 12px;
                                text-transform: uppercase;
                                font-weight: 600;
                                color: #55c0ac;">
                        
                    Afla toate raspunsurile
                </a>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Health Tips -->