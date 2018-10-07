<!--Called parent HTML element -->
@extends('layout/app')

<!--page Header title -->
@section('title')
   show poster
@stop
<!--page content section -->
@section('content')

    <h1>{{$poster->title}}</h1>

    <p>{{$poster->body}}</p>

    <!--image directory need to keep on public folder otherwise it not working-->
   <img src="../images/{{$poster->path}}" height="100px" width="100px"  alt="{{$poster->path}}"/>



@stop
<!--page footer -->
@section('footer')

@stop
