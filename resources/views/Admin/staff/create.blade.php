@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Staff')
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
        <h4 class="card-title"> Staff</h4>
      </div>
      <div class="card-body">
        <form action="{{url('/admin/add_staff')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Staff Name</label>
                <input type="text" class="form-control" name="staff" value="{{$staff->staff_name ?? ''}}" max-length="190">
                @error('staff')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Status</label>
                <select name="status" class="form-control" id="status">
                  <option value="">Select Status</option>
                  <option value="1">Active</option>
                  <option value="0">Inactive</option>
                </select>
                @error('status')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
          </div>
          <input type="hidden" value="{{$staff->id ?? '0'}}" name="id">
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
@section('js')
<script>
  $(document).ready(function() {
    $("#status").val({
      {
        $staff - > status ? ? ''
      }
    });
  });
</script>
@endsection