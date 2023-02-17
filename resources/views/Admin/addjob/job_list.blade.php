@extends('Admin.layouts.dashboard')
@section('page-title', 'Jobs List')
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
        <h4 class="card-title">Job List</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-stripped">
            <thead>
              <th>
                ID
              </th>
              <th>
                Name
              </th>
              <th>
                Contact
              </th>
              <th>
               Action
              </th>
              <th>
               Detail
              </th>
              <th>
               Entered By
              </th>
              <th>
                Job Type
              </th>
              <th>
                A/c Code
              </th>
              <th>
                Category 
              </th>
              <th>
                Date
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>

              @foreach ($job as $cont)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                
                <td>
                  {{$cont->name}}
                </td>
                <td>
                  {{$cont->contact}}
                </td>
                <td>
                  {{$cont->action}}
                </td>
                <td>
                  {{$cont->detail}}
                </td>
                <td>
                 {{$cont->enteredby}}
                </td>
                <td>
                {{$cont->jobtype->name}}
                </td>
                <td>
                {{$cont->customer->code}}
                </td>
                <td>
                 {{$cont->category->name}}
                </td>
                <td>
                {{$cont->date}}
                </td>
                <td>
                  <div class="btn-group" role="group" aria-label="Basic example">
                  <a href="{{route('jobedit',['id'=>$cont->id] )}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                  <a href="{{route('deletecontact',['id'=>$cont->id] )}}"><button type="button" class="btn btn-danger btn-sm">Delete</button></a>
                  </div>
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