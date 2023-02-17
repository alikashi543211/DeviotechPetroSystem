@extends('Admin.layouts.dashboard')
@section('page-title', 'Staff List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      {{-- <button class="btn btn-primary btn-sm bold open-modal" type="button" data-update_url="{{ route('staff.table') }}" data-url="{{ route('staff') }}" data-toggle="modal">+ add staff</button> --}}
        <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('staff.list') }}" data-url="{{ route('staff') }}">
            <i class="material-icons">add</i> Add New
        </button>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Staff List</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table">
            <thead class="text-primary">
              <th>
                ID
              </th>
              <th>
                Staff Name
              </th>
              <th>
                Status
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>
              @if(count($staffs)>0)
              @foreach ($staffs as $st)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                <td>
                  {{$st->staff_name?? ''}}
                </td>
                <td>
                  {{$st->status=='1' ? 'Active' : 'Inactive' }}
                </td>

                <td>
                  <div class="btn-group">
                    {{-- <a href="{{url('admin/staff/'.$st->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a> --}}
                    <button data-url="{{ route('staff.edit', $st->id) }}" data-update_url="{{ route('staff.list') }}" class="btn btn-success btn-sm open-modal">Edit</button>
                    <button data-href="{{ route('delete.staff', $st->id) }}" data-update_url="{{ route('staff.list') }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                  </div>
                </td>
              </tr>
              @endforeach
              @else
              <tr>
                <td>
                  No Record
                </td>
              </tr>
              @endif


            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
      <div class="modal-content">
          <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Add New</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
          </div>
          <div class="modal-body modal-data">
          </div>
      </div>
  </div>
</div>
@stop

@section('js')
<script>
  var update_url, target_table;

  function updateTable(url, table) {
      $.ajax({
          url: url,
          type: 'GET',
          success: function(rows) {
              $(table).html(rows);
              $(table).DataTable().destroy();
              $(table).DataTable({
                  ordering: false
              });
          }
      });
  }
  $(document).on('click', '.open-modal,.edit-btn,.del-btn', function() {
      update_url = $(this).data('update_url');
        target_table = $('.card')
          .find('.table');
  });
  $(document).on('click', '.open-modal', function() {
      var url = $(this).attr("data-url");
      $.ajax({
          type: "GET",
          url: url,
          success: function(response) {
              $('.modal-data').html(response);
              $('#modal').modal('show');
          }
      });
  });
  $(document).on('click', '#del-final-ajax', function(e) {
      e.preventDefault();
      var btn = $(this);
      $(btn).prop('disabled', true);
      url=$(this).attr('data');
      $.ajax({
          url: url,
          type: 'GET',
          success: function(response) {
              toastr.success(response);
              $('#del-confirm-ajax').modal('hide');
              updateTable(update_url, target_table);
              $(btn).prop('disabled', false);
          },
          error: function() {
              toastr.error('Unknown error!');
              $(btn).prop('disabled', false);
          }
      });
  });

  $(document).on('submit', '.modal form', function(e) {
      e.preventDefault();
      var form = $(this);
      var data = new FormData(this);
      $(form).find('button:not([type="button"])').prop('disabled', true);
      $.ajax({
          type: 'POST',
          data: data,
          cache: !1,
          contentType: !1,
          processData: !1,
          url: $(form).attr('action'),
          async: true,
          headers: {
              "cache-control": "no-cache"
          },
          success: function(response) {
              updateTable(update_url, target_table);
              $(form).closest('#modal').modal('hide');
              $(form).find('button:not([type="button"])').prop('disabled', false);
              toastr.success(response);
          },
          error: function(xhr, status, error) {
              if (xhr.status == 422) {
                  $(form).find('div.alert').remove();
                  var errorObj = xhr.responseJSON.errors;
                  $.map(errorObj, function(value, index) {
                      var appendIn = $(form).find('[name="' + index + '"]').closest('div.form-group');
                      if (!appendIn.length) {
                          toastr.error(value[0]);
                      } else {
                          $(appendIn).append('<div class="alert alert-danger" style="padding: 1px 5px;font-size: 12px"> ' + value[0] + '</div>')
                      }
                  });
                  $(form).find('button:not([type="button"])').prop('disabled', false);
              } else {
                  toastr.error('Unknown Error!');
                  $(form).find('button:not([type="button"])').prop('disabled', false);
              }

          }
      });
  });
</script>
@endsection