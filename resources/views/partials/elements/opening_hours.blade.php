 <!-- Star Feature Entry Area
    ============================================= -->
    <div class="feature-entry-area bg-gray default-padding-bottom bottom-less">
        <!-- Shape -->
        <div class="shape">
            <img src="assets/img/shape/1.svg" alt="Shape">
        </div>
        <!-- End Shape -->
        <div class="container">
            <div class="feature-entry-items text-center">
                <div class="row">
                    <!-- Single Item -->
                    <div class="col-lg-4 single-item">
                        <div class="item">
                            <i class="flaticon-ambulance-1"></i>
                            <h4>{{F1::getRowDataOfModel('general_naming', 'emergency')->name}}</h4>
                            <p>
                            {{F1::getRowDataOfModel('general_naming', 'emergency')->description}}
                            </p>
                            @foreach(F1::getDataOfModel('branches') as $row)
                                @if ($row->emergency_phone)
                                    <a class="btn circle btn-theme border btn-sm" href="tel:+4{{ $row->emergency_phone }}">Suna acum</a>
                                @endif
                            @endforeach
                           
                        </div>
                    </div>
                    <!-- End Single Item -->
                    <!-- Single Item -->
                    <div class="col-lg-4 single-item">
                        <div class="item">
                            <i class="flaticon-clock"></i>
                            <h4>Program de lucru</h4>
                            <ul>
                                @foreach(F1::getDataOfModel('openinghour') as $row)
                                <li> <span>{{$row->day}} </span>
                                  <div class="float-right"> {{$row->start}} {{$row->end ? '- ' . $row->end : ''}} </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <!-- End Single Item -->
                    <!-- Single Item -->
                    <div class="col-lg-4 single-item">
                        <div class="item">
                            <i class="flaticon-ribbon"></i>
                            <h4>{{F1::getRowDataOfModel('general_naming', 'experience')->name}}</h4>
                            <p>
                            {{F1::getRowDataOfModel('general_naming', 'experience')->description}}
                            </p>
                        </div>
                    </div>
                    <!-- End Single Item -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Feature Entry Area -->