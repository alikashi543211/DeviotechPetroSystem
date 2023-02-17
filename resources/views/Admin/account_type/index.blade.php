@extends('Admin.layouts.dashboard')
@section('page-title', 'Account Types List')
@section('content')

<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <a href="{{route('account_type.add')}}"><button type="button" class="btn btn-success">+ add account type</button></a>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Account Types List</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>
              <th>
                Code
              </th>
              <th>
                Account Type
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              @foreach ($account_types as $item)
              <tr>
                <td>{{ $item->id }}</td>
                <td>
                  {{$item->code}}
                </td>
                <td>
                  {{$item->account_type}}
                </td>
                <td>
                  <a href="{{route('account_type.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
                  <a href="{{route('account_type.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
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