<form action="{{route('block.save', $block->id)}}" method="post" id="block">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Type</label>
                <select name="type" required="" class="form-control">
                    < <option value="" disabled selected>Select Block Type</option>
                    <option value="Block 1">Block 1</option>
                    <option value="Block 2">Block 2</option>
                </select>
                @if($errors->has('type'))
                {{ $errors->first('type') }}
                @endif
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label>Detail</label>
                <textarea  name="detail" class="form-control" rows="5"></textarea>
                @if($errors->has('detail'))
                {{ $errors->first('detail') }}
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
    var data = <?php echo json_encode($block) ?>;
    mapDataToFields(data);
</script>