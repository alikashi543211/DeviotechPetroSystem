<form action="{{route('equipment.save')}}" method="post">
    @csrf
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>A/C Code *</label>
                <select class="form-control select2" name="customer_id" id="a_c_code">
                    @foreach($customers as $cus )
                    @if($req->customer_id == $cus->id)
                    <option value="{{ $cus->id }}">{{ $cus->code }}</option>
                    @endif
                    @endforeach
                </select>
                @error('customer_id')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Make and Model *</label>
                <select class="form-control select2" name="pump_make_and_model_id" id="pump_make_and_model_id">
                    <option selected disabled>Select Make and Model</option>
                    @foreach($make_model as $mm )
                    <option value="{{ $mm->id }}">{{ $mm->make_model }}</option>
                    @endforeach
                </select>
                @error('pump_make_and_model_id')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Serial #</label>
                <input type="text" name="serial" id="serial" class="form-control">
                @error('serial')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Type</label>
                <select name="type" class="form-control select2" id="type">
                    <option value="" selected disabled>Select Type</option>
                    <option value="1">Dual</option>
                    <option value="2">Mono</option>
                    <option value="3">Quad</option>
                    <option value="4">Six Hose</option>
                </select>
                @error('type')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Equipment No</label>
                <input type="text" name="equipment_no" id="equipment_no" class="form-control">
                @error('equipment_no')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Quantity</label>
                <input type="text" name="quantity" id="quantity" class="form-control">
                @error('quantity')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>No. Months</label>
                <input type="text" name="no_of_months" id="no_of_months"
                    class="form-control no_of_months">
                @error('no_of_months')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Start Date</label>
                <input type="text" name="start_date" id="start_date"
                    class="form-control datepicker start_date">
                @error('start_date')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>End Date</label>
                <input type="text" name="end_date" id="end_date"
                    class="form-control datepicker end_date">
                @error('end_date')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>
    <button type="submit" id="save_equipment" class="btn btn-primary pull-left">Save</button>
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
    <div class="clearfix"></div>
</form>