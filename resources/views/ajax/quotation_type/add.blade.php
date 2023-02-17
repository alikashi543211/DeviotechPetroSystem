<form action="{{route('quotation_type.save')}}" method="post">
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
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>
