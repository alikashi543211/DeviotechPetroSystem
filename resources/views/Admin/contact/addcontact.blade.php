@extends('Admin.layouts.dashboard')
@section('page-title', 'Add Engineers/Contact')
@section('content')

<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Add Engineers/Contact</h4>
      </div>
      <div class="card-body">
        <form action="{{route('createcontact')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">surname</label>
                <input type="text" name="surname" class="form-control" value="" max-length="190">
                @error('surname')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">forename</label>
                <input type="text" class="form-control" name="forename" value="" max-length="190">
                @error('forename')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Email</label>
                <input type="email" class="form-control" name="email" value="" max-length="190">
                @error('email')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Hourly charges</label>
                <input type="text" class="form-control" name="charge" value="" max-length="190">
                @error('charge')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Work phone</label>
                <input type="text" class="form-control" name="workphone" value="" max-length="190">
                @error('workphone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">mobile phone</label>
                <input type="text" class="form-control" name="mobilephone" value="" max-length="190">
                @error('mobilephone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">homephone</label>
                <input type="text" class="form-control" name="homephone" value="" max-length="190">
                @error('homephone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Address 1</label>
                <input type="text" class="form-control" name="address1" value="" max-length="190">
                @error('address1')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Address 2</label>
                <input type="text" class="form-control" name="address2" value="" max-length="190">
                @error('address2')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Address 1</label>
                <input type="text" class="form-control" name="address3" value="" max-length="190">
                @error('address3')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
          </div>
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
