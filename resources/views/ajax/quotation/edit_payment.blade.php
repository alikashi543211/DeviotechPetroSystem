<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Received Payment</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('quotation.save.payment', $item->id) }}">
                  @csrf
                  <input type="hidden" name="quotation_id" value="{{ $item->quotation_id }}">
                  <div class="form-group">
                    <label>Date</label>
                    <input type="text" class="form-control datepicker" name="date" value="{{ strtoupper($item->date) }}">
                  </div>
                  <div class="form-group">
                    <label>Invoice No</label>
                    <input type="text" class="form-control" name="invoice_no">
                  </div>
                  <div class="form-group">
                    <label>Details</label>
                    <input type="text" class="form-control" name="details">
                  </div>
                  <div class="form-group">
                    <label>Amount Received</label>
                    <input type="text" class="form-control" name="amount_received">
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])
