<form action="{{route('block.save')}}" method="post">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
            <label>Type</label>
                <select name="type" required="" class="form-control">
                    <option value="" disabled selected>Select Block Type</option>
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
                <textarea name="detail" class="form-control" rows="5"></textarea>
                @if($errors->has('cost_1st_nozzle'))
                {{ $errors->first('cost_1st_nozzle') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>