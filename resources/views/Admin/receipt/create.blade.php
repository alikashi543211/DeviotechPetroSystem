@extends('Admin.layouts.dashboard')
@section('page-title', 'Edit Receipt Item')
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
        <h4 class="card-title">Receipt Item</h4>
      </div>
      <div class="card-body">
        <form action="{{url('/admin/add_receipt')}}" method="post">
          @csrf
          <input type="hidden" name="receipt_id" value="{{ $receipt->id }}">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Date</label>
                <input type="text" class="form-control datepicker" name="date" value="{{$receipt->date ?? ''}}" max-length="190">
                @error('date')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Name</label>
                <select class="form-control" name="supplier">
                  <option value="">Select Supplier</option>
                  @if(count($suppliers)>0)
                  @foreach ($suppliers as $supplier)
                  <option value="{{$supplier->id ?? ''}}" @if($supplier->id==$receipt->supplier) selected @endif>{{$supplier->name ?? ''}}</option>
                  @endforeach
                  @endif
                </select>
                @error('supplier')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Stock Item</label>
                <select class="form-control" name="stock_item">
                  <option value="">Select Item</option>
                  @if(count($stocks)>0)
                  @foreach ($stocks as $stock)
                  <option value="{{$stock->id ?? ''}}" @if($stock->id==$receipt->stock_item) selected @endif>{{$stock->name ?? ''}}</option>
                  @endforeach
                  @endif
                </select>
                @error('stock_item')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Serial Number</label>
                <input type="text" class="form-control" name="serial_number" value="{{$receipt->serial_number ?? ''}}" max-length="190">

                @error('serial_number')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Quantity</label>
                <input type="text" class="form-control" name="quantity" value="{{$receipt->quantity ?? ''}}" max-length="190">
                @error('quantity')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Unit Price</label>
                <input type="text" class="form-control" name="unitprice" value="{{$receipt->unitprice ?? ''}}" max-length="190">
                @error('unitprice')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
          </div>
          <input type="hidden" value="{{$receipt->id ?? '0'}}" name="id">
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