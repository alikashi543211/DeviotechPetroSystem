<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="{{asset('admin_theme')}}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="{{asset('admin_theme')}}/petro-logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Engineer - @yield('title')
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="{{asset('admin_theme')}}/assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="{{asset('admin_theme')}}/assets/demo/demo.css" rel="stylesheet" />
  <link href="https://weareoutman.github.io/clockpicker/dist/jquery-clockpicker.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <style type="text/css">
    
    .table thead th{
      border-top-width: 1px;
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
        color: #0f0f0f;
        background: #fff;
        box-shadow: none;
        border: 2px solid #eee;
        border-radius: 8px;
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
      .select2-container--default .select2-selection--single 
      {
          height: 36px !important;
          border: 2px solid #eee;
          border-radius: 8px;
          padding: 4px 10px;
      }
      .select2-container--default .select2-selection--single .select2-selection__rendered
      {
          line-height: 30px !important;
      }
      .select2-container--default .select2-selection--single .select2-selection__arrow b
      {
          margin-top:5px !important;
      }

      
  </style>
  @yield('css')
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="{{asset('admin_theme')}}/assets/img/sidebar-1.jpg">
        @include('engineer.includes.sidebar')
    </div>
    <div class="main-panel">
        @include('engineer.includes.navbar')
        <div class="content">
            <div class="container-fluid">
                   @yield('content')
            </div>
        </div>
    </div>
</div>

  <!--   Core JS Files   -->
  <script src="{{asset('admin_theme')}}/assets/js/core/jquery.min.js"></script>
  <script src="{{asset('admin_theme')}}/assets/js/core/popper.min.js"></script>
  <script src="{{asset('admin_theme')}}/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="{{asset('admin_theme')}}/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="{{asset('admin_theme')}}/assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <!-- <script src="{{asset('admin_theme')}}/assets/js/plugins/bootstrap-selectpicker.js"></script> -->
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="{{asset('admin_theme')}}/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="{{asset('admin_theme')}}/assets/js/plugins/jquery.dataTables.min.js"></script>
  <script src="{{asset('admin_theme')}}/assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="{{asset('admin_theme')}}/assets/js/plugins/jasny-bootstrap.min.js"></script>

  <script src="{{asset('admin_theme')}}/assets/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
  <script src="https://weareoutman.github.io/clockpicker/dist/jquery-clockpicker.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  <script>
    $(document).ready(function() {
        // $('.select2').select2();
    });
    @if(session('success'))
        toastr.success("{{ session('success') }}");
    @elseif(session('error'))
        toastr.error("{{ session('error') }}");
    @endif
    // $( function() {
    //     $( ".datepicker" ).datepicker({ dateFormat: 'dd-mm-yy' });
    // });
  </script>
  <script>
    $('.data-list-view,.datatable').DataTable();
    $(document).ready(function() {
       $('.bmd-form-group').each(function(){
        $(this).find('label').removeClass('bmd-label-floating');
        $(this).removeClass('bmd-form-group');
       });
     });
</script>
<script>
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
   $('form a.btn').click(function(e){
      e.preventDefault();
      if(typeof $(this).attr('href') !== 'undefined')
      {
          window.history.go(-1); return false;
      }
    });

    // Numbers Input Validation
    $(document).on('keyup', '.numbers', function () { 
        this.value = this.value.replace(/[^0-9\.]/g,'');
    });
  });
</script>
@yield('js')

</body>

</html>

