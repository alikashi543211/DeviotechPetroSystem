<form action="{{route('vat.save')}}" method="post">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>VAT(%)</label>
                <input type="text" name="vat" class="form-control">
                @if($errors->has('vat'))
                    {{ $errors->first('vat') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>
