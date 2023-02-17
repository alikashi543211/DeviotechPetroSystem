<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Stock Item</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('job.save.stock', $item->id) }}">
                  @csrf
                  <input type="hidden" name="job_id" value="">
                  <div class="form-group">
                    <label>Date</label>
                	<input type="text" class="form-control" name="date" readonly="">
                  </div>
                  @if(is_null($item->form_id))
                  <div class="form-group">
                    <label>Stock Item</label>
                    <select class="form-control" name="stock_item_id">
                      <option value="" selected="" disabled="">Select Stock Item</option>
                      @foreach($stock_item as $s)
                      <option value="{{ $s->id }}">{{ $s->name }}</option>
                      @endforeach
                    </select>
                  </div>
                  @else
                  <div class="form-group">
                    <label>Stock Item</label>
                    <input type="text" class="form-control" name="material_used">
                  </div>
                  @endif
                  <div class="form-group">
                    <label>Serial #</label>
                    <input type="text" class="form-control" name="serial_no">
                  </div>
                  <div class="form-group">
                    <label>Qty</label>
                    <input type="text" class="form-control edit_qty_stock_box" name="qty">
                  </div>
                  <div class="form-group">
                    <label>Price</label>
                    <input type="text" class="form-control edit_price_stock_box" name="price">
                  </div>
                  <div class="form-group">
                    <label>Total</label>
                    <input type="text" class="form-control edit_total_stock_box" name="total" readonly>
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])