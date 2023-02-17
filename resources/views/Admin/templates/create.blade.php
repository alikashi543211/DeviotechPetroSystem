@extends('Admin.layouts.dashboard')
@section('page-title', 'Templates')
@section('content')
<div class="col-12">
  @if(session()->has('message'))
  <div class="alert alert-success">
    {{ session()->get('message') }}
  </div>
  @endif
  <div class="row">
    <div class="col-md-12">
      <div class="card">

        <div class="card-header card-header-primary">
          <h4 class="card-title">Templates</h4>
        </div>
        <div class="card-body">
          <form action="{{route('save.templates',$template->id ?? '')}}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Name</label>
                  <input type="text" class="form-control" name="name" value="{{$template->name ?? ''}}" max-length="190">
                  @if($errors->has('name'))
                  {{ $errors->first('name') }}
                  @endif
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Type</label>
                  <select class="form-control" name="role" id="type">
                    <option selected disabled>Select Type</option>
                    <option value="document">Document</option>
                    <option value="quality">Quality</option>
                    <option value="site">Site</option>
                  </select>
                  @if($errors->has('role'))
                  {{ $errors->first('role') }}
                  @endif
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label>Add Document</label>
                  <input type="file" class="form-control" name="path">
                  @if($errors->has('path'))
                  {{ $errors->first('path') }}
                  @endif
                </div>
              </div>
            </div>


            <button type="submit" class="btn btn-primary pull-left">Save</button>
            <a href="/admin/dashboard" class="btn btn-danger">Close</a>
            <div class="clearfix"></div>
          </form>
        </div>
      </div>
    </div>
  </div>
  
  @stop
  @section('js')
  <script>
    $(document).ready(function() {
      $("#type").val('{{$template->role ?? '
        '}}').change();


    });
  </script>
  @endsection