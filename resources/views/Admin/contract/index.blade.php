@extends('Admin.layouts.dashboard')
@section('page-title', 'Contract List')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="col-md-12 text-right">
            <!-- <a href="{{route('contract.add')}}"><button type="button" class="btn btn-success">+ add contract</button></a> -->
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-contract">+ Add new Contract</button>
        </div>
        <div class="modal fade" id="add-contract" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <h5 class="modal-title text-white bold">Add Contract</h5>
                        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('contract.save')}}" method="post">
                            @csrf
                            <input type="hidden" name="direction" value="{{ route('contract.list') }}" />
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" name="title" class="form-control">
                                        @error('title')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Value</label>
                                        <input type="text" name="value" class="form-control">
                                        @error('value')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
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
                                        @error('status')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                            </div>
                            <button type="submit" class="btn btn-primary pull-left">Save</button>
                            <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Contract List</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-stripped">
                        <thead>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Title</th>
                            <th>Value</th>
                            <th>Status</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @foreach ($contract as $item)
                            <tr>
                                <td>{{ $item->start_date }}</td>
                                <td>{{ $item->end_date }}</td>
                                <td>{{ $item->title }}</td>
                                <td>{{ $item->value }}</td>
                                <td>{{ $item->status }}</td>
                                <td>
                                    <a href="{{route('contract.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                                    <a href="{{route('contract.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
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