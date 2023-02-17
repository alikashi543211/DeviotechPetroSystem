@extends('Admin.layouts.dashboard')
@section('page-title', 'Jobs List')
@section('css')
<style>
  .form-check{
    padding-left: 15px;
  }
  .entered_by
  {
    margin-top:-20px !important;
  }
</style>
@endsection
@section('content')
<div class="row">
  <div class="col-md-12">
    {{--<div class="col-md-12 text-right">
      <!-- <a href="{{route('job.add')}}"><button type="button" class="btn btn-success">+ add new job</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-job">+ Add new Job</button>
    </div>--}}
    <div class="modal fade" id="add-job" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add Job</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{route('job.save')}}" method="post" id="add_job">
              @csrf
              <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>A/C Code *</label>
                    <select class="form-control customer_id" name="customer_id" id="cars">
                      <option selected disabled>Select A/C Code</option>
                      @foreach($customer as $cus )
                      @if($id ==  $cus->id)
                      <option value="{{$cus->id}}" >{{$cus->code}}</option>
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
                      <label class="bmd-label-floating">Contract Status</label>
                      <select name="contract_status" class="form-control">
                        <option value="" disabled>Select Contract</option>
                        <option value="yes" selected @if(!is_null($customer_job) && $customer_job->service_contract=='yes') selected @endif>Service Contract</option>
                        <option value="No" @if(!is_null($customer_job) && $customer_job->service_contract=='No') selected @endif>No Service Contract</option>
                      </select>
                      @error('service_contract')
                      <div class="alert alert-danger">{{ $account_type }}</div>
                      @enderror
                    </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Name *</label>
                    <input type="text" name="name" class="form-control name" value="" max-length="190" readonly>
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Contact *</label>
                    <input type="text" class="form-control" name="contact" value="" max-length="190">
                    @error('contact')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" class="form-control address" readonly>
                  </div>
                </div>
                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Job Type *</label>
                    <select class="form-control jobtype_id" name="jobtype_id" id="jobtype_id" required="">
                      <option selected disabled>Select JobType</option>
                      @foreach($jobtype as $type )
                      <option value="{{$type->id}}">{{$type->name}}</option>
                      @endforeach
                    </select>
                    @error('jobtype_id')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Order Number</label>
                    <input type="text" name="order_no" class="form-control">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 d-none">
                  <div class="form-group">
                    <label>Select Engineer</label>
                    <select class="form-control" name="contact_id" id="cars">
                      <option selected disabled>Select Engineer</option>
                      @foreach($contact as $cont )
                      <option value="{{$cont->id}}">{{$cont->surname}}</option>
                      @endforeach
                    </select>
                    @error('contact_id')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Select Category</label>
                    <select class="form-control" name="category_id" id="cars">
                      <option selected disabled>Select Category</option>
                      @foreach($category as $cat )
                      <option value="{{$cat->id}}">{{$cat->name}}</option>
                      @endforeach
                    </select>
                    @error('category_id')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Job Detail *</label>
                    <textarea class="form-control" name="detail" rows="3"></textarea>
                    @error('detail')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
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
                    <label>Credit Status</label>
                    <input type="text" class="form-control" name="status" value="{{ $customer_job->status ?? '' }}" max-length="190" readonly>
                    @error('status')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6 @if(!is_null($customer_job) && $customer_job->status=='OK') d-none @endif">
                  <div class="form-group">
                    <label class="bmd-label-floating">Credit Status Reviewed</label>
                    <select name="credit_status_reviewed" id="credit_status_reviewed" class="form-control">
                      <option value="Yes">Yes</option>
                      <option value="No" selected="">No</option>
                    </select>
                    <div class="append" style="color: red;">
                      <p>Must be yes to submit</p>
                    </div>
                    @error('credit_status_reviewed')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label>Credit Status Notes</label>
                    <input type="text" class="form-control" name="notes" value="{{ $customer_job->notes ?? '' }}" max-length="190">
                    @error('notes')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>

              <div class="row job-checks mb-2">
                
                <div class="col-md-6" style="display:none;">
                  <div class="form-group">
                    <label>Select Type</label>
                    <select class="form-control type" name="type">
                      <option disabled selected value="0">Select Type</option>
                      <option value="calibration">Calibration</option>
                      <option value="warranty">Warranty</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-6 form-check warranty-field d-none">
                  <label>Warranty</label>
                  <select name="warranty" class="form-control" id="warranty" autocomplete="off">
                    <option value="0">0</option>
                    @foreach ($warranties as $v)
                    <option value="{{ $v->title }}">{{ $v->title }}</option>
                    @endforeach
                  </select>
                </div>
                <input type="hidden" name="calibration" class="calibration-field" />
                <div class="col-md-6">
                  <button type="submit" id="submit_btn" class="btn btn-primary pull-left @if((!is_null($customer_job) && $customer_job->status!='OK')) disabled_btn @endif" @if((!is_null($customer_job) && $customer_job->status!='OK')) disabled="" @endif>Save</button>
                  <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
                </div>
                <div class="col-md-6 entered_by">
                  <div class="form-group">
                    <label>Entered By</label>
                    <input type="text" class="form-control" name="enteredby" value="{{ auth()->user()->name }}" max-length="190">
                    @error('enteredby')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Job List</h4>
      </div>
      <div class="card-body">
        <form action="" method="GET" class="filter-form">
          <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="form-check col-4">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="1" name="daily_installs" @if($req->daily_installs) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Daily Installs</b>
                  </label>
                </div>
                <div class="form-check col-4">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="3" name="contract" @if($req->contract) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Contract</b>
                  </label>
                </div>
                <div class="form-check col-4">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="5" name="calibration" @if($req->calibration) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Calibration</b>
                  </label>
                </div>
                <div class="form-check col-4">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="2" name="non_contract" @if($req->non_contract) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Non-Contract</b>
                  </label>
                </div>
                <div class="form-check col-4">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="6" name="donal" @if($req->donal) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Donal</b>
                  </label>
                </div>
                <div class="form-check col-4">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="4" name="installations" @if($req->installations) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Installations</b>
                  </label>
                </div>
                <div class="form-check col-4 d-none">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="7" name="niall" @if($req->niall) checked="" @endif>
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                    <b>Niall</b>
                  </label>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="form-check">
                <label class="form-check-label">
                  <input class="form-check-input" type="checkbox" value="1" name="incomplete" @if($req->incomplete) checked="" @endif>
                  <span class="form-check-sign">
                    <span class="check"></span>
                  </span>
                  <b>Incomplete Only</b>
                </label>
              </div>
              <button class="btn btn-danger btn-sm bold float-right clear" type="button">
                Clear
              </button>
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Sub Category</label>
                <select class="form-control sub_cateogry" name="sub_cateogry" id="sub_cateogry">
                  <option selected value="">Select Category</option>
                  @foreach($category as $item )
                  <option value="{{$item->id}}" {{ $req->sub_cateogry ? $req->sub_cateogry == $item->id ? 'selected' : '' : '' }}>{{$item->name}}</option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>
        </form>
        <a href="{{ route('listcustomer') }}" class="btn btn-success pull-right">Customers</a>
        <div class="table-responsive">
          <table class="table table-bordered table-stripped job_list_table">
            <thead>
              <th>
                ID
              </th>
              <th>
                Date
              </th>
              <th>
                A/C Code
              </th>
              <th>
                Customer Name
              </th>
              <th>
                Job Desc
              </th>
              <th>
                Job Type
              </th>
              <th>
                Category
              </th>
              <th>
                Works Completed
              </th>
              
              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($jobs as $item)
              <tr>
                <td>{{ $item->id }}</td>
                <td>
                  {{$item->date}}
                </td>
                <td>
                  {{$item->customer->code ?? ''}}
                </td>
                <td>{{ $item->customer->name ?? "" }}</td>
                <td>
                  {{$item->detail}}
                </td>
                <td>
                  {{$item->jobtype->name ?? ''}}
                </td>
                <td>
                  {{$item->category->name ?? ''}}
                </td>
                <td>
                    @if($item->completed==true)
                        Yes
                    @else
                        <select name="contact_id" id="contact_id" data="{{$item->id}}" class="form-control works_completed_col"> 
                            <option value="">Works Completed Yes / No</option>
                            <option value="1" @if($item->completed==true) selected @endif>Yes</option>
                            <option value="0" @if($item->completed==false) selected @endif>No</option>
                        </select>
                    @endif
                </td>
                <td>
                  <a href="{{route('job.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                  <a href="{{route('job.delete',['id'=>$item->id] )}}" table-class=".job_list_table" update-url="{{route('job.list')}}" class="btn btn-danger btn-sm del-btn">Delete</a>
                  <a href="{{route('reports.job_details',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                    <i class="fa fa-print"></i> PDF
                  </button></a>
                  <a href="{{route('reports.job_detail_xls',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                    <i class="fa fa-file-excel-o"></i> XLS
                  </button></a>
                  <a href="{{route('reports.job_details',$item->id)}}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                    <i class="fa fa-download"></i> PDF Download
                  </button></a>
                  <a href="{{route('reports.job_details',$item->id)}}?email=true&link={{$item->id}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                    <i class="fa fa-envelope"></i> Email PDF
                  </button></a>
                </td>
              </tr>
            </td>
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

  var l=$(".disabled_btn").length;
  if(l!=0)
  {
    updateCreditStatusReviewed();
  }

  function updateTable(url, table) {
    $.ajax({
      url: url,
      type: 'GET',
      success: function(rows) {
        $(table).html(rows);
        $(table).DataTable().destroy();
        $(table).DataTable({
          ordering: false
        });
      }
    });
  }

  function updateCreditStatusReviewed()
  {
    var value = $('select#credit_status_reviewed option:selected').val();
    if(value=="No")
    {
      $('.append').show();
        $("#submit_btn").attr("disabled", true);
    }
    else
    {
      $('.append').hide();
      $("#submit_btn").removeAttr("disabled");
    }
  }
  
  $('#credit_status_reviewed').on('change', function() {
    var value = $('select#credit_status_reviewed option:selected').val();
    if(value=="No")
    {
      $('.append').show();
        $("#submit_btn").attr("disabled", true);
    }
    else
    {
      $('.append').hide();
      $("#submit_btn").removeAttr("disabled");
    }
  });
  $(".jobtype_id").change(function (e) {
    e.preventDefault();
    if ($(this).val() == 1 || $(this).val() == 4) {
      $(".warranty-field").removeClass('d-none');
    } else {
      $(".warranty-field").addClass('d-none');
    }
  });
  $(document).ready(function () {
    $('.filter-form input, .filter-form select').change(function(){
      $('.filter-form').submit();
    });
    $('.clear').on('click',function(e){
     e.preventDefault();
     $('.filter-form input:checkbox').prop('checked', false);
     $('.filter-form select').val('');
     $('.filter-form').submit();
   });

    $('.type').on('change', function (e) {

      var type=$(this).val();
      if(type=='warranty'){
        $('.warranty-field').show();
        $('.calibration-field').val();
      }
      if(type=='calibration'){
        $('.calibration-field').val('1');
        $('.warranty-field').hide();
      }
    });
  });
</script>
<script>
  $(document).ready(function () {
    $('.customer_id').on('change', function (e) {
      var val = $(this).val();
      populateNameAddress(val);
    });
    $(document).on("change", '.engineer', function(){
      var contact_id = $(this).val();
      var job_id = $(this).attr("data");
        // alert(contact_id)
        // alert(job_id)
        $.ajax({
          type: "GET",
          url: "{{ route('job.change_engineer') }}?contact_id="+contact_id+"&job_id="+job_id,
          success: function (response) {
            toastr.success("Engineer changed successfully");
            window.location.reload(true);
          }

        });
      });

    $(document).on("change", '.works_completed_col', function(){
      var completed = $(this).val();
      var job_id = $(this).attr("data");
        $.ajax({
          type: "GET",
          url: "{{ route('job.works_completed') }}?&job_id="+job_id+"&completed="+completed,
          success: function (response) {
            toastr.success("Work status updated successfully");
            window.location.reload(true);
          }

        });
      });
  });
</script>
<script>
  @if(!empty($id))
  var id = {{ $id }} ;
  $('#add-job').modal('show');
  $('#cars').val(id);
  populateNameAddress(id);
  @endif
</script>
@endsection
