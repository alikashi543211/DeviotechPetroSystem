<form action="{{route('warranty.save', $warranty->id)}}" method="post" id="warranty">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>Warranty</label>
                <input type="text" name="title" class="form-control" value="{{$warranty->title}}">
                @if($errors->has('title'))
                    {{ $errors->first('title') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
    <div class="clearfix"></div>
</form>

