@extends('Admin.layouts.dashboard')
@section('page-title', 'Equipment List')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="col-md-12 text-right">
            <!-- <a href="{{route('equipment.add')}}"><button type="button" class="btn btn-success">+ add equipment</button></a> -->
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-equipment">+ Add new Equipment</button>
        </div>
        <div class="modal fade" id="add-equipment" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <h5 class="modal-title text-white bold">Add Equipment</h5>
                        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                            @if($req->customer_id)
                            <a href="{{ route('customer_history.history', $req->customer_id) }}" class="btn btn-success bold">Goto History Page</a>
                            @endif
                        </div>
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
                                        @error('customer_id')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
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
                                        @error('pump_make_and_model_id')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Serial #</label>
                                        <input type="text" name="serial" class="form-control">
                                        @error('serial')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
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
                                        @error('type')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Equipment No</label>
                                        <input type="text" name="equipment_no" class="form-control">
                                        @error('equipment_no')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Quantity</label>
                                        <input type="text" name="quantity" class="form-control">
                                        @error('quantity')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>No. Months</label>
                                        <input type="text" name="no_of_months" class="form-control no_of_months">
                                        @error('no_of_months')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Start Date</label>
                                        <input type="text" name="start_date" class="form-control datepicker start_date">
                                        @error('start_date')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>End Date</label>
                                        <input type="text" name="end_date" class="form-control datepicker end_date">
                                        @error('end_date')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary pull-left">Save</button>
                            <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Equipment List</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-stripped">
                        <thead>
                            <th>Make & Model</th>
                            <th>Serial #</th>
                            <th>Type</th>
                            <th>Equipment No</th>
                            <th>Quantity</th>
                            <th>No. Months</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @foreach ($equipment as $item)
                            <tr>
                                <td>{{ $item->pump_make_and_model->make_model }}</td>
                                <td>{{ $item->serial }}</td>
                                <td>{{ $item->type }}</td>
                                <td>{{ $item->equipment_no }}</td>
                                <td>{{ $item->quantity }}</td>
                                <td>{{ $item->no_of_months }}</td>
                                <td>{{ $item->start_date }}</td>
                                <td>{{ $item->end_date }}</td>
                                <td>
                                    <a href="{{route('equipment.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                                    <a href="{{route('equipment.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop