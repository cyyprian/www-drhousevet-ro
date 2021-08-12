<?php
  // dd($page);
?>
@extends('layouts.site')
@section('content')
  @include('../partials/sliders/slider')
  @include('../partials/elements/prezentare_servicii')

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
-adauga 2 imagini
-folosesc componenta despre si componenta servicii
-->

<!--
Doctor Tips:
*deschide shape
comp 1 stanga - din home Doctor Tips se face Sfaturi utile cu referinta la articole
comp 2 dreeapta - din departments v1 componenta faqs (partea dreeapta)
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