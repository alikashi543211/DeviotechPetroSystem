@extends('Admin.layouts.dashboard')
@section('page-title', 'Success')
@section('content')
<div class="row">
    <div class="col-md-12 text-center m-auto">
        <img src="{{ asset('assets/img/congratulations.png') }}" alt="" width="220" class="img-fluid">
      <h1 class="bold">Congratulations!</h1>
      <h5 class="bold">You have successfully connected your dropbox with PetroSystems</h5>
      <a href="{{ route('admin.dashboard') }}" class="btn btn-primary bold">Go to Dashboard</a>
    </div>
</div>
@endsection
