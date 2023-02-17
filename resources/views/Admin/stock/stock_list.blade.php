@extends('Admin.layouts.dashboard')
@section('page-title', 'Stock List')
@section('content')
<div class="row">
  <div class="col-md-12">

    <div class="col-md-12 text-right">
      <!-- <a href="{{url('/admin/stock')}}"><button type="button" class="btn btn-success">+ add new stock item</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add new stock item</button>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add stock item</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{url('/admin/add_stock')}}" method="post">
              @csrf
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Stock Code</label>
                    <input type="text" class="form-control" name="stock_code" value="{{$stock->stock_code ?? ''}}" max-length="190">
                    @error('stock_code')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Name</label>
                    <input type="text" class="form-control" name="name" value="{{$stock->name ?? ''}}" max-length="190">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Unit of Measure</label>
                    <input type="text" class="form-control" name="unit_of_measure" value="{{$stock->unit_of_measure ?? ''}}" max-length="190">
                    @error('unit_of_measure')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Unit Cost</label>
                    <input type="text" class="form-control" name="unit_cost" value="{{$stock->unit_cost ?? ''}}" max-length="190">
                    @error('unit_cost')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label class="bmd-label-floating">Margin</label>
                    <input type="text" class="form-control" name="margin" value="{{$stock->margin ?? ''}}" max-length="190">
                    @error('margin')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <input type="hidden" value="{{$stock->id ?? '0'}}" name="id">
              <button type="submit" class="btn btn-primary pull-left">Add</button>
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Stock List</h4>
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
                Stock Code
              </th>
              <th>
                Name
              </th>
              <th>
                Unit of Measure
              </th>
              <th>
                Unit Cost
              </th>
              <th>
                Margin
              </th>

              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>
              @if(count($stocks)>0)
              @foreach ($stocks as $stock)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                <td>
                  {{$stock->stock_code ?? ''}}
                </td>
                <td>
                  {{$stock->name ?? ''}}
                </td>
                <td>
                  {{$stock->unit_of_measure ?? ''}}
                </td>
                <td>
                  {{$stock->unit_cost ?? ''}}
                </td>
                <td>
                  {{$stock->margin ?? ''}}
                </td>

                <td>
                  <div class="btn-group">
                    <a href="{{url('admin/stock/'.$stock->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
<!--                     <form action="{{url('admin/remove_stock')}}" method="post">
                      {{ csrf_field() }}
                      <input type="hidden" name="id" value="{{$stock->id ?? ''}}">
                      <input type="hidden" name="_method" value="DELETE"> -->
                      <a href="{{url('admin/remove_stock')}}?id={{$stock->id ?? ''}}" class="del-btn"><button type="submit" class="btn btn-danger btn-sm" style="margin-left:10px">Delete</button></a>
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