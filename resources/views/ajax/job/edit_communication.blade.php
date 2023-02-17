<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Action taken / Communication</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('job.save.communication', $item->id) }}">
                  @csrf
                  <input type="hidden" name="job_id">
                  <div class="form-group">
                    <label>Date</label>
                    <input type="text" class="form-control datepicker" name="date">
                  </div>
                  <div class="form-group">
                    <label>Action taken / Communication</label>
                    <input type="text" class="form-control" name="details">
                  </div>
                  <div class="form-group">
            <label>Communication Type</label>
            <select class="form-control" name="com_type">
              <option disabled>Select Communication Type</option>
              <option value="Text">Text</option>
              <option value="Office update">Office update</option>
              <option value="Office phone">Office phone</option>
              <option value="Email from outlook">Email from outlook</option>
              <option value="Whatapp">Whatapp</option>
              <option value="Mobile call">Mobile call</option>
            </select>
          </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])

