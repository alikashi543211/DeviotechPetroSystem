@extends('Admin.layouts.dashboard')
@section('page-title', 'Edit Quotation Type')
@section('content')
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Edit Quotation Type</h4>
            </div>
            <div class="card-body">
                <form action="{{route('quotation_type.save', $quotation_type->id)}}" method="post" id="quotation_type">
                @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" name="type" class="form-control">
                                @if($errors->has('type'))
                                    {{ $errors->first('type') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Cost 1st Nozzle</label>
                                <input type="text" name="cost_1st_nozzle" class="form-control">
                                @if($errors->has('cost_1st_nozzle'))
                                    {{ $errors->first('cost_1st_nozzle') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Cost Other Nozzles</label>
                                <input type="text" name="cost_other_nozzles" class="form-control">
                                @if($errors->has('cost_other_nozzles'))
                                    {{ $errors->first('cost_other_nozzles') }}
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
    <div class="col-md-2"></div>
</div>
@stop
@section('js')
    <script type="text/javascript">
        function mapQuotationDataToFields(data)
        {
            $.map(data, function(value, index){
                var input = $('#quotation_type [name="'+index+'"]');
                if($(input).length)
                {
                    if($('input').attr('type') == 'checkbox' && value == $(input).val())
                    $(input).prop('checked', true);
                    else
                        $(input).val(value).change();
                }
            });
        }
        var q_data = <?php echo json_encode($quotation_type->toArray()) ?>;
        mapQuotationDataToFields(q_data);
    </script>
@endsection
