@extends('layouts.site')

@section('content')

   <!--
      contact page from:
        - contact and:
            - remove main form and newsletter form
            - implement google maps
    -->

     <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image(F1::getRowDataOfModel('page', 'contact')->image) }});">
          <h1> {{F1::getRowDataOfModel('page', 'contact')->sub_title}}</h1>
     </div>
    <!-- End Breadcrumb -->


    <!-- Start Contact Area
    ============================================= -->
    <div class="contact-area default-padding">
        <div class="container">
            <div class="contact-items">
                <div class="row">
                    
                <!-- maps -->
                    <div class="col-lg-8 left-item">
                      <div class="google-maps">
                        @foreach(F1::getDataOfModel('branches') as $row)
                        @if ($row->emergency_phone)
                          <iframe id="gmap_canvas" 
                            src="https://maps.google.com/maps?q=dr%20house%20vet%20tecuci&t=&
                            z={{$row->map_zoom}}
                            &ie=UTF8&iwloc=&output=embed" 
                          ></iframe>
                          @endif
                          @endforeach
                      </div>
                    </div>
                <!-- end maps -->

                    <div class="col-lg-4 right-item">
                        <div class="info-items">
                            @foreach(F1::getDataOfModel('branches') as $row)
                            @if ($row->emergency_phone)
                            <!-- Single Item -->
                            <div class="item">
                                <div class="icon">
                                    <i class="flaticon-location-1"></i>
                                </div>
                                <div class="info">
                                    <h5>Adresa</h5>
                                    <p>
                                      {{ $row->address }}
                                    </p>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            <!-- Single Item -->
                            <div class="item">
                                <div class="icon">
                                    <i class="flaticon-call"></i>
                                </div>
                                <div class="info">
                                    <h5>Telefon Programari</h5>
                                    <a href = "tel:+4{{$row->phone}}" style="color: #666666; font-weight:normal;">  
                                        {{ $row->phone}}
                                    </a>
                                </div>
                            </div>
                            <!-- End Single Item -->
                             <!-- Single Item -->
                             <div class="item">
                                <div class="icon">
                                    <i class="fas fa-stethoscope"></i>
                                </div>
                                <div class="info">
                                    <h5>Telefon Urgente</h5>
                                    <a href="tel:+4{{$row->emergency_phone}}" style="color: #666666; font-weight:normal;">  
                                        {{$row->emergency_phone}}
                                    </a>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            <!-- Single Item -->
                            <div class="item">
                                <div class="icon">
                                    <i class="flaticon-email"></i>
                                </div>
                                <div class="info">
                                    <h5>Email</h5>
                                    <a href = "mailto: {{$row->email}}" style="color: #666666; font-weight:normal;">  
                                        {{ $row->email }}
                                    </a>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            <!-- Single Item -->
                            <div class="item">
                                <div class="icon">
                                    <i class="flaticon-clock-1"></i>
                                </div>
                                <div class="info">
                                    <h5>Program de lucru</h5>
                                    <p>
                                      <ul>
                                          @foreach(F1::getDataOfModel('openinghour') as $row)
                                          <li>
                                            {{$row->day}}:  
                                            <span>
                                              {{$row->start}} {{$row->end ? '- ' . $row->end : ''}}
                                            </span>
                                          </li>
                                          @endforeach
                                      </ul>
                                    </p>
                                </div>
                            </div>
                            <!-- End Single Item -->
                           
                            @endif
                            @endforeach
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- End Contact -->

@endsection