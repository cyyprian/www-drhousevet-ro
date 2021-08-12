<div class="col-lg-12 faqs">
                    <div class="accordion" id="accordionExample">
                        @foreach(F1::getDataOfModel('faq') as $row)
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h4 class="mb-0" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    {{$row->question}}
                                </h4>
                            </div>

                            <div id="collapseOne" class="collapse {{$loop->first ? 'show': ''}}" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body" style="text-align:justify">
                                    {!! $row->answer !!}                         
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>