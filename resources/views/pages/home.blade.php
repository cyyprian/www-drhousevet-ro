<?php
  // dd($page);
?>

@extends('layouts.site')

@section('content')
  @include('../partials/sliders/slider')
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


@endsection