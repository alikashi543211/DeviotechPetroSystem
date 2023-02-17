@extends('Admin.layouts.dashboard')
@section('page-title', 'System Settings')
@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-tabs card-header-primary">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="nav-item">
                                <a class="nav-link active" href="#general" data-toggle="tab">
                                    <i class="material-icons">receipt</i> General
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#vat" data-toggle="tab">
                                    <i class="material-icons">receipt</i> VAT
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#availbility" data-toggle="tab">
                                    <i class="material-icons">receipt</i> Availbility
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#warranty" data-toggle="tab">
                                    <i class="material-icons">receipt</i> Warranty
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#payment_term" data-toggle="tab">
                                    <i class="material-icons">receipt</i> Payment Term
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#account_types" data-toggle="tab">
                                    <i class="material-icons">shopping_cart</i> Account Types
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#quotation_types" data-toggle="tab">
                                    <i class="material-icons">euro</i> Quotation Types
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#block" data-toggle="tab">
                                    <i class="material-icons">receipt</i> Block
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#action_taken" data-toggle="tab">
                                    <i class="material-icons">receipt</i> Action Taken/Communication
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#cc" data-toggle="tab">
                                    <i class="material-icons">receipt</i> CC
                                    <div class="ripple-container"></div>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="general">
                        <form action="{{route('system_setting.general')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                {{-- <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Vat %</label>
                                        <input type="text" class="form-control" name="vat" value="{{$system_setting['vat'] ?? ''}}" max-length="190">
                                        @if($errors->has('vat'))
                                        {{ $errors->first('vat') }}
                                        @endif
                                    </div>
                                </div> --}}
                                <div class="col-md-6">
                                    <div class="form-group">
                                        @if ($dropbox)
                                            <h4 class="font-weight-bold">You have successfully connected your dropbox</h4>
                                            <button type="button" class="btn btn-danger disconnect-dropbox">Disconnect Dropbox</button>
                                        @else
                                            <label>Connect Dropbox</label><br>
                                            <button type="button" class="btn btn-warning connect-dropbox">Connect with Dropbox</button>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>New Contract Template</label>
                                        <input type="file" class="form-control" name="contract_template">
                                        @if(!empty($system_setting['contract_template']))
                                        @if(!is_null($system_setting['contract_template']))
                                        <a href="{{asset($system_setting['contract_template'] ?? '')}}">file</a>
                                        @endif
                                        @endif
                                        @if($errors->has('contract_template'))
                                            {{ $errors->first('contract_template') }}
                                        @endif
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-sm">Save</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <p class="font-weight-bold">Are you want job card password?</p>
                                        <p>
                                            <input type="radio" class="is_job_card_password" name="is_job_card_password" value="{{ 'yes' }}" @if(setting('is_job_card_password') == 'yes') checked @endif> Yes
                                        </p>
                                        <p>
                                            <input type="radio" class="is_job_card_password" name="is_job_card_password" value="{{ 'no' }}" @if(setting('is_job_card_password') == 'no') checked @endif> No
                                        </p>
                                    </div>
                                    
                                    <div class="form-group job_card_password @if(setting('is_job_card_password') == 'yes') @else d-none @endif">
                                        <label>Enter Password</label>
                                        <input class="form-control" type="text" name="edit_job_card_password" value="{{ setting('edit_job_card_password') ?? '' }}">
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-sm">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="vat">
                        <div class="row">
                            <div class="col-12 text-right">
                                <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('vat.list') }}" data-url="{{ route('vat.add') }}">
                                    <i class="material-icons">add</i> Add New
                                </button>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>VAT</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($vats as $v)
                                    <tr>
                                        <td>{{ $v->id }}</td>
                                        <td>{{ $v->vat }}%</td>
                                        <td>
                                            <button data-url="{{ route('vat.edit', $v->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                            <button data-href="{{ route('vat.delete', $v->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                        <div class="tab-pane" id="account_types">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('account_type.list') }}" data-url="{{ route('account_type.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>

                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Code</th>
                                            <th>Account Type</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($account_types as $at)
                                        <tr>
                                            <td>{{ $at->id }}</td>
                                            <td>{{ $at->code }}</td>
                                            <td>{{ $at->account_type }}</td>
                                            <td>
                                                <button data-url="{{ route('account_type.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('account_type.delete', $at->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="vat">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('vat.list') }}" data-url="{{ route('vat.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>VAT</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($vats as $v)
                                            <tr>
                                                <td>{{ $v->id }}</td>
                                                <td>{{ $v->vat }}</td>
                                                <td>
                                                    <button data-url="{{ route('vat.edit', $v->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                    <button data-href="{{ route('vat.delete', $v->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="availbility">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('availbility.list') }}" data-url="{{ route('availbility.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Availability</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($availbilities as $v)
                                        <tr>
                                            <td>{{ $v->id }}</td>
                                            <td>{{ $v->title }}</td>
                                            <td>
                                                <button data-url="{{ route('availbility.edit', $v->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('availbility.delete', $v->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="warranty">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('warranty.list') }}" data-url="{{ route('warranty.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Warranty</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($warranties as $v)
                                        <tr>
                                            <td>{{ $v->id }}</td>
                                            <td>{{ $v->title }} - @if($v->title>1) Months @else Month @endif</td>
                                            <td>
                                                <button data-url="{{ route('warranty.edit', $v->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('warranty.delete', $v->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="payment_term">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('payment_term.list') }}" data-url="{{ route('payment_term.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Payment Term</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($payment_terms as $v)
                                        <tr>
                                            <td>{{ $v->id }}</td>
                                            <td>{{ $v->title }}</td>
                                            <td>
                                                <button data-url="{{ route('payment_term.edit', $v->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('payment_term.delete', $v->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="quotation_types">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('quotation_type.list') }}" data-url="{{ route('quotation_type.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Type</th>
                                            <th>Cost 1st Nozzle</th>
                                            <th>Cost Other Nozzles</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($quotation_types as $qt)
                                        <tr>
                                            <td>{{ $qt->id }}</td>
                                            <td>{{ $qt->type }}</td>
                                            <td>{{ $qt->cost_1st_nozzle }}</td>
                                            <td>{{ $qt->cost_other_nozzles }}</td>
                                            <td>
                                                <button data-url="{{ route('quotation_type.edit', $qt->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('quotation_type.delete', $qt->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="block">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('block.list') }}" data-url="{{ route('block.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Type</th>
                                            <th>Detail</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($block as $bl)
                                        <tr>
                                            <td>{{ $bl->id ?? ""}}</td>
                                            <td>{{ $bl->type ?? "" }}</td>
                                            <td>{{ $bl->detail ?? "" }}</td>
                                            <td>
                                                <button data-url="{{ route('block.edit', $bl->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('block.delete', $bl->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="action_taken">
                            <div class="row">
                                <div class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('communication.list') }}" data-url="{{ route('communication.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>

                                            <th>Communication / Action Taken</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($communication as $co)
                                        <tr>
                                            <td>{{ $co->id ?? ""}}</td>
                                            <td>{{ $co->action_taken ?? "" }}</td>

                                            <td>
                                                <button data-url="{{ route('communication.edit', $co->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                                <button data-href="{{ route('communication.delete', $co->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="cc">
                            <div class="row">
                                <div style="display: none;" class="col-12 text-right">
                                    <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('cc.list') }}" data-url="{{ route('cc.add') }}">
                                        <i class="material-icons">add</i> Add New
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Email</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($cc as $co)
                                        <tr>
                                            <td>{{ $co->id ?? ""}}</td>
                                            <td>{{ $co->email ?? "" }}</td>
                                            <td>
                                                <button data-url="{{ route('cc.edit', $co->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
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
</div>
<div class="modal fade" id="setting-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-info">
                <h5 class="modal-title text-white bold">Add New</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body setting-modal-body">
            </div>
        </div>
    </div>
</div>

@stop

@section('js')
<script>
    $('.modal').on('hidden.bs.modal', function () {
    $(this)
        .find("input:not([type=hidden],[name=date],[name=job_id],[readonly]),textarea,select")
        .val('')
        .end()
        .find("input[type=checkbox], input[type=radio]")
        .prop("checked", "")
        .end();
    });
    $(".connect-dropbox").click(function (e) {
        e.preventDefault();
        location.href="{{ route('dropbox_auth') }}";
    });
    $(".disconnect-dropbox").click(function (e) {
        e.preventDefault();
        location.href="{{ route('disconnect.dropbox') }}";
    });

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
    $(document).on('click', '.open-modal,.edit-btn', function() {
        update_url = $(this).closest('.tab-pane')
            .find('.open-modal')
            .data('update_url');
        target_table = $(this).closest('.tab-pane')
            .find('table');
    });
    $(document).on('click', '.open-modal', function() {
        var url = $(this).attr("data-url");
        $.ajax({
            type: "GET",
            url: url,
            success: function(response) {
                $('.setting-modal-body').html(response);
                $('#setting-modal').modal('show');
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

    $(document).on("change", ".is_job_card_password", function(){
        // alert($(this).val());
        if($(this).val() == 'no')
        {
            $(".job_card_password").addClass("d-none");
        }else if($(this).val() == 'yes'){
            $(".job_card_password").removeClass("d-none");
        }
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
                $(form).closest('#setting-modal').modal('hide');
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
