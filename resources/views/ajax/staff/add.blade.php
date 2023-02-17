<form action="{{route('add_staff')}}" method="post">
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        <label class="bmd-label-floating">Staff Name</label>
        <input type="text" class="form-control" name="staff" value="{{old('staff')}}" max-length="190">
        @error('staff')
        <div class="alert alert-danger">{{ $message }}</div>
        @enderror
      </div>
    </div>
    <div class="col-md-12">
      <div class="form-group">
        <label class="bmd-label-floating">Status</label>
        <select name="status" class="form-control" id="status">
          <option value="">Select Status</option>
          <option value="1">Active</option>
          <option value="0">Inactive</option>
        </select>
        @error('status')
        <div class="alert alert-danger">{{ $message }}</div>
        @enderror
      </div>
    </div>
  </div>
  
  <button type="submit" class="btn btn-primary pull-left">Add</button>
  <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
  <div class="clearfix"></div>
</form>