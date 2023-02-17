@extends('Admin.layouts.dashboard')
@section('page-title', 'Stock Movement')
@section('content')

<div class="col-12">
    @if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
    @endif
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Stock Movement</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('reports.filtered.stocks_movement') }}">
                    

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>From Date</label>
                                <input type="text" class="form-control datepicker" name="from_date"
                                    value="{{ old('from_date')}}" max-length="190">
                                @if($errors->has('from_date'))
                                {{ $errors->first('from_date') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>To Date</label>
                                <input type="text" class="form-control datepicker" name="to_date"
                                    value="{{ old('to_date')}}" max-length="190">
                                @if($errors->has('to_date'))
                                {{ $errors->first('to_date') }}
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Supplier</label>
                                <select class="form-control" name="stock_code" id="status">
                                    <option value="">Select Stock Code</option>
                                    @foreach($stock_codes as $code)
                                    <option value="{{ $code->id }}">{{ $code->stock_code }}</option>
                                    @endforeach

                                </select>
                                @if($errors->has('stock_code'))
                                {{ $errors->first('stock_code') }}
                                @endif
                            </div>
                        </div>
                        
                    </div>
                    


                    <button type="submit" class="btn btn-info pull-left"><i class="fa fa-print"></i> Stock Summary</button>
                    <a href="{{ route('admin.dashboard') }}" class="btn btn-danger">Close</a>
                    <div class="clearfix"></div>
                </form> 
            </div>
        </div>
    </div>
</div>
@endsection
