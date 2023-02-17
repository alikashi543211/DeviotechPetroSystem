<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Purchase</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('job.save.purchase', $item->id) }}">
                  @csrf
                  <div class="form-group">
                    <label>Job ID</label>
                  <input type="text" name="job_id" class="form-control" value="" readonly>
                  </div>
                  <div class="form-group">
                    <label>PO Number</label>
                    <input type="text" name="po_number" class="form-control" value="{{$item->id}}" readonly>
                  </div>
                  <div class="form-group">
                    <label>Date</label>
                    <input type="text" class="form-control" name="date" readonly="">
                  </div>
                  <div class="form-group">
                    <label>Supplier</label>
                    <select class="form-control" name="supplier_id">
                      <option value="" selected="" disabled="">Select Supplier</option>
                      @foreach($supplier as $s)
                      <option value="{{ $s->id }}">{{ $s->name }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control supplier_email" value="{{ $item->supplier->email }}" name="supplier_email" readonly>
                  </div>
                  <div class="form-group">
                    <label>Items Req</label>
                    <input type="text" class="form-control" name="items_required">
                  </div>
                  <div class="form-group">
                    <label>Specs</label>
                    <textarea type="text" rows="3" class="form-control" name="specification"></textarea>
                  </div>
                  <div class="form-group">
                    <label>Purchased By</label>
                    <input type="text" class="form-control" name="purchased_by">
                  </div>
                  <div class="form-group">
                    <label>Value</label>
                    <input type="text" class="form-control" name="value">
                  </div>
                  <div class="form-group form-check mb-2 pl-1">
                    <label class="form-check-label">
                        <input class="form-check-input checkbox_extra_to_job" type="checkbox" name="extra_to_job_edit" value="1" @if($item->extra_to_job=='1') checked @endif>
                        Extra To Job
                        <span class="form-check-sign">
                            <span class="check"></span>
                        </span>
                    </label>
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])