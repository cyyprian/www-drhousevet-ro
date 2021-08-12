<?php
  // dd($page);
?>
@extends('layouts.site')
@section('content')
  @include('../partials/sliders/slider')
  @include('../partials/elements/prezentare_servicii')
  @include('..partials/elements/articole_si_faqs')
  @include('..partials/elements/opening_hours')

  <!-- <table class="table table-borderless table-hover">
    <tbody>
      @foreach(F1::getDataOfModel('page') as $row)
        <tr class="row-page" data-href='{{ url($row->slug) }}'>
          <td scope="row">{{ $row->title }}</td>
          <td scope="row"><code>{{ $row->slug }}</code></td>
          <td scope="row">{{ $row->excerpt }}</td>
          <td scope="row">{{ $row->status ? 'ACTIVE' : 'INACTIVE' }}</td>
          <td scope="row"><img src="{{ Voyager::image($row->thumbnail('small')) }}" /></td>
        </tr>
      @endforeach
    </tbody>
  </table> -->

<!--
About us (modificare componenta Despre):
ok
-->

<!--
Doctor Tips:
ok
-->

<!--
Opening Hours:
*inchide shape
comp 1 stanga - urgente cu nr de telefon urgente apelabil
comp 2 mijloc - opening hours cu link spre contact
comp 3 dreeapta - ... (ex. lucreaza de mult in bransa sau face parte dintr-o asociate a medicilor veterinari)
-->

<!--
Galery:
galerie de servicii
-->

@endsection