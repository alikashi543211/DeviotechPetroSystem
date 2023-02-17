<form action="{{route('vat.save', $vat->id)}}" method="post" id="vat">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>VAT(%)</label>
                <input type="text" name="vat" class="form-control" value="{{$vat->vat}}">
                @if($errors->has('vat'))
                    {{ $errors->first('vat') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
    <div class="clearfix"></div>
</form>

