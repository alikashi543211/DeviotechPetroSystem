@extends('emails.layout')
@section('content')
<div>
    <h1 align="center" style="font-size:24px;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Reset Password </h1>
</div>
<p style="font-family: sans-serif;text-align:center;font-size:16px;margin-bottom: 30px;">Your have been given a pin code below to reset your password:</p>
<br>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:20px;">
    <strong>Pin Code:</strong> {{ session::get('reset_pin') }}
</p>
@endsection
