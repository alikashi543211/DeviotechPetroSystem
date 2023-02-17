@extends('Admin.layouts.dashboard')
@section('page-title', 'Add Customer')
@section('content')


<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Add Customer</h4>
            </div>
            <div class="card-body">
                <form action="{{route('storecustomer')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Account Type</label>
                                <select name="account_type_id" class="form-control">
                                    <option value="" selected disabled>Select Account Type</option>
                                    @foreach ($account_types as $at)
                                        <option value="{{ $at->id }}">{{ $at->account_type }}</option>
                                    @endforeach
                                </select>
                                @error('account_type')
                                <div class="alert alert-danger">{{ $account_type }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">A/C Code</label>
                                <input type="text" name="code" class="form-control" value="" max-length="190">
                                @error('code')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Eircode</label>
                                <input type="text" class="form-control" name="eircode" value="" max-length="190">
                                @error('eircode')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Name</label>
                                <input type="text" class="form-control" name="name" value="" max-length="190">
                                @error('name')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Email</label>
                                <input type="email" class="form-control" name="email" value="" max-length="190">
                                @error('email')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Work phone</label>
                                <input type="text" class="form-control" name="workphone" value="" max-length="190">
                                @error('workphone')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Credit Status</label>
                                <input type="text" class="form-control" name="status" value="" max-length="190">
                                @error('status')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Address 1</label>
                                <input type="text" class="form-control" name="address1" value="" max-length="190">
                                @error('address1')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Address 2</label>
                                <input type="text" class="form-control" name="address2" value="" max-length="190">
                                @error('address2')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Address 3</label>
                                <input type="text" class="form-control" name="address3" value="" max-length="190">
                                @error('address3')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Address 4</label>
                                <input type="text" class="form-control" name="address4" value="" max-length="190">
                                @error('address4')
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
</div>
@stop
