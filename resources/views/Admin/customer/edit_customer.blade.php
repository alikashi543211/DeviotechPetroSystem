@extends('Admin.layouts.dashboard')
@section('page-title', 'Edit Customer')
@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Edit Customer</h4>
            </div>
            <div class="card-body">
                <form action="{{route('updatecustomer',['id'=>$customer->id])}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Account Type</label>
                                <select name="account_type_id" class="form-control">
                                    <option value="" selected disabled>Select Account Type</option>
                                    @foreach ($account_types as $at)
                                    <option value="{{ $at->id }}" {{ $at->id == $customer->account_type_id ? 'selected' : '' }}>{{ $at->account_type }}</option>
                                    @endforeach
                                </select>
                                @error('account_type_id')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                              <label class="bmd-label-floating">Service contract</label>
                              <select name="service_contract" class="form-control">
                                <option value="" selected disabled>Select Contract</option>
                                <option value="yes" @if($customer->service_contract=='yes') selected @endif>Service Contract</option>
                                <option value="No" @if($customer->service_contract=='No') selected @endif>No Service Contract</option>
                            </select>
                            @error('service_contract')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="bmd-label-floating">A/C Code</label>
                            <input type="text" name="code" class="form-control" value="{{$customer->code}}" max-length="190">
                            @error('code')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="bmd-label-floating">Eircode</label>
                            <input type="text" class="form-control" name="eircode" value="{{$customer->eircode}}" max-length="190">
                            @error('eircode')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="bmd-label-floating">Name</label>
                            <input type="text" class="form-control" name="name" value="{{$customer->name}}" max-length="190">
                            @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="bmd-label-floating">Email</label>
                            <input type="email" class="form-control" name="email" value="{{$customer->email}}" max-length="190">
                            @error('email')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="bmd-label-floating">Work phone</label>
                            <input type="text" class="form-control" name="workphone" value="{{$customer->workphone}}" max-length="190">
                            @error('workphone')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Credit Status</label>
                          <select name="status" class="form-control credit_status">
                            <option value="" selected disabled>Select Credit Status</option>
                            <option value="OK" @if($customer->status=='OK') selected @endif>OK</option>
                            <option value="Hold ref Nora" @if($customer->status=='Hold ref Nora') selected @endif>Hold - ref Nora</option>
                            <option value="Balance Outstanding" @if($customer->status=='Balance Outstanding') selected @endif>Balance Outstanding</option>
                        </select>
                        @error('status')
                        <div class="alert alert-danger">{{ $account_type }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="bmd-label-floating">Address 1</label>
                        <input type="text" class="form-control" name="address1" value="{{$customer->address1}}" max-length="190">
                        @error('address1')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="bmd-label-floating">Address 2</label>
                        <input type="text" class="form-control" name="address2" value="{{$customer->address2}}" max-length="190">
                        @error('address2')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="bmd-label-floating">Address 3</label>
                        <input type="text" class="form-control" name="address3" value="{{$customer->address3}}" max-length="190">
                        @error('address3')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                {{--<div class="col-md-6">
                    <div class="form-group">
                        <label class="bmd-label-floating">Address 4</label>
                        <input type="text" class="form-control" name="address4" value="{{$customer->address4}}" max-length="190">
                        @error('address4')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>--}}
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="bmd-label-floating">Note</label>
                        <input type="text" class="form-control customer_note" name="notes" value="{{$customer->notes}}">
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

@section('js')
@endsection