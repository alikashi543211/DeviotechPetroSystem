@extends('Admin.layouts.dashboard')
@section('page-title', 'Quotation Types List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <a href="{{route('quotation_type.add')}}"><button type="button" class="btn btn-success">+ add quotation type</button></a>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Quotation Types List</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>
              <th>
                Type
              </th>
              <th>
                Cost 1st Nozzle
              </th>
              <th>
                Cost Other Nozzles
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($quotation_types as $item)
              <tr>
                <td>{{ $item->id }}</td>
                <td>
                  {{$item->type}}
                </td>
                <td>
                  {{$item->cost_1st_nozzle}}
                </td>
                <td>
                  {{$item->cost_other_nozzles}}
                </td>
                <td>
                  <a href="{{route('quotation_type.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                  <a href="{{route('quotation_type.edit',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
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