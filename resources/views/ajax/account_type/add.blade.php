<form action="{{route('account_type.save')}}" method="post">
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
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>
