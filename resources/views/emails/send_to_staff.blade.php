@extends('emails.layout')
@section('content')
	<p>Hi {{ $data['user_name'] ?? '' }},</p>
	<p>
		{{$data['detail']}}
	</p>
@endsection
