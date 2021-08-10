<!-- Start Atribute Navigation -->
<div class="attr-nav contact">
    <ul>
        <li>
            <i class="fas fa-stethoscope"></i>
            @foreach(F1::getDataOfModel('branches') as $row)
                @if ($row->emergency_phone)
                <p>
                    Urgente <span>{{ $row->emergency_phone }}</span>
                </p>
                @endif
            @endforeach
           
        </li>
    </ul>
</div>
<!-- End Atribute Navigation -->