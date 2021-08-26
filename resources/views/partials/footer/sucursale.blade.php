<div class="single-item col-lg-4 col-md-6 item">
    <div class="f-item branches">
        <h4 class="widget-title">Sucursale</h4>
        <div class="branches">
            <ul>
                @foreach(F1::getDataOfModel('branches') as $row)
                    <li>
                    <strong>
                        <a href="https://maps.google.com/?q=dr%20house%20vet%20tecuci">     
                            {{ $row->name }}:         
                        </a>
                    </strong> 
                   
                    <span>
                        <a href="https://maps.google.com/?q=dr%20house%20vet%20tecuci" 
                        target="_blank"
                        style="margin: 0;
                                padding: 0;
                                font-size: 12px;
                                text-transform: uppercase;
                                font-weight: 600;
                                color: #55c0ac;">
                           Deschide harta
                        </a>
                        <br>
                        Addresa:
                        <a href="https://maps.google.com/?q=dr%20house%20vet%20tecuci" 
                        target="_blank">
                            {{ $row->address }} 
                        </a> 
                        
                        <br> 
                        Email: 
                        <a href = "mailto: {{$row->email}}" style="color: white; font-weight:normal;">
                            {{$row->email}} 
                        </a>
                        <br> 
                        Telefon: 
                        <a href="tel:+4{{$row->phone}}" style="color: white; font-weight:normal;">
                            {{ $row->phone }}
                        </a>
                        <br>
                        </span>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>