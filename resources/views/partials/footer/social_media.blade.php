<div class="social">
    <h5>Retele sociale:</h5>
    <ul>
        @foreach(F1::getDataOfModel('socials') as $row)
        <li class="{{$row->name}}">
            <a href="{{$row->url}}" target="_blank"><i class="fab fa-{{$row->name}}"></i></a>
        </li>
        @endforeach
    </ul>
</div>