@extends('Admin.layouts.dashboard')
@section('page-title', 'Edit Engineers/Contact')
@section('content')

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Edit Engineers/Contact</h4>
      </div>
      <div class="card-body">
        <form action="{{route('updatecontact',['id'=>$contact->id])}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">surname</label>
                <input type="text" name="surname" class="form-control" value="{{ $contact->surname }}" max-length="190">
                @error('surname')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">forename</label>
                <input type="text" class="form-control" name="forename" value="{{ $contact->forename }}" max-length="190">
                @error('forename')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Email</label>
                <input type="email" class="form-control" name="email" value="{{ $contact->email }}" max-length="190">
                @error('email')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Hourly charges</label>
                <input type="text" class="form-control" name="charge" value="{{ $contact->charge }}" max-length="190">
                @error('charge')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Work phone</label>
                <input type="text" class="form-control" name="workphone" value="{{ $contact->workphone }}" max-length="190">
                @error('workphone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">mobile phone</label>
                <input type="text" class="form-control" name="mobilephone" value="{{ $contact->mobilephone }}" max-length="190">
                @error('mobilephone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">homephone</label>
                <input type="text" class="form-control" name="homephone" value="{{ $contact->homephone }}" max-length="190">
                @error('homephone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Address 1</label>
                <input type="text" class="form-control" name="address1" value="{{ $contact->address1 }}" max-length="190">
                @error('address1')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Address 2</label>
                <input type="text" class="form-control" name="address2" value="{{ $contact->address2 }}" max-length="190">
                @error('address2')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Address 1</label>
                <input type="text" class="form-control" name="address3" value="{{ $contact->address3 }}" max-length="190">
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
</div>
@stop
