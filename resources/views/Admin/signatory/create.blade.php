@extends('Admin.layouts.dashboard')
@section('page-title', 'Add Signatory')
@section('content')


<div class="col-12">
  @if(session()->has('message'))
  <div class="alert alert-success">
    {{ session()->get('message') }}
  </div>
  @endif
</div>


<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Signatory</h4>
      </div>
      <div class="card-body">
        <form action="{{url('/admin/add_signatory')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Signatory</label>
                <input type="text" class="form-control" name="signatory" value="{{$signatory->signatory ?? ''}}" max-length="190">
                @error('signatory')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Title</label>
                <input type="text" class="form-control" name="title" value="{{$signatory->title ?? ''}}" max-length="190">
                @error('title')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
          </div>
          <input type="hidden" value="{{$signatory->id ?? '0'}}" name="id">
          <button type="submit" class="btn btn-primary pull-left">Add</button>
          <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
  </div>
  <div class="col-md-3"></div>
</div>

@stop