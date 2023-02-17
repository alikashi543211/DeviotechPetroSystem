<form action="{{route('payment_term.save')}}" method="post">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Payment Term</label>
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
