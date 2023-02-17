<form action="{{route('cc.save')}}" method="post">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Email</label>
                <input type="text" name="email" class="form-control">
                @if($errors->has('email'))
                    {{ $errors->first('vat') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>
