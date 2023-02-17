@extends('Admin.layouts.dashboard')
@section('page-title', 'Supplier List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <!-- <a href="{{url('/admin/supplier')}}"><button type="button" class="btn btn-success">+ add new supplier</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add new supplier</button>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add supplier</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{url('/admin/add_supplier')}}" method="post">
              @csrf
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Supplier Code</label>
                    <input type="text" class="form-control" name="supplier_code" value="{{$supplier->supplier_code ?? ''}}" max-length="190">
                    @error('supplier_code')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Name</label>
                    <input type="text" class="form-control" name="name" value="{{$supplier->name ?? ''}}" max-length="190">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Email</label>
                    <input type="text" class="form-control" name="email" value="{{$supplier->email ?? ''}}" max-length="190">
                    @error('email')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Work phone</label>
                    <input type="text" class="form-control" name="work_phone" value="{{$supplier->work_phone ?? ''}}" max-length="190">
                    @error('work_phone')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Address 1</label>
                    <input type="text" class="form-control" name="address_1" value="{{$supplier->address_1 ?? ''}}" max-length="190">
                    @error('address_1')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Adress 2</label>
                    <input type="text" class="form-control" name="address_2" value="{{$supplier->address_2 ?? ''}}" max-length="190">
                    @error('address_2')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Address 3</label>
                    <input type="text" class="form-control" name="address_3" value="{{$supplier->address_3 ?? ''}}" max-length="190">
                    @error('address_3')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Address 4</label>
                    <input type="text" class="form-control" name="address_4" value="{{$supplier->address_4 ?? ''}}" max-length="190">
                    @error('address_4')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Notes</label>
                    <input type="text" class="form-control" name="notes" value="{{$supplier->notes ?? ''}}" max-length="190">
                    @error('notes')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <input type="hidden" value="{{$supplier->id ?? '0'}}" name="id">
              <button type="submit" class="btn btn-primary pull-left">Add</button>
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Supplier List</h4>
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
                Supplier Code
              </th>
              <th>
                Name
              </th>
              <th>
                Email
              </th>
              <th>
                Work Phone
              </th>
              <th>
                Address 1
              </th>
              <th>
                Address 2
              </th>
              <th>
                Address 3
              </th>
              <th>
                Address 4
              </th>
              <th>
                Notes
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>
              @if(count($suppliers)>0)
              @foreach ($suppliers as $supplier)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                <td>
                  {{$supplier->supplier_code ?? ''}}
                </td>
                <td>
                  {{$supplier->name ?? ''}}
                </td>
                <td>
                  {{$supplier->email ?? ''}}
                </td>
                <td>
                  {{$supplier->work_phone ?? ''}}
                </td>
                <td>
                  {{$supplier->address_1 ?? ''}}
                </td>
                <td>
                  {{$supplier->address_2 ?? ''}}
                </td>
                <td>
                  {{$supplier->address_3 ?? ''}}
                </td>
                <td>
                  {{$supplier->address_4 ?? ''}}
                </td>
                <td>
                  {{$supplier->notes ?? ''}}
                </td>
                <td>
                  <div class="btn-group">
                    <a href="{{url('admin/supplier/'.$supplier->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
<!--                     <form method="post">
                      {{ csrf_field() }}
                      <input type="hidden" name="id" value="{{$supplier->id ?? ''}}">
                      <input type="hidden" name="_method" value="DELETE"> -->
                      <a href="{{url('admin/remove_supplier')}}?id={{$supplier->id ?? ''}}" class="del-btn"><button type="submit" class="btn btn-danger btn-sm" style="margin-left:10px">Delete</button></a>
                    <!-- </form> -->
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