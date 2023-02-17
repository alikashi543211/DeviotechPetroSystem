@extends('Admin.layouts.dashboard')
@section('page-title', 'Add Job')
@section('content')

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Job Detail</h4>
      </div>
      <div class="card-body">
        <form action="{{route('createjob')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Name</label>
                <input type="text" name="name" class="form-control" value="" max-length="190">
                @if($errors->has('name'))
                {{ $errors->first('name') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Contact</label>
                <input type="text" class="form-control" name="contact" value="" max-length="190">
                @if($errors->has('contact'))
                {{ $errors->first('contact') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
          <div class="col-md-6">
                <div class="form-group">
                  <!-- <label class="bmd-label-floating">Date</label> -->
                  <input type="date" class="form-control" name="date" value="" max-length="190">
                  @if($errors->has('date'))
                  {{ $errors->first('date') }}
                  @endif
                </div>
            </div>
            <div class="col-md-6">
            <div class="form-group">
                <select class="form-control" name="customer_id" id="cars">
                    <option selected disabled>Select A/C Code</option>
                    @foreach($customer as $cus )
                      <option value="{{$cus->id}}">{{$cus->code}}</option>
                    @endforeach
                </select>
                @if($errors->has('customer_id'))
                {{ $errors->first('customer_id') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
            <div class="form-group">
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
                <label class="bmd-label-floating">Expect Completed</label>
                <input type="text" class="form-control" name="expectcomplete" value="" max-length="190">
                @if($errors->has('expectcomplete'))
                {{ $errors->first('expectcomplete') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">Date Completed</label>
                <input type="text" class="form-control" name="datecomplete" value="" max-length="190">
                @if($errors->has('datecomplete'))
                {{ $errors->first('datecomplete') }}
                @endif
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
              <div class="checkbox">
                <label class="bmd-label-floating">Warranty</label>
                <input class="" name="warranty" type="checkbox" value="1">
              </div>
                @if($errors->has('warranty'))
                {{ $errors->first('warranty') }}
                @endif
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
              <div class="checkbox">
               <label class="bmd-label-floating">Calibration</label>
               <input class="" name="calibration" type="checkbox" value="1">
              </div>
                @if($errors->has('calibration'))
                {{ $errors->first('calibration') }}
                @endif
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
              <div class="checkbox">
                <label class="bmd-label-floating">Completed</label>
                <input class="" name="completed" type="checkbox" value="1">
              </div>
                @if($errors->has('completed'))
                {{ $errors->first('completed') }}
                @endif
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
              <div class="checkbox">
                <label class="bmd-label-floating">Invoice</label>
                 <input class="" name="invoiced" type="checkbox" value="1">
              </div>
                @if($errors->has('invoiced'))
                {{ $errors->first('invoiced') }}
                @endif
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
              <div class="checkbox">
               <label class="bmd-label-floating">Filed</label>
               <input class="" name="filed" type="checkbox" value="1">
              </div>
                @if($errors->has('filed'))
                {{ $errors->first('filed') }}
                @endif
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
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
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Entered By</label>
                <input type="text" class="form-control" name="enteredby" value="" max-length="190">
                @if($errors->has('enteredby'))
                {{ $errors->first('enteredby') }}
                @endif
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <label class="bmd-label-floating">Job Detail</label>
                <input type="text" class="form-control" name="detail" value="" max-length="190">
                @if($errors->has('detail'))
                {{ $errors->first('detail') }}
                @endif
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Action Detail</label>
                    <input type="text" class="form-control" name="action" value="" max-length="190">
                    @if($errors->has('action'))
                    {{ $errors->first('action') }}
                    @endif
                  </div>
                </div>
                <div>
                </div>
                <button type="submit" class="btn btn-primary pull-right">Add</button>
                <div class="clearfix"></div>
        </form>
      </div>
    </div>
  </div>
</div>
@stop