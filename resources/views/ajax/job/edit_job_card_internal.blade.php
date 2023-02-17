<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Labour</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('job.save.labour', $item->id) }}">
                  @csrf
                  <input type="hidden" name="job_id" value="">
                  <div class="form-group">
                    <label>Cost For Materials</label>
                    <input type="text" class="form-control" name="materials_cost" readonly="">
                  </div>
                  <div class="form-group">
                    <label>Cost For Labour</label>
                    <input type="text" class="form-control" name="labour_cost" readonly="">
                  </div>
                  <div class="form-group">
                    <label>Engineer</label>
                    <select class="form-control editstaff" name="contact_id">
                      <option value="" selected="" disabled="">Select Engineer</option>
                      @foreach($contact->sortBy('surname') as $s)
                        <option data-hourly_rate='{{ $s->charge ?? "0" }}' value="{{ $s->id }}">{{ ucfirst($s->surname) }} {{ ucfirst($s->forename) }}
                        </option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Job Sheet</label>
                    <input type="text" class="form-control" name="job_sheet">
                  </div>
                  <div class="form-group">
                    <label>Site arrival time</label>
                    <input type="text" autocomplete="off" class="form-control time time1" name="start">
                  </div>
                  <div class="form-group">
                    <label>Site finish time</label>
                    <input type="text" autocomplete="off" class="form-control time time2" name="end">
                  </div>
                  <div class="form-group">
                    <label>Hours on site</label>
                    <input type="text" class="form-control hrs" name="hours" readonly="">
                  </div>
                  <div class="form-group">
                    <label>Cost per hour site</label>
                    <input type="text" class="form-control" name="cost_per_hour_site">
                  </div>
                  <div class="form-group">
                    <label>Travel Time</label>
                    <input type="text" autocomplete="off" class="form-control time time3" name="travel_time">
                  </div>
                  <div class="form-group">
                    <label>Cost per hour travel</label>
                    <input type="text" class="form-control" name="cost_per_hour_travel">
                  </div>
                  <div class="form-group">
                    <label>Total cost site</label>
                    <input type="text" class="form-control" name="total_cost_site">
                  </div>
                  <div class="form-group">
                    <label>Total Cost Travel </label>
                    <input type="text" class="form-control" name="total_cost_travel">
                  </div>
                  <div class="form-group">
                    <label>Works Completed</label>
                    <textarea rows="3" class="form-control" name="completed_detail"></textarea>
                  </div>
                  <div class="form-group">
                    <label>Amount</label>
                    <input type="text" class="form-control" name="amount" id="">
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])
