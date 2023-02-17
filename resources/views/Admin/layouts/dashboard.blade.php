<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <link rel="apple-touch-icon" sizes="76x76" href="{{asset('admin_theme')}}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="{{asset('admin_theme')}}/petro-logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>@yield('page-title') | PetroSystem</title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- CSS Files -->
  <link href="{{asset('admin_theme')}}/assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
  <style type="text/css">
    .table thead th{
      border-top-width: 1px;
      background-color: #77767B !important;
      color: #fff !important;
      font-weight: bold !important;
    }
    .bmd-form-group .bmd-label-floating, .bmd-form-group .bmd-label-placeholder{
      left: 10px;
    }
    .form-control{
      border: 2px solid #eee;
      border-radius: 8px;
      padding: 4px 10px;
    }
    input.form-control, textarea.form-control{
      background-image: none !important;
    }
    .form-group label{
      font-weight: bold;
      text-transform: capitalize;
      margin-bottom: 3px;
    }
    .card-title{
      font-weight: bold;
    }
    .navbar .navbar-brand{
      font-weight: bold;
    }
    .dataTables_filter{
      text-align: right;
    }
    .dataTables_paginate .pagination{
      justify-content: right;
    }
    .collapsein{
      margin-top: 20px;
      padding-left: 1.5rem;
      margin-bottom: 0;
      list-style: none;
    }
    select {
        background-image:
          linear-gradient(45deg, transparent 50%, gray 50%),
          linear-gradient(135deg, gray 50%, transparent 50%),
          linear-gradient(to right, #ccc, #ccc) !important;
        background-position:
          calc(100% - 20px) calc(1em + 2px),
          calc(100% - 15px) calc(1em + 2px),
          calc(100% - 2.5em) 0.5em !important;
        background-size:
          5px 5px,
          5px 5px,
          1px 1.5em !important;
        background-repeat: no-repeat !important;
      }

      select:focus {
        background-image:
          linear-gradient(45deg, green 50%, transparent 50%),
          linear-gradient(135deg, transparent 50%, green 50%),
          linear-gradient(to right, #ccc, #ccc) !important;
        background-position:
          calc(100% - 15px) 1em,
          calc(100% - 20px) 1em,
          calc(100% - 2.5em) 0.5em !important;
        background-size:
          5px 5px,
          5px 5px,
          1px 1.5em !important;
        background-repeat: no-repeat !important;
        outline: 0 !important;
      }
      select:-moz-focusring {
        color: transparent !important;
        text-shadow: 0 0 0 #000 !important;
      }
      .bootstrap-select > .dropdown-toggle,
      .bootstrap-select > .dropdown-toggle:hover,
      .bootstrap-select > .dropdown-toggle:active,
      .bootstrap-select > .dropdown-toggle:focus{
        padding: 7px 12px !important;
        margin: 0px !important;
        color: #0f0f0f !important;
        background: #fff !important;
        box-shadow: none !important;
        border: 2px solid #eee !important;
        border-radius: 8px !important;
      }
      .job-checks .form-check{
        padding-left: 18px;
        flex: 1;
      }
      .nav-tabs .nav-link.disabled{
        opacity: .6;
        cursor: not-allowed;
      }
      .bold{
        font-weight: bold !important;
      }
      .form-group .alert-danger{
        font-size: 12px;
        padding: 3px;
      }
    .modal-content .bg-info  {
        background: linear-gradient(60deg, #ab47bc, #8e24aa);
      }
      input[type="file"]{
          z-index: 100 !important;
          opacity: 1 !important;
          position: relative !important;
      }
      .card-header-primary{
          background: linear-gradient(60deg, #ffa726, #fb8c00) !important;
      }
      .nav-tabs .nav-item .nav-link.active{
          background-color: rgb(231 65 51) !important;
          color:#fff !important;
      }
      .modal-overlay{
        position: fixed;
        height: 100%;
        width: 100%;
        top: 0;
        left: 0;
        background: rgba(255,255,255,.8);
        display: table;
        z-index: -1;
        visibility: hidden;
        opacity: 0;
        padding-top: 4%;
      }
      .modal-overlay.show{
        visibility: visible;
        opacity: 1;
        z-index: 9999;
      }
      label{
          color: #000000 !important;
      }
      .toast-info {
        background-color: green;
        }
        #toast-container > .toast-success {
                 opacity: 1 !important;
        }
        #toast-container > .toast-error {
            opacity: 1 !important;
        }
        .web{
            padding: 12.6px 16px;
        }

  </style>
  @yield('css')
</head>
<body class="">
<div class="wrapper ">
  @include('Admin._partials.sidebar')
  <div class="main-panel">
    @include('Admin._partials.topbar')
    <div class="content">
        <div class="modal-overlay">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Edit Details</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label class="bmd-label-static">Details</label>
                                <textarea rows="10" class="form-control detailsArea"></textarea>
                            </div>
                            <div class="col-lg-12 float-right">
                                <button class="btn btn-danger cancelBtn">Cancel</button>
                                <button class="btn btn-primary saveBtn">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <div class="container-fluid">
        <div class="row">
        <div class="col-12">
          @if(session()->has('message'))
          <div class="alert alert-success alert-dismissible">
          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
          <strong>{{ session()->get('message') }}</strong>
        </div>
          @endif
        </div>
        </div>
        @yield('content')
      </div>
    </div>
  </div>
</div>
<div class="modal fade email-send-modal" id="add-labour" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header card-header-primary">
        <h5 class="modal-title text-white bold">Email</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="" id="email-send-form">
          <div class="form-group">
            <label>To</label>
            <input type="text" class="form-control" class="to_email" value="" name="to" readonly>
          </div>
          <button class="btn btn-primary store-po-email-btn" data="">Send</button>
          <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="del-confirm" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h5 class="modal-title text-white bold">Are you sure?</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Deleted data may not be recoverable, click "Continue" if you want to proceed.</p>
                <a href="" data="" id="del-final" class="btn btn-danger bold btn-sm">Continue</a>
                <button type="button" data-dismiss="modal" class="btn btn-default bold btn-sm">Cancel</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="del-confirm-ajax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h5 class="modal-title text-white bold">Are you sure?</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Deleted data may not be recoverable, click "Continue" if you want to proceed.</p>
                <a href="" data="" id="del-final-ajax" class="btn btn-danger bold btn-sm">Continue</a>
                <button type="button" data-dismiss="modal" class="btn btn-default bold btn-sm">Cancel</button>
            </div>
        </div>
    </div>
</div>
<!--   Core JS Files   -->
<script src="{{asset('admin_theme')}}/assets/js/core/jquery.min.js"></script>
<script src="{{asset('admin_theme')}}/assets/js/core/popper.min.js"></script>
<script src="{{asset('admin_theme')}}/assets/js/core/bootstrap-material-design.min.js"></script>
<!--<script src="{{asset('admin_theme')}}/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>-->
<script src="{{asset('admin_theme')}}/assets/js/plugins/moment.min.js"></script>
<script src="{{asset('admin_theme')}}/assets/js/plugins/bootstrap-selectpicker.js"></script>
<script src="{{asset('admin_theme')}}/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
<script src="{{asset('admin_theme')}}/assets/js/plugins/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script src="{{asset('admin_theme')}}/assets/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>

<script>
  
  $(document).on('click', 'button.del-btn:not(.del-quotation)', function(e) {
      e.preventDefault();
      var btn = $(this);
      var url = $(btn).attr('data-href');
      $('#del-final-ajax').attr('data',url);
      $('#del-confirm-ajax').modal('show');
  });
  $(document).on("click",".continue_delete",function(e)
  {
    // alert($(this).attr('href'));
    e.preventDefault();
    update_url=$(this).attr('update-url');
    table_class=$(this).attr('table-class');
      $.ajax({
          method: "GET",
          url: $(this).attr('href'),
          success: function (response) {                    
            toastr.success(response);
            $('#del-confirm').modal('hide');
            updateTable(update_url, table_class);
          }
      });
  });
  @if(session('success'))
  toastr.success("{{ session('success') }}");
  @elseif(session('error'))
  toastr.error("{{ session('error') }}");
  @endif
    var detailInput="";
 $(document).ready(function() {
   $('.bmd-form-group').each(function(){
    $(this).find('label').removeClass('bmd-label-floating');
    $(this).removeClass('bmd-form-group');
   });
   $('.table-responsive table').each(function(){
    $(this).addClass('table-bordered table-striped');
   });
   $('.table-responsive table:not(.custom-dt)').DataTable({
    ordering: false
   });
   $('.form-group select').selectpicker({
        liveSearch: true
  });
   $('.form-group .datepicker').datetimepicker({
    format: 'DD/MM/YYYY H:m a',
    defaultDate: "{{ now() }}",
   });
   $('.form-group .notFillDatepicker').datetimepicker({
    format: 'DD/MM/YYYY H:m a',
    // defaultDate: "{{ now() }}",
   });
   
    $(document).on('click', '.store-po-email-btn-list', function(e){
      e.preventDefault();
      var href = $(this).attr('href');
      var email = $(this).attr('value');
      $('#email-send-form .store-po-email-btn').attr('data', href);
      $('#email-send-form input').val(email);
      $('.email-send-modal').modal('show');
   });

    $(document).on("click", ".store-po-email-btn", function (e) {
      e.preventDefault();
      $.ajax({
          method: "GET",
          url: $(this).attr('data'),
          success: function (response) {                    
            toastr.success(response.success);
          }
      });
    });

   $(document).on('click', 'a.del-btn', function(e)
  {
    e.preventDefault();
    var href = $(this).attr('href');
    $('#del-final').attr('href', href);
    $('#del-confirm').modal('show');
  });

   $('form a.btn').click(function(e){
      e.preventDefault();
      if(typeof $(this).attr('href') !== 'undefined')
      {
          window.history.go(-1); return false;
      }
   });
   $('.detailBtn').on('click',function(e){
        e.preventDefault();
        $('.modal-overlay').addClass('show');
        detailInput = $(this).closest('.input-group').find('input').attr('name');
        $(document).off("focusin.modal");
        $(".detailsArea").focus();
        $('.detailsArea').val($('[name="'+detailInput+'"]').val().split(' | ').join('\n'));
   });
   $('.saveBtn').on('click',function(e){
       e.preventDefault();
       $('.modal-overlay').removeClass('show');
       var value = $('.detailsArea').val().split('\n').join(' | ');
       $('[name="'+detailInput+'"]').val(value);
       $('.detailsArea').val("");
       detailInput="";
   });

   $('.cancelBtn').on('click',function(e){
       e.preventDefault();
       $('.modal-overlay').removeClass('show');
       $('.detailsArea').val("");
       detailInput="";
   });
 });
</script>
<script>
    function populateNameAddress(val){
        var url = "{{ url('/') }}/admin/getcustomer/"+val;
        $.ajax({
            type: "GET",
            url: url,
            success: function (response) {
                if (response) {
                    $('.address').val(response.address);
                    $('.name').val(response.name);
                }
            }
        });
    }
</script>
<script type="text/javascript">
  function mapDataToFields(data)
    {
        $.map(data, function(value, index){
            var input = $('[name="'+index+'"]');
            if($(input).length && $(input).attr('type') !== 'file')
            {
              if(($(input).attr('type') == 'radio' || $(input).attr('type') == 'checkbox') && value == $(input).val())
                $(input).prop('checked', true);
              else
                  $(input).val(value).change();
            }
        });
    }
    var data = <?php echo json_encode($old_form_values) ?>;
    mapDataToFields(data);
    $(document).ready(function(){
      if($('.modal form .alert-danger').length)
      {
        $('.modal form .alert-danger').closest('.modal').modal('show');
      }
    });
    $("form a.btn-danger").each(function(){
        var url = "{{ route('admin.dashboard') }}";
        $(this).attr('href', url);
    });
    $(".modal a.btn-danger").each(function(){
        $(this).attr('href', "javascript:void(0);");
    });
    $(document).on("click", ".modal form a.btn-danger", function(e){
        e.preventDefault();
        $(this).attr('href', "javascript:void(0);");
        $(this).closest('.modal').modal('hide');
    });

    // Number Validation Script
    $(document).on('keyup', '.numbers', function () { 
        this.value = this.value.replace(/[^0-9\.]/g,'');
    });

    // Add Target Blank Where Pdf Button Is Shown
    $(document).ready(function() {
      $("body").find(".fa-print").each(function()
      {
        $(this).closest("a").attr("target", "_blank");
      });
    });
</script>
@yield('js')
</body>

</html>
