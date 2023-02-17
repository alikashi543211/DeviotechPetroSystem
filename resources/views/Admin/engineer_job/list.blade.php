@extends('Admin.layouts.dashboard')
@section('page-title', 'Engineer Jobs')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-left">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Engineer Jobs</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                Date
              </th>
              <th>
                Engineer
              </th>
              <th>
                Customer
              </th>
              <th>
                Job No
              </th>
              <th>
                Job Description
              </th>
              <th>
                Status
              </th>
            </thead>
            <tbody>
              @foreach ($job_list as $item)
              @php
                $j = 1;
              @endphp
                @foreach($item->engineer_jobs as $eng_job)
                  <tr>
                    <td>{{ \Carbon\Carbon::parse($eng_job->date)->format('d-m-Y') }}</td>
                    <td>
                      {{ $eng_job->engineer->surname ?? '' }} {{ $eng_job->engineer->forename ?? '' }} 
                    </td>
                    <td>
                      {{ $item->customer->name ?? '' }}
                    </td>
                    <td>
                      {{ $item->id }} - {{ $j++ }}
                    </td>
                    <td>
                      {{$item->detail ?? ''}}
                    </td>
                    <td>
                      @if($item->status == "open")
                        <span class="badge badge-info">issued</span>
                      @elseif($item->status == "closed")
                        <span class="badge badge-success">Submitted</span>
                      @endif
                    </td>
                  </tr>
                @endforeach
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
