<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Line Item</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('verif_quotation.save.item', $item->id) }}">
                    @csrf
                    <input type="hidden" name="verif_quotation_id" value="{{ $item->verif_quotation_id }}">
                    <div class="form-group">
                      <label>Number</label>
                      <input type="text" class="form-control" name="number">
                    </div>
                    <div class="form-group">
                      <label>Nozzles</label>
                      <input type="text" class="form-control" name="nozzles">
                    </div>
                    <div class="form-group">
                      <label>Cost 1st Nozzle</label>
                      <input type="text" class="form-control" name="cost_1st_nozzle">
                    </div>
                    <div class="form-group">
                      <label>Cost Other Nozzles</label>
                      <input type="text" class="form-control" name="cost_other_nozzles">
                    </div>
                    <div class="form-group">
                      <label>Cost All Nozzles</label>
                      <input type="text" class="form-control" name="cost_all_nozzles">
                    </div>
                    <button class="btn btn-primary">Save</button>
                    <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])
