@extends('Admin.layouts.dashboard')
@section('page-title', 'Issued Tools')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Issued Tools</h4>
      </div>
      <div class="card-body">
        <form action="{{route('save.issued_tools',$issued_tools->id ?? '')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Select Job</label>
                <select class="form-control" name="job_id" id="job">
                  <option selected disabled>Select Job</option>
                  @isset($jobs)
                  @if(count($jobs)>0)
                  @foreach($jobs as $job )
                  <option value="{{$job->id ?? ''}}">{{$job->name ?? ''}}</option>
                  @endforeach
                  @endif
                  @endisset
                </select>
                @if($errors->has('job_id'))
                {{ $errors->first('job_id') }}
                @endif
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Select Tool</label>
                <select class="form-control tool" name="tool_id">
                  <option selected disabled>Select Tool</option>
                  @isset($tools)
                  @if(count($tools)>0)
                  @foreach($tools as $tool )
                  <option value="{{$tool->id ?? ''}}">{{$tool->tool_code ?? ''}}</option>
                  @endforeach
                  @endif
                  @endisset
                </select>
                @if($errors->has('tool_id'))
                {{ $errors->first('tool_id') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                  <label>Date Allocated</label>
                  <input type="text" class="form-control datepicker" name="date_allocated" value="{{$issued_tools->date_allocated ?? ''}}" max-length="190">
                  @if($errors->has('date'))
                  {{ $errors->first('date') }}
                  @endif
                </div>
              </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Allocated By</label>
                <input type="text" class="form-control" name="allocated_by" value="{{$issued_tools->allocated_by ?? ''}}" max-length="190">
                @if($errors->has('allocated_by'))
                {{ $errors->first('allocated_by') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                  <label>Date Returned</label>
                  <input type="text" class="form-control datepicker" name="date_returned" value="{{$issued_tools->date_returned ?? ''}}" max-length="190">
                  @if($errors->has('date_returned'))
                  {{ $errors->first('date_returned') }}
                  @endif
                </div>
              </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Location</label>
                <input type="text" class="form-control" name="location" value="{{$issued_tools->location ?? ''}}" max-length="190">
                @if($errors->has('location'))
                {{ $errors->first('location') }}
                @endif
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Issued To</label>
                <input type="text" class="form-control" name="issued_to" value="{{$issued_tools->issued_to ?? ''}}" max-length="190">
                @if($errors->has('issued_to'))
                {{ $errors->first('issued_to') }}
                @endif
              </div>
            </div>
            </div>
         
          <div class="row job-checks mb-2">
           
            <div class="col-md-4 form-check">
              <label class="form-check-label">
                <input class="form-check-input" id="is_returned" type="checkbox" value="1" name="is_returned">
                Returned
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
  $(document).ready(function(){
  $("#job").val('{{$issued_tools->job_id ?? ''}}');
  $(".tool").val('{{$issued_tools->tool_id ?? ''}}');
  
  });
  </script>
  <script>
    $(document).ready(function(){
    
     var status = {{$issued_tools->is_returned ?? ''}};
      if(status == true){
    $("#is_returned").prop("checked", true);
      }
    });
</script>
@endsection