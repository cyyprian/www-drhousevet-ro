<div class="single-item col-lg-2 col-md-6 item">
    <div class="f-item link">
        <h4 class="widget-title">Servicii</h4>
        <ul>
            @foreach(F1::getDataOfModel('service') as $row)
                <?php $url = url('servicii/' . $row->slug); ?>
                <li><a href="{{ $url }}">{{ $row->title }}</a></li>
            @endforeach
        </ul>
    </div>
</div>