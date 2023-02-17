@extends('Admin.layouts.dashboard')
@section('page-title', 'JobType List')
@section('content')

<div class="col-12">
  <div class="row">
    <div class="col-md-12">
      <div class="col-md-12 text-right">
        <!-- <a href="{{url('/admin/addjobtype')}}"><button type="button" class="btn btn-success">+ add new job type</button></a> -->
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add new job type</button>
      </div>
      <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Add job type</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="{{route('createjobtype')}}" method="post">
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
          <h4 class="card-title ">List</h4>
          {{-- <p class="card-category"> Here is a subtitle for this table</p> --}}
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
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

                @foreach ($jobtype as $cat)

                <tr>
                  <td>
                    <?php echo $index_count++ ?>
                  </td>

                  <td>
                    {{$cat->name}}
                  </td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="{{route('editjobtype',['id'=>$cat->id])}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                      <a href="{{route('deletejobtype',['id'=>$cat->id])}}"><button type="button" class="btn btn-danger btn-sm">Delete</button></a>
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
</div>
@stop