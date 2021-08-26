<!-- Start Atribute Navigation -->
<div class="attr-nav contact">
    <ul>
        <li>
            <i class="fas fa-stethoscope"></i>
            @foreach(F1::getDataOfModel('branches') as $row)
                @if ($row->emergency_phone)
                <p>
                    <a href="tel:+4{{ $row->emergency_phone }}" 
                        style="margin: 0;
                                padding: 0;
                                font-size: 12px;
                                text-transform: uppercase;
                                font-weight: 600;
                                color: #55c0ac;">
                        Urgente <span>{{ $row->emergency_phone }}</span>
                    </a>
                </p>
                @endif
            @endforeach
           
        </li>
    </ul>
</div>
<!-- End Atribute Navigation -->