@extends('Admin.layouts.dashboard')
@section('page-title', 'Verification Quotations List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <a href="{{route('verif_quotation.add')}}"><button type="button" class="btn btn-success">+ add verif quotation</button></a>
      {{-- <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add verif quotation</button> --}}
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add verif quotation</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{route('verif_quotation.save')}}" method="post">
              @csrf
              <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
              @if($req->job_id)
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Job ID *</label>
                    <input type="text" name="job_id" value="{{ $req->job_id }}" class="form-control" readonly="">
                  </div>
                </div>
              </div>
              @endif
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label>A/C Code *</label>
                    <select class="form-control customer_id" name="customer_id" id="customer_id">
                      <option selected disabled>Select A/C Code</option>
                      @foreach($customer as $cus )
                      <option value="{{ $cus->id }}" {{ $req->customer_id ? $req->customer_id == $cus->id ? 'selected' : '' : '' }}>{{ $cus->code }}</option>
                      @endforeach
                    </select>
                    @if($errors->has('customer_id'))
                    {{ $errors->first('customer_id') }}
                    @endif
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control name" readonly>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" class="form-control address" readonly>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Quotation Type</label>
                    <select class="form-control" name="quotation_type_id" id="cars">
                      <option value="" selected disabled>Select Quotation Type</option>
                      @foreach ($quotation_type as $qt)
                      <option value="{{ $qt->id }}">{{ $qt->type }}</option>
                      @endforeach
                    </select>
                    @if($errors->has('quotation_type_id'))
                    {{ $errors->first('quotation_type_id') }}
                    @endif
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Date</label>
                    <input type="text" class="form-control datepicker" name="date" value="" max-length="190">
                    @if($errors->has('date'))
                    {{ $errors->first('date') }}
                    @endif
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Expected No. Days</label>
                    <input type="text" class="form-control" name="no_of_days" value="" max-length="190">
                    @if($errors->has('no_of_days'))
                    {{ $errors->first('no_of_days') }}
                    @endif
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Signatory</label>
                    <select class="form-control" name="signatory_id" id="cars">
                      <option selected disabled>Select Signatory</option>
                      @foreach($signatories as $sig )
                      <option value="{{$sig->id}}">{{$sig->signatory}} ({{ $sig->title }})</option>
                      @endforeach
                    </select>
                    @if($errors->has('signatory'))
                    {{ $errors->first('signatory') }}
                    @endif
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Sign Off</label>
                    <select class="form-control" name="sign_off" id="cars">
                      <option value="1">Preliminaries</option>
                      <option value="2"> PSDP & PSCS</option>
                      <option value="3">Retailer</option>
                    </select>
                    @if($errors->has('sign_off'))
                    {{ $errors->first('sign_off') }}
                    @endif
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label>Travel €</label>
                    <input type="text" name="travel_km" id="travel_km" class="form-control">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label>Per Km Cost</label>
                    <input type="text" name="travel_km_cost" id="travel_km_cost" class="form-control">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label>Total Cost</label>
                    <input type="text" name="travel_total_cost" id="travel_total_cost" class="form-control">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Internal Notes</label>
                    <textarea class="form-control" name="internal_notes" rows="3"></textarea>
                    @if($errors->has('internal_notes'))
                    {{ $errors->first('internal_notes') }}
                    @endif
                  </div>
                </div>
              </div>
             <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                    <label>Block 1</label>
                    <input list="block1list" class="form-control" name="block1" id="block1" autocomplete="off">
                    <datalist id="block1list">
                      @foreach ($block1 as $b)
                      <option value="{{$b->detail}}">
                        @endforeach
                    </datalist>
                  </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                    <label>Block 2</label>
                    <input list="block2list" class="form-control" name="block2" id="block2" autocomplete="off">
                    <datalist id="block2list">
                      @foreach ($block2 as $b)
                      <option value="{{$b->detail}}">
                        @endforeach
                    </datalist>
                  </div>
            </div>
          </div>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label>% Discount</label>
                    <input type="text" name="discount" id="discount" class="form-control">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label>% Rate</label>
                    <input type="text" name="rate" id="rate" class="form-control">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label>Total Value</label>
                    <input type="text" name="total_value" id="total_value" class="form-control">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label style="display: block;">VAT</label>
                    <select name="vat_id" class="form-control">
                      <option value="" disabled selected>Select Option</option>
                      @foreach($vats as $vat)
                    <option value="{{ $vat->id }}">%{{ $vat->vat }}</option>
                      @endforeach
                    </select>
                  </div>
                </div>
                <div class="col-md-6">
                <div class="form-group">
                <label style="display: block;">Warranty</label>
                <select name="warranty_id" class="form-control">
                  <option value="" disabled selected>Select Option</option>
                  @foreach ($warranties as $v)
                  <option value="{{ $v->id }}">{{ $v->title }}</option>
                    @endforeach
                </select>
                </div>
              </div>
              </div>


              <button type="submit" class="btn btn-primary pull-left">Save</button>
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Verification Quotations List</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>
              @if(auth()->user()->role == 'admin')
              <th>Created By</th>
              @endif
              <th>
                Total Value
              </th>
              <th>
                Signatory
              </th>
              <th>
                Status
              </th>
              <th>
                A/C Code
              </th>
              <th>
                Date
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($quotations as $item)
              <tr>
                <td>{{ $item->id }}</td>
                @if(auth()->user()->role == 'admin')
                <td>{{ $item->user->name ?? '' }}</td>
                @endif
                <td>
                  {{$item->total_value}}
                </td>
                <td>
                  {{$item->signatory->signatory ?? ''}}
                </td>
                <td>
                  {{$item->status}}
                </td>
                <td>
                  {{$item->customer->code ?? ''}}
                </td>
                <td>
                  {{$item->date}}
                </td>
                <td>
                  <a href="{{route('verif_quotation.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                  <a href="{{route('verif_quotation.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
                  <a href="{{route('verif_quotation.move_to_job',['id'=>$item->id] )}}" class="btn btn-info btn-sm">Move to Job</a>
                  <a href="{{route('reports.callibri_quotation',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                        <i class="fa fa-print"></i> PDF
                    </button></a>
                    <a href="{{route('reports.verif.quotation_xls',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                        <i class="fa fa-file-excel-o"></i> XLS
                    </button></a>
                    <a href="{{route('reports.callibri_quotation',$item->id)}}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                        <i class="fa fa-print"></i> PDF Download
                    </button></a>
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
@stop
@section('js')
<script>
  $(document).ready(function() {

    $("#travel_km").keyup(function(e) {
      if ($("#travel_km_cost").val() == "") {
        $("#travel_total_cost").val($(this).val());
      } else {
        val = $("#travel_km_cost").val() * $(this).val();
        $("#travel_total_cost").val(val);
      }
    });

    $("#travel_km_cost").keyup(function(e) {
      if ($("#travel_km").val() == "") {
        $("#travel_total_cost").val($(this).val());
      } else {
        val = $("#travel_km").val() * $(this).val();
        $("#travel_total_cost").val(val);
      }
    });
  });
</script>
<script>
  $(document).ready(function() {
    $('.customer_id').on('change', function(e) {
      var val = $(this).val();
      populateNameAddress(val);
    });
  });
</script>
@endsection
