    <div class="col-sm-12 faqs">
        <div class="accordion" id="accordionExample">
            @foreach(F1::getDataOfModel('faq') as $key=>$row)
            @if ($key == 3)
                @break
            @endif
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