@extends('Admin.layouts.dashboard')
@section('page-title', 'Return Tools')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Return Tools</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>
              <th>
                Job
              </th>
              <th>
                Code
              </th>
              <th>
                Serial No
              </th>
              <th>
                Issued To
              </th>
              <th>
                Date Allocated
              </th>
              <th>
                Allocated By
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($tools as $item)
              <tr>
                <td>{{ $item->id }}</td>
                <td>{{ $item->job->id }} - {{ $item->job->name }}</td>
                <td>
                  {{$item->tool->tool_code}} - {{ $item->tool->description }}
                </td>
                <td>
                  {{$item->serial_no}}
                </td>
                <td>
                  {{$item->issued_to}}
                </td>
                <td>
                  {{$item->date_allocated}}
                </td>
                <td>
                  {{$item->user->name}}
                </td>
                <td>
                  <button class="btn btn-sm btn-primary return" data-id="{{ $item->id }}" data-toggle="modal" data-target="#return_modal">Return</button>
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
<div class="modal fade" id="return_modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary">
        <h5 class="modal-title text-white bold">Return Tool</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="{{ route('tool_return') }}">
          @csrf
          <input type="hidden" name="id" id="issue_tool_id" value="">
          <div class="col-md-12">
            <div class="form-group">
              <label class="bmd-label-floating">Date Returned</label>
              <input type="text" class="form-control datepicker" name="date_returned" value="" max-length="190" required>
              @error('date_returned')
              <div class="alert alert-danger">{{ $message }}</div>
              @enderror
            </div>
          </div>
          <button class="btn btn-primary">Save</button>
          <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
        </form>
      </div>
    </div>
  </div>
</div>
@stop
@section('js')
<script>
  $(document).ready(function() {
    $(".return").click(function(e) {
      e.preventDefault();
      var val = $(this).attr("data-id");
      $('#issue_tool_id').val(val);
    });
  });
</script>
@endsection