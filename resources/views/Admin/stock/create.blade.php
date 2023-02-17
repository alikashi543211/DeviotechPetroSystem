@extends('Admin.layouts.dashboard')
@section('page-title', 'Stock Item')
@section('content')




<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Stock Item</h4>
      </div>
      <div class="card-body">
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
          <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
  </div>
  <div class="col-md-3"></div>
</div>
@stop