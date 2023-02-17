@extends('Admin.layouts.dashboard')
@section('page-title', 'Quotations List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">

      {{-- <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add quotation</button> --}}
      <a href="{{ route('quotation.add') }}" class="btn btn-success">+ add quotation</a>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add quotation</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{route('quotation.save')}}" method="post">
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
                    @error('customer_id')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
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
                    <label>Title</label>
                    <input type="text" name="title" class="form-control">
                    @error('title')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Date</label>
                    <input type="text" class="form-control datepicker" name="date" value="" max-length="190">
                    @error('date')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Expected No. Days</label>
                    <input type="text" class="form-control" name="no_of_days" value="" max-length="190">
                    @error('no_of_days')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
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
                    @error('signatory_id')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
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
                    @error('sign_off')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Travel (€)</label>
                    <input type="text" class="form-control" name="travel" value="" max-length="190">
                    @error('internal_notes')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Total Value</label>
                    <input type="text" class="form-control" name="total_value" value="" max-length="190">
                    @error('internal_notes')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Internal Notes</label>
                    <textarea class="form-control" name="internal_notes" rows="3"></textarea>
                    @error('internal_notes')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                        <label>Block 1</label>
                        <div class="input-group">
                            <input list="block1list" class="form-control" name="block1" id="block1" autocomplete="off">
                            <button type="button" class="btn btn-fab-mini btn-warning m-0 p-0 detailBtn"><i class="fa fa-ellipsis-v p-2"></i></button>
                        </div>
                        <datalist id="block1list">
                        @foreach ($block1 as $b)
                            <option value="{{str_replace("\n", " | ", $b->detail)}}"></option>
                        @endforeach
                        </datalist>
                      </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Block 2</label>
                        <div class="input-group">
                            <input list="block2list" class="form-control" name="block2" id="block2" autocomplete="off">
                            <button type="button" class="btn btn-fab-mini btn-warning m-0 p-0 detailBtn"><i class="fa fa-ellipsis-v p-2"></i></button>
                        </div>
                        <datalist id="block2list">
                          @foreach ($block2 as $b)
                          <option value="{{str_replace("\n", " | ", $b->detail)}}"></option>
                            @endforeach
                        </datalist>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Availability</label>
                        <select name="availablity_id" class="form-control">
                          <option value="" disabled selected>Select Option</option>
                          @foreach($availbilities as $avail)
                            <option value="{{ $avail->id }}">{{ $avail->title }}</option>
                          @endforeach
                        </select>
                        {{-- <input type="text" name="availability" class="form-control"> --}}
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Payment terms</label>
                        <select name="payment_term_id" class="form-control">
                          <option value="" disabled selected>Select Option</option>
                          @foreach($payment_terms as $term)
                        <option value="{{ $term->id }}">{{ $term->title }}</option>
                          @endforeach
                        </select>
                        {{-- <input type="text" name="availability" class="form-control"> --}}
                    </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>VAT</label>
                    <select name="vat_id" id="vat" class="form-control">
                      <option value="" disabled selected>Select Option</option>
                      @foreach($vats as $vat)
                    <option value="{{ $vat->id }}">%{{ $vat->vat }}</option>
                      @endforeach
                    </select>
                  </div>
                </div>

                <div class="col-md-3">
                <div class="form-group">
                <label>Warranty</label>
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
        <h4 class="card-title">Quotations List</h4>
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
                Title
              </th>
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
                  <td>{{ $item->user->name }}</td>
                  @endif
                  <td>
                    {{$item->title}}
                  </td>
                  <td>
                    {{$item->total_value}}
                  </td>
                  <td>
                    {{$item->signatory->signatory ?? ""}}
                  </td>
                  <td class="text-center" >
                    <span class="badge @if($item->status=='Pending') badge-warning text-dark @elseif($item->status=='Won') badge-success text-white @elseif($item->status=='Lost') badge-danger text-white @endif p-2">{{$item->status}}</span>
                  </td>
                  <td>
                    {{$item->customer->code ?? ""}}
                  </td>
                  <td>
                    {{$item->date}}
                  </td>
                  <td>
                    <a href="{{route('quotation.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                    <a href="{{route('quotation.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
                    @if($item->status=='Won')
                    <a href="{{route('quotation.move_to_job',['id'=>$item->id] )}}" class="btn btn-info btn-sm">Move to Job</a>
                    @endif
                    @if($item->status=='Lost')
                      <a href="{{route('quotation.lost.list',['lost'=>$item->id] )}}" class="btn btn-info btn-sm">Move To Lost Archive</a>
                    @endif
                    <a href="{{route('reports.quotation',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                          <i class="fa fa-print"></i> PDF
                      </button></a>
                      <a href="{{route('reports.quotation_xls',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                          <i class="fa fa-file-excel-o"></i> XLS
                      </button></a>
                      <!-- quotation_detail_xls -->
                      <a href="{{route('reports.quotation',$item->id)}}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                          <i class="fa fa-download"></i> PDF Download
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
    $('.customer_id').on('change', function(e) {
      var val = $(this).val();
      populateNameAddress(val);
    });
  });
</script>
@endsection
