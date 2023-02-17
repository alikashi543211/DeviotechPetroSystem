@extends('Admin.layouts.dashboard')
@section('page-title', 'Engineers / Contact List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <!-- <a href="{{route('add_newcontact')}}"><button type="button" class="btn btn-success">+ add new contact</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-contact">+ Add New Engineers/Contact</button>
    </div>
    <div class="modal fade" id="add-contact" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add Engineers/Contact</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          <form action="{{route('createcontact')}}" method="post">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">surname</label>
                <input type="text" name="surname" class="form-control" value="" max-length="190">
                @error('surname')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">forename</label>
                <input type="text" class="form-control" name="forename" value="" max-length="190">
                @error('forename')
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
                <label class="bmd-label-floating">Hourly charges</label>
                <input type="text" class="form-control" name="charge" value="" max-length="190">
                @error('charge')
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
                <label class="bmd-label-floating">mobile phone</label>
                <input type="text" class="form-control" name="mobilephone" value="" max-length="190">
                @error('mobilephone')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="bmd-label-floating">homephone</label>
                <input type="text" class="form-control" name="homephone" value="" max-length="190">
                @error('homephone')
                <div class="alert alert-danger">{{ $message }}</div>
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
          </div>
          <button type="submit" class="btn btn-primary pull-left">Add</button>
          <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
        </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Engineers/Contact List</h4>
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
                Home Phone
              </th>
              <th>
                Mobile Phone
              </th>
              <th>
                Work Phone
              </th>

              <th>
                Email
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
                charges
              </th>
              <th>
                Van No
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>

              @foreach ($contact as $cont)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                <td>
                  {{ucfirst($cont->surname)}} {{ucfirst($cont->forename)}}
                </td>
                <td>
                  {{$cont->homephone}}
                </td>
                <td>
                  {{$cont->mobilephone}}
                </td>
                <td>
                  {{$cont->workphone}}
                </td>

                <td>
                  {{$cont->email}}
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
                <td>
                  {{ $cont->charge }}
                </td>
                <td>
                  {{ $cont->van ?? 'N/A' }}
                </td>
                <td>
                  <div class="btn-group" role="group" aria-label="Basic example">
                    <a href="javascript:void(0);" class="allocate_btn" data-id="{{ $cont->id }}"><button type="button" class="btn btn-info btn-sm">Allocate Van</button></a>
                    <a href="{{route('editcontact',['id'=>$cont->id] )}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                    <a href="{{route('deletecontact',['id'=>$cont->id] )}}" class="del-btn"><button type="button" class="btn btn-danger btn-sm">Delete</button></a>
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

<!-- Allocate Van No Modal -->
<div class="modal fade" id="allocat_van_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header card-header-primary">
          <h5 class="modal-title text-white bold">Allocate Van Number</h5>
          <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form method="POST" action="{{route('contact.allocate.van')}}" id="edit_job_card_password_form">
            @csrf
            <input type="hidden" name="id" value="" id="contact_id">
            
            <div class="form-group">
              <label>Van No</label>
              <input type="text" class="form-control" name="van" id="">
            </div>

            <button class="btn btn-primary">Submit</button>
            <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
          </form>
        </div>
      </div>
    </div>
  </div>
@stop
@section('js')
    
    <script>
        $(document).on("click", ".allocate_btn", function(){
          $id = $(this).attr("data-id");
          $("#contact_id").val($id);
          $("#allocat_van_modal").modal("show");
        }); 
    </script>

@endsection