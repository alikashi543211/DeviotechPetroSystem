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
                    <label>Date</label>
                    <input type="text" class="form-control" name="date" readonly="">
                  </div>
                  <div class="form-group">
                    <label>Engineer</label>
                    <select class="form-control editstaff" name="contact_id">
                      <option value="" selected="" disabled="">Select Engineer</option>
                      @if(!is_null($item->form_id))
                        <option data-hourly_rate='{{ $eng_contact->charge ?? "0" }}' value="{{ $eng_contact->id }}">{{ ucfirst($eng_contact->surname) }} {{ ucfirst($eng_contact->forename) }}
                        </option>
                      @else
                          @foreach($contact->sortBy('surname') as $s)
                            <option data-hourly_rate='{{ $s->charge ?? "0" }}' value="{{ $s->id }}">{{ ucfirst($s->surname) }} {{ ucfirst($s->forename) }}
                            </option>
                          @endforeach
                      @endif
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Job Sheet</label>
                    <input type="text" class="form-control" name="job_sheet" @if(!is_null($item->form_id)) readonly @endif>
                  </div>
                  <div class="form-group">
                    <label>Site arrival time</label>
                    <input type="text" autocomplete="off" class="form-control time time1" name="start" @if(!is_null($item->form_id)) readonly @endif>
                  </div>
                  <div class="form-group">
                    <label>Site finish time</label>
                    <input type="text" autocomplete="off" class="form-control time time2" name="end" @if(!is_null($item->form_id)) readonly @endif>
                  </div>
                  <div class="form-group">
                    <label>Hours on site</label>
                    <input type="text" class="form-control hrs hours" name="hours" readonly="" @if(!is_null($item->form_id)) readonly @endif>
                  </div>
                  <div class="form-group">
                    <label>Cost per hour site</label>
                    <input type="text" class="form-control cost_per_hour_site" name="cost_per_hour_site">
                  </div>
                  <div class="form-group">
                    <label>Travel Time</label>
                    <input type="text" autocomplete="off" class="form-control time time3 travel_time" name="travel_time" @if(!is_null($item->form_id)) readonly @endif>
                  </div>
                  <div class="form-group">
                    <label>Cost per hour travel</label>
                    <input type="text" class="form-control cost_per_hour_travel" name="cost_per_hour_travel">
                  </div>
                  <div class="form-group">
                    <label>Total cost site</label>
                    <input type="text" class="form-control total_site_cost" name="total_cost_site" readonly>
                  </div>
                  <div class="form-group">
                    <label>Total Cost Travel </label>
                    <input type="text" class="form-control total_travel_cost" name="total_cost_travel" readonly>
                  </div>
                  @if(is_null($item->form_id))
                    <div class="form-group">
                      <label>Works Completed</label>
                      <textarea rows="3" class="form-control" name="completed_detail"></textarea>
                    </div>
                  @endif
                  <div class="form-group">
                    <label>Amount</label>
                    <input type="text" class="form-control total_cost_amount" name="amount" id="" readonly>
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])
