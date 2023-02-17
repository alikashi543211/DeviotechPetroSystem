@extends('Admin.layouts.dashboard')
@section('page-title', 'Templates List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <!-- <a href="{{route('show.template_form')}}"><button type="button" class="btn btn-success">+ Add new template</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ Add new templates</button>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add Templates</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{route('save.templates',$template->id ?? '')}}" method="post" enctype="multipart/form-data">
              @csrf

              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" value="{{$template->name ?? ''}}" max-length="190">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
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
                    @error('role')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Add Document</label>
                    <input type="file" class="form-control" name="path">
                    @error('path')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-primary pull-left">Save</button>
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">

        <h4 class="card-title">Templates</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>

              <th>
                Name
              </th>
              <th>
                Type
              </th>


              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($templates as $item)
              <tr>
                <td>{{ $item->id ?? '' }}</td>

                <td>
                  {{$item->name ?? ''}}
                </td>
                <td>
                  {{$item->role ??''}}
                </td>


                <td>
                  <a href="{{route('edit.template',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                  <a href="{{route('delete.template',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>

                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div>
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