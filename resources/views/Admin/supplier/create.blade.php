@extends('Admin.layouts.dashboard')
@section('page-title', ' Supplier')
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
        <h4 class="card-title"> Supplier</h4>
      </div>
      <div class="card-body">
        <form action="{{url('/admin/add_supplier')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Supplier Code</label>
                <input type="text" class="form-control" name="supplier_code" value="{{$supplier->supplier_code ?? ''}}" required max-length="190">
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
          <a href="/admin/dashboard" class="btn btn-danger">Close</a>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
  </div>
  <div class="col-md-3"></div>
</div>
@stop