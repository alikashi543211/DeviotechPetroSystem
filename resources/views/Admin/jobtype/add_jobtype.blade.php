@extends('Admin.layouts.dashboard')
@section('page-title', 'Add Jobtype')
@section('content')

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Add Jobtype</h4>
            </div>
            <div class="card-body">
                <form action="{{route('createjobtype')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Name</label>
                                <input type="text" name="name" class="form-control" value="" max-length="190">
                                @error('name')
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