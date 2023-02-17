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
<script type="text/javascript">
	function mapDataToFields(data)
    {
        $.map(data, function(value, index){
            var input = $('#setting-modal [name="'+index+'"]');
            if($(input).length)
            {
            	if($('input').attr('type') == 'checkbox' && value == $(input).val())
            		$(input).prop('checked', true);
            	else
                	$(input).val(value).change();
            }
        });
    }
    var data = <?php echo json_encode($account_type) ?>;
    mapDataToFields(data);
</script>
