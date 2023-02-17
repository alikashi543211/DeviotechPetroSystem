@extends('emails.layout')
@section('content')
    <br>
    <p>
        Hi {{ $user->name ?? '' }},
    </p>
    <p style="margin-bottom: -15px;">
        <strong>Email:</strong> {{ $user->email }}
    </p>
    <p style="margin-bottom: -15px;">
        <strong>Password:</strong> {{ $password }}
    </p>
    <p style="margin-bottom: -15px;">
        <strong>Phone:</strong> {{ $request->mobilephone }}
    </p>
    <p style="margin-bottom: -15px;">
        <a href="{{ route('login') }}">Login to your account</a>
    </p>
@endsection
