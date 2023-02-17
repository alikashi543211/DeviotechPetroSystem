@extends('Admin.layouts.dashboard')
@section('page-title', 'Issued Tools List')
@section('content')

<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <a href="{{route('show.form')}}"><button type="button" class="btn btn-success">+ Add new Issued Tool</button></a>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">

        <h4 class="card-title">Issued Tools List</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>

              <th>
                Date Allocated
              </th>
              <th>
                Allocated By
              </th>

              <th>
                Location
              </th>
              <th>
                Issued To
              </th>

              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($issued_tools as $item)
              <tr>
                <td>{{ $item->id ?? '' }}</td>

                <td>
                  {{$item->date_allocated ?? ''}}
                </td>
                <td>
                  {{$item->allocated_by ??''}}
                </td>
                <td>
                  {{$item->location ??''}}
                </td>
                <td>
                  {{$item->issued_to ??''}}
                </td>

                <td>
                  <a href="{{route('edit.issued_tools',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                  <a href="{{route('delete.issued_tools',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
                  @if(!$item->is_returned)
                  <a href="{{route('tool.returned',['id'=>$item->id] )}}" class="btn btn-warning btn-sm ">Returned</a>
                  @endif
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