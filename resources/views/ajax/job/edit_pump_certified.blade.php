<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white bold">Update Pump Certified</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('job.update.pump_certified', $item->id) }}">
          @csrf
          
        
          <div class="form-group">
            <label>Pump No</label>
            <input type="text" class="form-control" name="pump_no" value="{{$item->pump_no}}">
          </div>
           <div class="form-group">
            <label>Nozzles</label>
            <input type="text" class="form-control" name="nozzles" value="{{$item->nozzles}}">
          </div>
          <div class="form-group">
            <label>Make</label>
            <input type="text" class="form-control" name="make" value="{{$item->make}}">
          </div>
          <div class="form-group">
            <label>Serial No</label>
            <input type="text" class="form-control" name="serial_no" value="{{$item->serial_no}}">
          </div>
      
          <button class="btn btn-primary">Save</button>
          <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
        </form>
            </div>
        </div>
    </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])