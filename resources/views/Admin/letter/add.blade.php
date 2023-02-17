@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Email')
@section('content')
<div class="row">
    <div class="col-md-12">
        @if($req->customer_id)
        <a href="{{ route('customer_history.history', $req->customer_id) }}\emails" class="btn btn-success bold">Goto History Page</a>
        @endif
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Email</h4>
            </div>
            <div class="card-body">
                <form class="letter-form" method="post" id="letter">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>A/C Code *</label>
                                <input type="hidden" name="customer_id" value="{{$customer->id}}">
                                <select class="form-control" name="customer_id" id="customer_id">
                                    <option value="{{ $customer->id }}" Selected>{{ $customer->code }}</option>
                                </select>
                                @if($errors->has('customer_id'))
                                {{ $errors->first('customer_id') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Signatory</label>
                                <select class="form-control" name="signatory_id" id="cars">
                                    @foreach($signatory as $sig )
                                    <option value="{{$sig->id}}">{{$sig->signatory}} ({{ $sig->title }})</option>
                                    @endforeach
                                </select>
                                @if($errors->has('signatory_id'))
                                {{ $errors->first('signatory_id') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Date</label>
                                <input type="text" name="date" class="form-control datepicker date">
                                @if($errors->has('date'))
                                {{ $errors->first('date') }}
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
                                <label>Address</label>
                                <input type="text" name="address"value="{{$customer->address1." ".$customer->address2." ".$customer->address3." ".$customer->address4 }}" class="form-control">
                                @if($errors->has('address'))
                                {{ $errors->first('address') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Salutation</label>
                                <input type="text" name="salutation" class="form-control">
                                @if($errors->has('salutation'))
                                {{ $errors->first('salutation') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Internal Notes</label>
                                <textarea class="form-control" name="internal_notes" rows="3"></textarea>
                                @if($errors->has('internal_notes'))
                                {{ $errors->first('internal_notes') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email Body</label>
                                <textarea class="form-control" name="body" rows="15"></textarea>
                                @if($errors->has('body'))
                                {{ $errors->first('body') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="save_option" class="select-save" value="">
                    <button type="button" class="btn btn-primary pull-left save-btn" data="save">Save</button>
                    <button type="button" class="btn btn-success pull-left save-btn" data="save-email">Save & Email</button>
                    <a href="/admin/dashboard" class="btn btn-danger">Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
@stop
@section('js')
<script>
    @if(isset($req->customer_id))
        url="{{ route('customer_history.history',['id'=>$req->customer_id] ) }}/emails";
    @else
        url="{{ route('letter.index') }}";
    @endif
    $(document).ready(function(){
        $(".save-btn").on("click",function(){
            var val=$(this).attr("data");
            $(".select-save").val(val);
            form=$(".letter-form").serialize();
             $.ajax({
                type: "POST",
                url: "{{route('letter.save')}}",
                data: form,
                success: function (response) {
                     toastr.success(response);
                     window.location.href=url;
                }
            });
        });
    });
</script>
@endsection