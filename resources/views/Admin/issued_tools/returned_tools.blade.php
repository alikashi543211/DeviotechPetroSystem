@extends('Admin.layouts.dashboard')
@section('page-title', 'Returned Tools List')
@section('content')

<div class="row">
  <div class="col-md-12">

    <div class="card">
      <div class="card-header card-header-primary">

        <h4 class="card-title">Returned Tools List</h4>
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



            </thead>
            <tbody>
              @foreach ($returned_tools as $item)
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