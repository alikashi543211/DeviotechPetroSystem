@extends('Admin.layouts.dashboard')
@section('page-title', 'Stock Purchase order List')
@section('content')
<div class="col-12">

  <div class="row">
    <div class="col-md-12">
      <div class="col-md-12 text-right">
        <!-- <a href="{{url('/admin/store_po_add_form')}}"><button type="button" class="btn btn-success">+ add Stock Purchase order</button></a> -->
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add Store Purchase order</button>
      </div>
      <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Add Store Purchase order</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="{{route('store_po')}}" method="post" id="add_store_po_form">
                @csrf
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">PO Number</label>
                      <input type="text" name="po_number" class="form-control" value="{{$po_number+1}}" max-length="190" readonly="">
                      @error('po_number')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Supplier</label>
                      <select name="supplier_id" id="customer" class="form-control select_supplier">
                        <option disabled selected>Select Supplier</option>
                        @foreach($supplier as $sup)
                          <option value="{{$sup->id}}" data-email="{{$sup->email}}" data-address1="{{ $sup->address_1 }}" data-address2="{{ $sup->address_2 }}" data-address3="{{ $sup->address_3 }}" class="select_supplier_option">{{$sup->name}}</option>
                        @endforeach
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
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Value</label>
                      <input type="text" name="value" class="form-control" value="" max-length="190">
                      @error('value')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
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
                      <label class="bmd-label-floating">Item Required</label>
                      <textarea name="items_required" class="form-control" value="" rows="3"></textarea>
                      @error('items_required')
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
                <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="card">
        <div class="card-header card-header-primary">
          <h4 class="card-title ">Stock Purchase Order</h4>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">

                <th>
                  P.O. No.
                </th>
                <th>
                  Date
                </th>
                <th>
                  Supplier Name
                </th>
                <th>
                  Supplier Email
                </th>
                <th>
                  Value
                </th>
                <th>
                  Items Req
                </th>
                <th>
                  Specification
                </th>
                <th>
                  Purchased by
                </th>
                <th>
                  Action
                </th>
              </thead>
              <tbody>
                @foreach ($store_po as $po)

                <tr>

                  <td>
                    {{$po->po_number ?? ''}}
                  </td>
                  <td>
                    {{$po->date ?? ''}}
                  </td>
                  <td>
                    {{$po->supplier->name ?? ''}}
                  </td>
                  <td>
                    {{$po->supplier->email ?? ''}}
                  </td>
                  <td>
                    {{$po->value}}
                  </td>
                  <td>
                    {{$po->items_required}}
                  </td>
                  <td>
                    {{$po->specification}}
                  </td>
                  <td>
                    {{$po->purchased_by}}
                  </td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <a href="{{ route('reports.purchase_order', $po->id) }}"><button type="button" class="btn btn-primary btn-sm btn-fab btn-round"><i class="fa fa-print"></i></button></a>
                        <a href="{{route('store_po_edit',['id'=>$po->id])}}"><button type="button" class="btn btn-success btn-sm btn-fab btn-round"><i class="fa fa-pencil-square-o"></i></button></a>
                        <a href="{{route('store_po_delete',['id'=>$po->id] )}}" class="del-btn"><button type="button" class="btn btn-danger btn-sm btn-fab btn-round"><i class="fa fa-trash-o"></i></button></a>
                        <a href="{{ route('reports.purchase_order', $po->id) }}?download=true"><button type="button" class="btn btn-primary btn-sm btn-fab btn-round"><i class="fa fa-download"></i></button></a>
                        <a href="{{ route('reports.purchase_order', $po->id) }}?email=true"><button title="send email" type="button" class="btn btn-primary btn-sm btn-fab btn-round email-btn"><i class="fa fa-envelope"></i></button></a>
                    </div>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@stop
@section('js')
<script>
    $('#customer').change(function() {
        var option = $(this).find('option:selected');
        var address = option.data('address1') + " " + option.data('address2') + " " + option.data('address3');
        $('.addresses').val(address);
        var email = option.data('email');
        $("#add_store_po_form .supplier_email").val(email);
    });
</script>
@endsection
