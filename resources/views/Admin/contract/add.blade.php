@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Contract')
@section('content')
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-12">
        @if($req->customer_id)
            <a href="{{ route('customer_history.history', $req->customer_id) }}" class="btn btn-success bold">Goto History Page</a>
        @endif
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Contract</h4>
            </div>
            <div class="card-body">
                <form action="{{route('contract.save')}}" method="post">
                    @csrf
                    @if($req->customer_id)
                        <input type="hidden" name="direction" value="{{ route('customer_history.history', $req->customer_id) }}/contracts" />
                    @else
                        <input type="hidden" name="direction" value="{{ route('contract.list') }}" />
                    @endif
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>A/C Code *</label>
                                <select class="form-control" name="customer_id" id="customer_id">
                                    @if($req->customer_id)
                                    <option value="{{ $customer->id }}" selected>{{ $customer->code }}</option>
                                    @else
                                        <option selected disabled>Select A/C Code</option>
                                        @foreach($customer as $cus )
                                        <option value="{{ $cus->id }}" {{ $req->customer_id ? $req->customer_id == $cus->id ? 'selected' : '' : '' }}>{{ $cus->code }}</option>
                                        @endforeach
                                    @endif
                                </select>
                                @if($errors->has('customer_id'))
                                {{ $errors->first('customer_id') }}
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
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" name="title" class="form-control">
                                @if($errors->has('title'))
                                {{ $errors->first('title') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Value</label>
                                <input type="text" name="value" class="form-control">
                                @if($errors->has('value'))
                                {{ $errors->first('value') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Status</label>
                                <select name="status" class="form-control">
                                    <option value="Pending" selected disabled>Pending</option>
                                    <option value="Active">Active</option>
                                    <option value="Completed">Completed</option>
                                </select>
                                @if($errors->has('status'))
                                {{ $errors->first('status') }}
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