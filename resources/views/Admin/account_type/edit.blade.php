@extends('Admin.layouts.dashboard')
@section('page-title', 'Edit Account Type')
@section('content')
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Edit Account Type</h4>
            </div>
            <div class="card-body">
                <form action="{{route('account_type.save', $account_type->id)}}" method="post" id="account_type">
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
@section('js')
    <script type="text/javascript">
        function mapQuotationDataToFields(data)
        {
            $.map(data, function(value, index){
                var input = $('#account_type [name="'+index+'"]');
                if($(input).length)
                {
                    if($('input').attr('type') == 'checkbox' && value == $(input).val())
                    $(input).prop('checked', true);
                    else
                        $(input).val(value).change();
                }
            });
        }
        var q_data = <?php echo json_encode($account_type->toArray()) ?>;
        mapQuotationDataToFields(q_data);
    </script>
@endsection
