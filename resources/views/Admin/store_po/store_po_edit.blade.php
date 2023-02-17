@extends('Admin.layouts.dashboard')
@section('page-title', 'Edit Store P.O.')
@section('content')

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Store Purchase Order</h4>
            </div>
            <div class="card-body">
                <form action="{{route('store_po_update',['id'=>$store_po->id])}}" method="post" id="add_store_po_form">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">PO Number</label>
                                <input type="text" name="po_number" class="form-control" value="{{ $store_po->id }}" max-length="190" readonly="">
                                @error('po_number')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                              <label class="bmd-label-floating">Supplier</label>
                              <select name="supplier_id" id="customer" class="form-control">
                                <option value="{{$supplier->id}}" data-email="{{$supplier->email}}" data-address1="{{ $supplier->address_1 }}" data-address2="{{ $supplier->address_2 }}" data-address3="{{ $supplier->address_3 }}" >{{$supplier->name}}</option>
                              </select>
                              @error('supplier_id')
                              <div class="alert alert-danger">{{ $message }}</div>
                              @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                              <label class="bmd-label-floating">Email</label>
                              <input type="text" name="supplier_email" class="form-control supplier_email" value="" max-length="190" readonly>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Address</label>
                                <input type="text" class="form-control addresses"  value="" readonly="">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Address</label>
                                <input type="text" class="form-control addresses"  value="" readonly="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Value</label>
                                <input type="text" name="value" class="form-control" value="{{ $store_po->value }}" max-length="190">
                                @error('value')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Date</label>
                                <input type="text" class="form-control datepicker" name="date" value="{{ $store_po->date }}" max-length="190">
                                @error('date')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Item Required</label>
                                <textarea name="items_required" class="form-control" rows="3">{{ $store_po->items_required }}</textarea>
                                @error('items_required')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Specification</label>
                                <textarea class="form-control" name="specification" rows="4">{{ $store_po->specification }}</textarea>
                                @error('specification')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Purchased By</label>
                                <input type="text" class="form-control" name="purchased_by" value="{{ $store_po->purchased_by }}">
                                @error('purchased_by')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group form-check mb-2 pl-1">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" value="1" {{ $store_po->extra_to_job == 1 ? 'checked' : '' }} name="extra_to_job">
                                        Extra To Job
                                    <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>
@stop

@section('js')
<script>
    $(document).ready(function(){
        var option = $('#customer').find('option:selected');
        var address = option.data('address1') + " " + option.data('address2') + " " + option.data('address3');
        $('.addresses').val(address);
        var email = option.data('email');
        $("#add_store_po_form .supplier_email").val(email);
    });
</script>
@endsection
