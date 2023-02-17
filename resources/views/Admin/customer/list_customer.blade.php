@extends('Admin.layouts.dashboard')
@section('page-title', 'Customer List')
@section('content')
<div class="col-12">
  <div class="row">
    <div class="col-md-12">
      <div class="col-md-12 text-right">
        <!-- <a href="{{route('addcustomer')}}"><button type="button" class="btn btn-success">+ add new customer</button></a> -->
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-customer">+ Add new Customer</button>
      </div>
      <div class="modal fade" id="add-customer" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Add Customer</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="{{route('storecustomer')}}" method="post">
                @csrf
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Account Type</label>
                      <select name="account_type_id" class="form-control">
                        <option value="" selected disabled>Select Account Type</option>
                        @foreach ($account_types as $at)
                        <option value="{{ $at->id }}">{{ $at->account_type }}</option>
                        @endforeach
                      </select>
                      @error('account_type_id')
                      <div class="alert alert-danger">{{ $account_type_id }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Service contract</label>
                      <select name="service_contract" class="form-control">
                        <option value="" selected disabled>Select Contract</option>
                        <option value="yes">Service Contract</option>
                        <option value="No">No Service Contract</option>
                      </select>
                      @error('service_contract')
                      <div class="alert alert-danger">{{ $account_type }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">A/C Code</label>
                      <input type="text" name="code" class="form-control" value="" max-length="190">
                      @error('code')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Eircode</label>
                      <input type="text" class="form-control" name="eircode" value="" max-length="190">
                      @error('eircode')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Name</label>
                      <input type="text" class="form-control" name="name" value="" max-length="190">
                      @error('name')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Email</label>
                      <input type="email" class="form-control" name="email" value="" max-length="190">
                      @error('email')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Work phone</label>
                      <input type="text" class="form-control" name="workphone" value="" max-length="190">
                      @error('workphone')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Credit Status</label>
                      <select name="status" class="form-control credit_status">
                        <option value="" selected disabled>Select Credit Status</option>
                        <option value="OK">OK</option>
                        <option value="Hold ref Nora">Hold - ref Nora</option>
                        <option value="Balance Outstanding">Balance Outstanding</option>
                      </select>
                      @error('status')
                      <div class="alert alert-danger">{{ $account_type }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Address 1</label>
                      <input type="text" class="form-control" name="address1" value="" max-length="190">
                      @error('address1')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Address 2</label>
                      <input type="text" class="form-control" name="address2" value="" max-length="190">
                      @error('address2')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Address 3</label>
                      <input type="text" class="form-control" name="address3" value="" max-length="190">
                      @error('address3')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  {{--<div class="col-md-6 hidden">
                    <div class="form-group">
                      <label class="bmd-label-floating">Address 4</label>
                      <input type="text" class="form-control" name="address4" value="" max-length="190">
                      @error('address4')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>--}}
                  <div class="col-md-6">
                    <div class="form-group">
                        <label class="bmd-label-floating">Note</label>
                        <input type="text" class="form-control customer_note" name="notes" value="">
                        @error('notes')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                </div>
                <button type="submit" class="btn btn-primary pull-left">Add</button>
                <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
                <div class="clearfix"></div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="card">
        <div class="card-header card-header-primary">
          <h4 class="card-title ">List of Customers</h4>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">

                <th>
                  A/C Code
                </th>
                <th>
                  Name
                </th>
                <th>
                  Email
                </th>
                <th>
                  Work Phone
                </th>
                <th>
                  Eircode
                </th>
                <th>
                  Address 1
                </th>
                <th>
                  Address 2
                </th>
                <th>
                  Address 3
                </th>
                <th>
                  Credit Status
                </th>
                <th>
                  Service Contract
                </th>
                <th>
                  Notes
                </th>
                <th>
                  Action
                </th>
              </thead>
              <tbody>
                <?php $index_count = 1; ?>
                @foreach ($customer as $cont)
                <tr>
                  <td>
                    {{$cont->code}}
                  </td>
                  <td>
                    {{$cont->name}}
                  </td>
                  <td>
                    {{$cont->email}}
                  </td>
                  <td>
                    {{$cont->workphone}}
                  </td>
                  <td>
                    {{$cont->eircode}}
                  </td>
                  <td>
                    {{$cont->address1}}
                  </td>
                  <td>
                    {{$cont->address2}}
                  </td>
                  <td>
                    {{$cont->address3}}
                  </td>
                  <td>{{$cont->status}}</td>
                  <td>
                    @if($cont->service_contract=="yes")
                    <span class="badge badge-success">Yes</span>
                    @elseif($cont->service_contract=="No")
                    <span class="badge badge-primary">No</span>
                    @else
                    N/A
                    @endif
                  </td>
                  <td>{{$cont->notes}}</td>
                  <td>
                    <a href="{{route('editcustomer',['id'=>$cont->id])}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                    <a href="{{route('customer.set.emails',['id'=>$cont->id] )}}"><button type="button" class="btn btn-info btn-sm">Set Emails</button></a>
                    <a href="{{route('deletecustomer',['id'=>$cont->id] )}}" class="del-btn"><button type="button" class="btn btn-danger btn-sm">Delete</button></a>
                    <a href="{{route('customer_history.history',['id'=>$cont->id] )}}"><button type="button" class="btn btn-warning btn-sm">History</button></a>
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
</div>
@stop
@section('js')
@endsection