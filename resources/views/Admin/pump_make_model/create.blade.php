@extends('Admin.layouts.dashboard')
@section('page-title', 'Pump Make and Model')
@section('content')

<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Pump Make and Model</h4>
      </div>
      <div class="card-body">
        <form action="{{url('/admin/add_pump_make_and_model')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Make & Model</label>
                <input type="text" class="form-control" name="make_model" value="{{$make_model->make_model ?? ''}}" max-length="190">
                @error('make_model')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
          </div>
          <input type="hidden" value="{{$make_model->id ?? '0'}}" name="id">
          <button type="submit" class="btn btn-primary pull-left">Add</button>
          <a href="/admin/dashboard" class="btn btn-danger">Close</a>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
  </div>
  <div class="col-md-3"></div>
</div>
@stop