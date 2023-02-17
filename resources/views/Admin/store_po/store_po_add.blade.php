@extends('Admin.layouts.dashboard')
@section('page-title', 'Store Purchase Order')
@section('content')

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Store Purchase Order</h4>
            </div>
            <div class="card-body">
                <form action="{{route('store_po')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">PO Number</label>
                                <input type="text" name="po_number" class="form-control" value="{{$po_number+1}}" max-length="190">
                                @error('po_number')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Item Name</label>
                                <input type="text" name="Item" class="form-control" value="" max-length="190">
                                @error('Item')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Item Required</label>
                                <input type="text" name="items_required" class="form-control" value="" max-length="190">
                                @error('items_required')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Value</label>
                                <input type="text" name="value" class="form-control" value="" max-length="190">
                                @error('value')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Date</label>
                                <input type="text" class="form-control datepicker" name="date" value="" max-length="190">
                                @error('date')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Customer</label>
                                <select name="customer_id" id="customer" class="form-control">
                                    <option disabled selected>Select Customer</option>
                                    @foreach($customer as $cust)
                                    <option value="{{$cust->id}}" data-address1="{{ $cust->address1 }}" data-address2="{{ $cust->address2 }}" data-address3="{{ $cust->address3 }}">{{$cust->name}}</option>
                                    @endforeach
                                </select>
                                @error('customer_id')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Specification</label>
                                <textarea class="form-control" name="specification" id="" rows="4"></textarea>
                                @error('specification')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Purchased By</label>
                                <input type="text" class="form-control" name="purchased_by" value="">
                                @error('purchased_by')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group form-check mb-2 pl-1">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" value="1" name="extra_to_job">
                                    Extra To Job
                                    <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Add</button>
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
    $('#customer').change(function() {
        var option = $(this).find('option:selected').data('address1') + "\n" + $(this).find('option:selected').data('address2') + "\n" + $(this).find('option:selected').data('address3');
        $('.addresses').val(option);
    });
</script>
@endsection