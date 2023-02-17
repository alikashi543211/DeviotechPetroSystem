<form action="{{route('communication.save', $communication->id)}}" method="post" id="communication">
    @csrf
    <div class="row">
        
        <div class="col-md-12">
            <div class="form-group">
                <label>Communication / Action Taken</label>
                <textarea  name="action_taken" class="form-control" rows="5"></textarea>
                @if($errors->has('action_taken'))
                {{ $errors->first('action_taken') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <a href="/admin/dashboard" class="btn btn-danger">Close</a>
    <div class="clearfix"></div>
</form>
<script type="text/javascript">
    function mapDataToFields(data) {
        $.map(data, function(value, index) {
            var input = $('#setting-modal [name="' + index + '"]');
            if ($(input).length) {
                if ($('input').attr('type') == 'checkbox' && value == $(input).val())
                    $(input).prop('checked', true);
                else
                    $(input).val(value).change();
            }
        });
    }
    var data = <?php echo json_encode($communication) ?>;
    mapDataToFields(data);
</script>