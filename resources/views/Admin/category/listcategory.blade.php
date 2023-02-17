@extends('Admin.layouts.dashboard')
@section('page-title', 'Category List')
@section('css')
@endsection
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <!-- <a href="{{route('addcategory')}}"><button type="button" class="btn btn-success">+ Add new category</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ Add new category</button>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add Category</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{route('createcategory')}}" method="post">
              @csrf
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label class="bmd-label-floating">Name</label>
                    <input type="text" name="name" class="form-control" value="" max-length="190">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-primary pull-left">Add</button>
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Category List</h4>
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
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>

              @foreach ($category as $cat)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>

                <td>
                  {{$cat->name}}
                </td>
                <td>
                  <div class="btn-group" role="group" aria-label="Basic example">
                    <a href="{{route('editcategory',['id'=>$cat->id])}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                    <a href="{{route('deletecategory',['id'=>$cat->id])}}" class="del-btn"><button type="button" class="btn btn-danger btn-sm">Delete</button></a>
                  </div>
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