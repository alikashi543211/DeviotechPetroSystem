@extends('emails.layout')
@section('content')
<div>
    <h1 align="center" style="color: #06090f;font-size:24px;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Customer Letter </h1>
</div>
<p style="font-family: sans-serif;text-align:center;font-size:16px;margin-bottom: 30px;">Customer letter details have been given below</p>
<br>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Email:</strong> {{ $data['email'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Code:</strong> {{ $data['code'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Signatory:</strong> {{ $data['signatory'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Date:</strong> {{ $data['datee'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Title: {{ $data['title'] }}</strong>
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Address:</strong> {{ $data['address'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Salutation:</strong> {{ $data['salutation'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:0px;">
	<strong>Internal Notes:</strong> {{ $data['internal_notes'] }}
</p>
<p style="font-family: sans-serif;text-align:left;font-size:16px;margin-bottom:30px;">
	<strong>Body:</strong> {{ $data['body'] }}
</p>
@endsection