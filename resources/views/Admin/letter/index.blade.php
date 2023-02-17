@extends('Admin.layouts.dashboard')
@section('page-title', 'Letter List')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="col-md-12 text-right">
            <!-- <a href="{{route('equipment.add')}}"><button type="button" class="btn btn-success">+ add equipment</button></a> -->
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add letter</button>
        </div>
        <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <h5 class="modal-title text-white bold">Add Letter</h5>
                        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('letter.save')}}" method="post" id="letter">
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
                                        <label>Signatory</label>
                                        <select class="form-control" name="signatory_id" id="cars">
                                            <option selected disabled>Select Signatory</option>
                                            @foreach($signatory as $sig )
                                            <option value="{{$sig->id}}">{{$sig->signatory}} ({{ $sig->title }})</option>
                                            @endforeach
                                        </select>
                                        @error('signatory_id')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Date</label>
                                        <input type="text" name="date" class="form-control datepicker date">
                                        @error('date')
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
                                        <label>Address</label>
                                        <input type="text" name="address" class="form-control">
                                        @error('address')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Salutation</label>
                                        <input type="text" name="salutation" class="form-control">
                                        @error('salutation')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Internal Notes</label>
                                        <textarea class="form-control" name="internal_notes" rows="3"></textarea>
                                        @error('internal_notes')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Letter Body</label>
                                        <textarea class="form-control" name="body" rows="15"></textarea>
                                        @error('body')
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
                <h4 class="card-title">Letter List</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-stripped">
                        <thead>
                            <th>ID</th>
                            <th>Customer Name</th>
                            <th>Date</th>
                            <th>Title</th>
                            <th>Address</th>
                            <th>Salutation</th>
                            <th>Internal Notes</th>
                            <th>Body</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @foreach ($letter as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->customer->name ?? "" }}</td>
                                <td>{{ $item->date }}</td>
                                <td>{{ $item->title }}</td>
                                <td>{{ $item->address }}</td>
                                <td>{{ $item->salutation }}</td>
                                <td>{{$item->internal_notes}}</td>
                                <td>{{$item->body}}</td>
                                <td>
                                    <a href="{{route('letter.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                                    <a href="{{route('letter.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
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