@extends('Admin.layouts.dashboard')
@section('page-title', 'Add Tool')
@section('content')



<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Add Tool</h4>
            </div>
            <div class="card-body">
                <form action="{{route('store_tool')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Tool Code</label>
                                <input type="text" name="tool_code" class="form-control" value="" max-length="190">
                                @error('tool_code')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Serial No</label>
                                <input type="text" class="form-control" name="serial_no" value="" max-length="190">
                                @error('serial_no')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Date Purchased</label>
                                <input type="text" class="form-control datepicker" name="date_purchased" value="" max-length="190">
                                @error('date_purchased')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Purchase Price</label>
                                <input type="text" class="form-control" name="purchase_price" value="" max-length="190">
                                @error('purchase_price')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Description</label>
                                <input type="text" class="form-control" name="description" value="" max-length="190">
                                @error('description')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Notes</label>
                                <input type="text" class="form-control" name="notes" value="">
                                @error('notes')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
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