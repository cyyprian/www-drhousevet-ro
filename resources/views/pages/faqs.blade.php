@extends('layouts.site')

@section('content')
  
   <!--
        pagina elocvent from:
            - departments version one and (by component):
                - add top image to reflect frecquent q and a's
                - add faqs dropdown on 100% width
    -->
     <!-- Start Breadcrumb 
    ============================================= -->
    <div class="breadcrumb-area gradient-bg bg-cover shadow dark text-light text-center" 
          style="background-image: url({{ Voyager::image(F1::getRowDataOfModel('page', 'faqs')->image) }});">
          <h1> {{F1::getRowDataOfModel('page', 'faqs')->sub_title}}</h1>
     </div>
    <!-- End Breadcrumb -->


<div class="container" style="padding: 1rem">
<div class="row">
    <div class="col-lg-12 faqs">
        <div class="accordion" id="accordionExample">
            @foreach(F1::getDataOfModel('faq') as $key=>$row)
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h4 class="mb-0" data-toggle="collapse" data-target="#collapsefaq{{$row->id}}" aria-expanded="true" aria-controls="collapseOne">
                        {{$row->question}}
                    </h4>
                </div>

                <div id="collapsefaq{{$row->id}}" class="collapse {{$loop->first ? 'show': ''}}" aria-labelledby="headingOne" data-parent="#accordionExample">
                    <div class="card-body" style="text-align:justify">
                        {!! $row->answer !!}                         
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
</div>

@endsection