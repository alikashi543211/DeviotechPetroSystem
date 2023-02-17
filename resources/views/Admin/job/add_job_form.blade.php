@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Job')
@section('content')
<div class="row">
  <div class="col-md-12">
    @if($req->customer_id)
        <a href="{{ route('customer_history.history', $req->customer_id) }}" class="btn btn-success bold">Goto History Page</a>
    @endif
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Create Job</h4>
      </div>
      <div class="card-body">
        <form action="{{route('job.save')}}" method="post">
          @csrf
          <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>A/C Code *</label>
                <select class="form-control customer_id" name="customer_id" id="cars">
                  <option selected disabled>Select A/C Code</option>
                  @foreach($customer as $cus )
                  <option value="{{$cus->id}}" {{ $req->customer_id ? $req->customer_id == $cus->id ? 'selected' : '' : '' }}>{{$cus->code}}</option>
                  @endforeach
                </select>
                @if($errors->has('customer_id'))
                {{ $errors->first('customer_id') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Name *</label>
                <input type="text" name="name" class="form-control name" value="" max-length="190" readonly>
                @if($errors->has('name'))
                {{ $errors->first('name') }}
                @endif
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
                <label>Contact</label>
                <input type="text" class="form-control" name="contact" value="" max-length="190">
                @if($errors->has('contact'))
                {{ $errors->first('contact') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Job Type</label>
                <select class="form-control" name="jobtype_id" id="cars">
                  <option selected disabled>Select JobType</option>
                  @foreach($jobtype as $type )
                  <option value="{{$type->id}}">{{$type->name}}</option>
                  @endforeach
                </select>
                @if($errors->has('jobtype_id'))
                {{ $errors->first('jobtype_id') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Select Engineer</label>
                <select class="form-control" name="contact_id" id="cars">
                  <option selected disabled>Select Engineer</option>
                  @foreach($contact as $cont )
                  <option value="{{$cont->id}}">{{$cont->surname}}</option>
                  @endforeach
                </select>
                @if($errors->has('contact_id'))
                {{ $errors->first('contact_id') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Select Category</label>
                <select class="form-control" name="category_id" id="cars">
                  <option selected disabled>Select Category</option>
                  @foreach($category as $cat )
                  <option value="{{$cat->id}}">{{$cat->name}}</option>
                  @endforeach
                </select>
                @if($errors->has('category_id'))
                {{ $errors->first('category_id') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Job Detail</label>
                <textarea class="form-control" name="detail" rows="3"></textarea>
                @if($errors->has('detail'))
                {{ $errors->first('detail') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Actions Taken</label>
                <textarea class="form-control" name="action" rows="3"></textarea>
                @if($errors->has('action'))
                {{ $errors->first('action') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Date</label>
                <input type="text" class="form-control datepicker" name="date" value="{{ now() }}" max-length="190">
                @if($errors->has('date'))
                {{ $errors->first('date') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Date Completed</label>
                <input type="text" class="form-control datepicker" name="datecomplete" value="" max-length="190">
                @if($errors->has('datecomplete'))
                {{ $errors->first('datecomplete') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Expect Completed</label>
                <input type="text" class="form-control datepicker" name="expectcomplete" value="" max-length="190">
                @if($errors->has('expectcomplete'))
                {{ $errors->first('expectcomplete') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Entered By</label>
                <input type="text" class="form-control" name="enteredby" value="{{ auth()->user()->name }}" max-length="190">
                @if($errors->has('enteredby'))
                {{ $errors->first('enteredby') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row job-checks mb-2">
            <div class="col-md-4 form-check">
              <label class="form-check-label">
                  <input class="form-check-input" type="checkbox" value="1" name="warranty">
                  Warranty
                  <span class="form-check-sign">
                      <span class="check"></span>
                  </span>
              </label>
            </div>
            <div class="col-md-4 form-check">
              <label class="form-check-label">
                  <input class="form-check-input" type="checkbox" name="calibration" value="1">
                  Calibration
                  <span class="form-check-sign">
                      <span class="check"></span>
                  </span>
              </label>
            </div>
            <div class="col-md-4 form-check">
               <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value="1" name="completed">
                Completed
                <span class="form-check-sign">
                    <span class="check"></span>
                </span>
            </label>
            </div>
            <div class="col-md-4 form-check">
              <label class="form-check-label">
                  <input class="form-check-input" type="checkbox" value="1" name="invoiced">
                  Invoiced
                  <span class="form-check-sign">
                      <span class="check"></span>
                  </span>
              </label>
            </div>
            <div class="col-md-4 form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value="1" name="filed">
                Filed
                <span class="form-check-sign">
                    <span class="check"></span>
                </span>
              </label>
            </div>
          </div>
          <button type="submit" class="btn btn-primary pull-left">Save</button>
          <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
  </div>
</div>
@stop
@section('js')
    <script>
        $(document).ready(function () {
            $('.customer_id').on('change', function (e) {
                var val = $(this).val();
                populateNameAddress(val);
            });
        });
    </script>
@endsection
