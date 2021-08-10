 <!-- Start Header Top 
    ============================================= -->
    <div class="top-bar-area">
        <div class="container">
            <div class="row align-center">
                <div class="col-lg-3 logo">
                    <a href="index.html">
                        <img src="assets/img/logo-light.png" class="logo" alt="Logo">
                    </a>
                </div>
                <div class="col-lg-9 address-info text-right">
                    <div class="info box">
                        <ul>
                        @foreach(F1::getDataOfModel('branches') as $row)
                            @if ($row->emergency_phone)
                                <li>
                                    <div class="icon">
                                        <i class="flaticon-email"></i>
                                    </div>
                                    <div class="info">
                                        <span>Email:</span> {{$row->email}}
                                    </div>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="flaticon-call"></i>
                                    </div>
                                    <div class="info">
                                        <span>Tel:</span> {{$row->phone}}
                                    </div>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="flaticon-clock-1"></i>
                                    </div>
                                    <div class="info">
                                        <span>Program:</span> {{$row->office_hours}}
                                    </div> 
                                </li>
                            @endif
                        @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top -->