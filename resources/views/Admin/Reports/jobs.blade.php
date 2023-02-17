@extends('Admin.layouts.dashboard')
@section('page-title', 'Job Reports')
@section('content')

<div class="col-12">
    @if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
    @endif
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Job Report</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('reports.all_jobs') }}" method="post">
                    @csrf

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Start Date</label>
                                <input type="text" class="form-control datepicker" name="job_start_date"
                                    value="{{$contract->start_date ?? old('job_start_date')}}" max-length="190">
                                @if($errors->has('job_start_date'))
                                {{ $errors->first('job_start_date') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>End Date</label>
                                <input type="text" class="form-control datepicker" name="job_end_date"
                                    value="{{$contract->end_date ?? ''}}" max-length="190">
                                @if($errors->has('job_end_date'))
                                {{ $errors->first('job_end_date') }}
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Categories</label>
                                <select class="form-control" name="category_id" id="status">
                                    <option selected disabled>Select Category</option>
                                    @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach

                                </select>
                                @if($errors->has('category'))
                                {{ $errors->first('category') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Job Completed By Date</label>
                                <input type="text" class="form-control datepicker" name="job_completion_date" value=""
                                    max-length="190">
                                @if($errors->has('job_completion_date'))
                                {{ $errors->first('job_completion_date') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">


                        <div class="col-md-4">
                            <div class="form-group">

                                <input type="checkbox" id="vehicle1" name="warranty" value="1">
                                <label for="vehicle1"> Warranty</label><br>
                            </div>
                        </div>

                        {{-- <div class="col-md-4">
                            <div class="form-group">

                                <input type="checkbox" id="vehicle1" name="installation_jobs" value="installation">
                                <label for="vehicle1">Installation Jobs</label><br>
                            </div>
                        </div> --}}

                        <div class="col-md-4">
                            <div class="form-group">

                                <input type="radio" id="male" name="status_jobs" value="open">
                                <label for="male">Opened Jobs</label><br>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">

                                <input type="radio" id="male" name="status_jobs" value="closed">
                                <label for="male">Closed Jobs</label><br>
                            </div>
                        </div>
                    </div>



                    <button type="submit" class="btn btn-info pull-left"><i class="fa fa-print"></i>Job Summary</button>
                    <a href="{{ route('admin.dashboard') }}" class="btn btn-danger">Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>






@endsection
@section('js')

@endsection