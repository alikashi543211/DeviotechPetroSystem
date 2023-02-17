@extends('Admin.layouts.dashboard')
@section('page-title', 'Signatory List')
@section('content')
<div class="row">
  <div class="col-md-12">

    <div class="col-md-12 text-right">
      <!-- <a href="{{url('/admin/signatory')}}""><button type=" button" class="btn btn-success">+ add signatory</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add signatory</button>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add Signatory</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
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
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Signatory List</h4>

      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table">
            <thead class=" text-primary">
              <th>
                ID
              </th>
              <th>
                Signatory
              </th>
              <th>
                Title
              </th>


              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>
              @if(count($signatories)>0)
              @foreach ($signatories as $signatory)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                <td>
                  {{$signatory->signatory?? ''}}
                </td>
                <td>
                  {{$signatory->title?? ''}}
                </td>

                <td>
                  <div class="btn-group">
                    <a href="{{url('admin/signatory/'.$signatory->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                   <!--  <form method="post">
                      {{ csrf_field() }}
                      <input type="hidden" name="id" value="">
                      <input type="hidden" name="_method" value="DELETE"> -->
                      <a href="{{url('admin/remove_signatory')}}?id={{$signatory->id ?? ''}}" class="del-btn"><button type="submit" class="btn btn-danger btn-sm" style="margin-left:10px">Delete</button></a>
<!-- 
                    </form> -->
                  </div>
                </td>
              </tr>
              @endforeach
              @else
              <tr>
                <td>
                  No Record
                </td>
              </tr>
              @endif


            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
@stop