@extends('Admin.layouts.dashboard')
@section('page-title', 'Customer Emails')
@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Customer Emails</h4>
            </div>
            <div class="card-body">
                <form action="{{route('customer.update.emails',['id'=>$customer->id])}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contact Email 1</label>
                                <input type="text" class="form-control" name="cc_email_1" value="{{$customer->cc_email_1}}">
                                @error('cc_email_1')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contact Email 2</label>
                                <input type="text" class="form-control" name="cc_email_2" value="{{$customer->cc_email_2}}">
                                @error('cc_email_2')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contact Email 3</label>
                                <input type="text" class="form-control" name="cc_email_3" value="{{$customer->cc_email_3}}">
                                @error('cc_email_3')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contact Email 4</label>
                                <input type="text" class="form-control" name="cc_email_4" value="{{$customer->cc_email_4}}">
                                @error('cc_email_4')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contact Email 5</label>
                                <input type="text" class="form-control" name="cc_email_5" value="{{$customer->cc_email_5}}">
                                @error('cc_email_5')
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