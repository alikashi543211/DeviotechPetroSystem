<form method="post" action="{{ route('job.save.certificate') }}">
                  <div class="form-group">
                    <label>Job No</label>
                    <input type="text" class="form-control" name="job_id" value="{{$job->id}}" readonly>
                  </div>
                  <input type="hidden" class="form-control" name="customer_id" value="{{$job->customer_id}}" readonly>
                  <div class="form-group">
                    <label>Verification Date</label>
                    <input type="date" class="form-control" name="verification_date">
                  </div>
                  
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" value="{{$job->customer->name}}">
                  </div>
                  <div class="form-group">
                    <label>Address</label>
                    <textarea class="form-control" name="address" rows="4">{{$job->customer->address1.' '.$job->customer->address2.' '.$job->customer->address3.' '.$job->customer->address4}}</textarea>
                  </div>
                  <div class="form-group">
                    <label>Entered By</label>
                    <input type="text" class="form-control" value="{{Auth::user()->name}}" name="entered_by">
                  </div>
                   <button class="btn btn-primary">Save</button>
</form>