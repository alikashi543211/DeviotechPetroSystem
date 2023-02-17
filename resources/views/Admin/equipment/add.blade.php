@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Equipment')
@section('content')
<div class="row">
    <div class="col-md-12">
        @if($req->customer_id)
        <a href="{{ route('customer_history.history', $req->customer_id) }}" class="btn btn-success bold">Goto History Page</a>
        @endif
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Equipment</h4>
            </div>
            <div class="card-body">
                <form action="{{route('equipment.save')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>A/C Code *</label>
                                <select class="form-control" name="customer_id" id="customer_id">
                                    <option selected disabled>Select A/C Code</option>
                                    @foreach($customer as $cus )
                                    <option value="{{ $cus->id }}" {{ $req->customer_id ? $req->customer_id == $cus->id ? 'selected' : '' : '' }}>{{ $cus->code }}</option>
                                    @endforeach
                                </select>
                                @if($errors->has('customer_id'))
                                {{ $errors->first('customer_id') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Make and Model *</label>
                                <select class="form-control" name="pump_make_and_model_id" id="pump_make_and_model_id">
                                    <option selected disabled>Select Make and Model</option>
                                    @foreach($make_model as $mm )
                                    <option value="{{ $mm->id }}">{{ $mm->make_model }}</option>
                                    @endforeach
                                </select>
                                @if($errors->has('pump_make_and_model_id'))
                                {{ $errors->first('pump_make_and_model_id') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Serial #</label>
                                <input type="text" name="serial" class="form-control">
                                @if($errors->has('serial'))
                                {{ $errors->first('serial') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Type</label>
                                <select name="type" class="form-control">
                                    <option value="" selected disabled>Select Type</option>
                                    <option value="1">Dual</option>
                                    <option value="2">Mono</option>
                                    <option value="3">Quad</option>
                                    <option value="4">Six Hose</option>
                                </select>
                                @if($errors->has('type'))
                                {{ $errors->first('type') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Equipment No</label>
                                <input type="text" name="equipment_no" class="form-control">
                                @if($errors->has('equipment_no'))
                                {{ $errors->first('equipment_no') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Quantity</label>
                                <input type="text" name="quantity" class="form-control">
                                @if($errors->has('quantity'))
                                {{ $errors->first('quantity') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>No. Months</label>
                                <input type="text" name="no_of_months" class="form-control no_of_months">
                                @if($errors->has('no_of_months'))
                                {{ $errors->first('no_of_months') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Start Date</label>
                                <input type="text" name="start_date" class="form-control datepicker start_date">
                                @if($errors->has('start_date'))
                                {{ $errors->first('start_date') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>End Date</label>
                                <input type="text" name="end_date" class="form-control datepicker end_date">
                                @if($errors->has('end_date'))
                                {{ $errors->first('end_date') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="/admin/dashboard" class="btn btn-danger">Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>
@stop
@section('js')
@endsection