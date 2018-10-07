<!--Called parent HTML element -->
@extends('layout/app')

<!--page Header title -->
@section('title')
   Create form
@stop
<!--page content section -->
@section('content')
    <h1>Create Your Post</h1>


    {{--<form action="{{url('/')}}/post" method="POST">--}}

    {!! Form::open(['method'=>'POST','action' => 'PostController@store', 'file'=>true, 'enctype'=>'multipart/form-data']) !!}

        {{csrf_field()}}


    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <div class="form-group">
        <!-- label build like this with package-->
        {!! Form::label('title', 'Enter Post tile')!!}
    <!--Text area build like this-->
        {!! Form::text('title', null,['class'=>'form-control'] ) !!}
    </div>

    <div class="form-group">
        <!-- label build like this with package-->
        {!! Form::label('body', 'Enter Post content')!!}
        <!--Text area build like this-->
        {!! Form::text('body', null ,['class'=>'form-control']) !!}
    </div>

    <div class="form-group">
        <!-- label build like this with package-->
        {!! Form::label(null, 'upload your image here')!!}
        <!--Text area build like this-->
        {!! Form::file('file', ['class'=>'form-control']) !!}

        <!-- multiple image upload-->
        {{--{!! Form::file('upload',  array('multiple'=>true),['class'=>'form-control']) !!}--}}
    </div>


    <div class="form-group">
        <!-- Form submit using laravel packagist to build html form-->
        {!! Form::submit('Create a Post', ['class'=>'btn btn-primary']) !!}
    </div>
    {!! Form::close() !!}


    {{--@if (count($errors) >= 0)--}}
        {{--<div class="alert alert-danger">--}}
            {{--<ul>--}}
                {{--@foreach ($errors->all() as $error)--}}
                    {{--<li>{{ count($error) }}</li>--}}
                {{--@endforeach--}}
            {{--</ul>--}}
        {{--</div>--}}
    {{--@endif--}}

    {{--@if($errors->has('*'))--}}
        {{--@foreach ($errors->all() as $error)--}}
            {{--<div>{{ $error }}</div>--}}
        {{--@endforeach--}}
    {{--@endif--}}





        {{--<input type="text" name="title" placeholder="Your title"/>--}}
        {{--<br>--}}
        {{--<textarea name="body" ></textarea><br>--}}

        {{--<input type="submit" name="Submit">--}}

    {{--@if(Session::has('message'))--}}
        {{--<p class="alert alert-success">--}}
            {{--{!! session('success') !!}--}}
        {{--</p>--}}


    {{--@endif--}}

    {{--@if(session()->has('message.level'))--}}
        {{--<div class="alert alert-{{ session('message.level') }}">--}}
            {{--{!! session('message.content') !!}--}}
        {{--</div>--}}
    {{--@endif--}}









@stop
<!--page footer -->
@section('footer')

@stop
