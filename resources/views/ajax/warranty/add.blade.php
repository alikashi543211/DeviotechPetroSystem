<form action="{{route('warranty.save')}}" method="post">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Warranty</label>
                <input type="text" name="title" class="form-control">
                @if($errors->has('title'))
                    {{ $errors->first('title') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>
