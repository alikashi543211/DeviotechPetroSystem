@extends('emails.layout')
@section('content')
<div>
    <h1 align="center" style="color: #06090f;font-size:24px;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Customer</h1>
</div>
<p style="font-family: sans-serif;text-align:center;color:black;font-size:16px;margin-bottom: 30px;">{{$data['detail']}}</p>
<br>
@endsection
