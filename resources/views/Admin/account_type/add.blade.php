@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Account Type')
@section('content')
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Account Type</h4>
            </div>
            <div class="card-body">
                <form action="{{route('account_type.save')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Code</label>
                                <input type="text" name="code" class="form-control">
                                @if($errors->has('code'))
                                    {{ $errors->first('code') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" name="account_type" class="form-control">
                                @if($errors->has('account_type'))
                                    {{ $errors->first('account_type') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>
@stop
