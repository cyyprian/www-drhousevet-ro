<div class="single-item col-lg-4 col-md-6 item">
    <div class="f-item branches">
        <h4 class="widget-title">Sucursale</h4>
        <div class="branches">
            <ul>
                @foreach(F1::getDataOfModel('branches') as $row)
                    <li>
                    <strong>{{ $row->name }}:</strong> 
                    <span>Addresa: {{ $row->address }} <br> Telefon: {{ $row->phone }}</span>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>