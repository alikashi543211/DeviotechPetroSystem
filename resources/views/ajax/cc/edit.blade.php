<form action="{{route('cc.save', $vat->id)}}" method="post" id="cc">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Email</label>
                <input type="text" name="email" class="form-control" value="{{$vat->email}}">
                @if($errors->has('email'))
                    {{ $errors->first('email') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
    <div class="clearfix"></div>
</form>

