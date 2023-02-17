<form action="{{url('/admin/add_pump_make_and_model')}}" method="post">
    @csrf
    <div class="row">
      <div class="col-md-12">
        <div class="form-group">
          <label class="bmd-label-floating">Make & Model</label>
          <input type="text" class="form-control" name="make_model" value="{{$make_model->make_model ?? ''}}" max-length="190">
          @error('make_model')
          <div class="alert alert-danger">{{ $message }}</div>
          @enderror
        </div>
      </div>
    </div>
    <input type="hidden" value="{{$make_model->id ?? '0'}}" name="id">
    <button type="submit" class="btn btn-primary pull-left">Add</button>
    <a href="/admin/dashboard" class="btn btn-danger">Close</a>
    <div class="clearfix"></div>
  </form>