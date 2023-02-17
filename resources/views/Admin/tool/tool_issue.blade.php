@extends('Admin.layouts.dashboard')
@section('page-title', 'Issue Tool')
@section('content')

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Issue Tool</h4>
            </div>
            <div class="card-body">
                <form action="{{route('tool_issue')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Job</label>
                                <select name="job_id" id="job_id" class="form-control">
                                    <option value="" selected disabled>Select Job</option>
                                    @foreach ($jobs as $jb)
                                    <option value="{{ $jb->id }}">{{ $jb->id }} - {{ $jb->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Tool Code</label>
                                <select name="tool_id" id="tool_id" class="form-control tool_id @error('tool_id') is-invalid @enderror">
                                    <option value="" selected disabled>Select Tool</option>
                                    @foreach ($tools as $tl)
                                    <option value="{{ $tl->id }}">{{ $tl->tool_code }} - {{ $tl->description }}</option>
                                    @endforeach
                                </select>
                                @error('tool_id')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Serial No</label>
                                <input type="text" class="form-control serial_no" name="serial_no" value="" max-length="190">
                                @error('serial_no')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Issued To</label>
                                <select class="form-control" name="issued_to">
                                    <option value="" selected disabled>Select Option</option>
                                    @foreach($staff as $st)
                                        <option value="{{ $st->staff_name }}">{{ $st->staff_name }}</option>
                                    @endforeach
                                </select>
                                @error('issued_to')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Date Allocated</label>
                                <input type="text" class="form-control datepicker" name="date_allocated" value="" max-length="190">
                                @error('date_allocated')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="hidden" class="form-control" name="user_id" value="{{ auth()->user()->id }}" max-length="190" readonly>

                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Add</button>
                    <a href="/admin/dashboard" class="btn btn-danger">Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>
@stop
@section('js')
<script>
    $(document).ready(function() {
        $('.tool_id').on('change', function(e) {
            var val = $(this).val();
            var url = "{{ url('/') }}/admin/get_tool/" + val;
            $.ajax({
                type: "GET",
                url: url,
                success: function(response) {
                    if (response) {
                        $('.serial_no').val(response.serial);
                    }
                }
            });
        });
    });
</script>
@endsection
