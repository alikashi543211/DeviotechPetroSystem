@extends('layouts.engineer')
@section('title', 'Form')
@section("css")
<link rel="stylesheet" href="{{asset('signature/assets/css/bootstrap-clockpicker.min.css')}}"/>
<link rel="stylesheet" href="{{asset('signature/assets/signature/css/signature-pad.css')}}">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<style>
    .images-field
    {
        margin-top:35px;
    }
    .sign-label
    {
        color:#999999;
        font-weight:bold;
    }

    .material_row_label
    {
        font-weight: bold;
        text-transform: capitalize;
        margin-bottom: 3px;
        color:#999999;
    }
    .purple_color
    {
        color:#9c27b0 !important;
    }
    .engineer_form .eng_input_element
    {
        border: 2px solid black;
        border-radius: 0px;
        color: black !important;
    }
    .eng-dark-input
    {
        border-color: grey;
        border-radius: 0px;
    }
    .bg_white
    {
        background: white !important;
    }
    .loader-modal
    {
        position: fixed;
        z-index: 999;
        height: 100%;
        width: 100%;
        top: 0;
        left: 0;
        background-color: #eee;
        filter: alpha(opacity=60);
        opacity: 0.6;
        -moz-opacity: 0.8;
    }
    .loader-center
    {
        z-index: 1000;
        margin: 300px auto;
        padding: 10px;
        width: 600px;
        border-radius: 10px;
        filter: alpha(opacity=100);
        opacity: 1;
        -moz-opacity: 1;
    }
    .overlay-loader-text
    {
        color: #f00 !important;
        font-weight: bold;
    }
</style>
@endsection
@section('page-title', 'Engineer Form')
@section('content')
@include('engineer.includes.success_message')
<div class="row engineer_form">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Engineer Form</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('engineer.form.images.save') }}" method="post" enctype="multipart/form-data" id="engineer_form">
                    @csrf
                    <input type="hidden" name="eng_job_id" value="{{ request()->id }}">
                    @php
                        $date=date('d-m-Y',strtotime(dateFormat($job->created_at)));
                    @endphp
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Date</label>
                                <input type="text" class="form-control valid-control eng-dark-input" name="date" value="{{old('date', $date)}}"
                                max-length="190" readonly>
                                @if($errors->has('date'))
                                {{ $errors->first('date') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Job Number</label>
                                <input type="text" class="form-control eng-dark-input" name="job_id" value="{{old('job_no',$job->id)}}"
                                max-length="190" readonly>
                                @if($errors->has('job_no'))
                                {{ $errors->first('job_no') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row parent">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Customer Name</label>
                                <input type="text" class="form-control eng-dark-input" name="customer_name" value="{{old('customer_name',$job->customer->name)}}"
                                max-length="190" readonly>
                                @if($errors->has('customer_name'))
                                {{ $errors->first('customer_name') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Customer Address</label>
                                <input type="text" class="form-control eng-dark-input" name="customer_address" value="{{old('customer_address',$job->customer->address1.' '.$job->customer->address2.' '.$job->customer->address3.' '.$job->customer->address4)}}"
                                max-length="190" readonly>
                                @if($errors->has('customer_address'))
                                {{ $errors->first('customer_address') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Job Type</label>
                                <input type="text" class="form-control eng-dark-input" name="job_type" value="{{old('job_type',$job->jobtype->name)}}" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Job Sheet No</label>
                                <input type="text" class="form-control valid-control eng-dark-input" name="job_sheet_no" value="{{$job->id.'-'.seq_number(0)}}" readonly="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Order No</label>
                                <input type="text" class="form-control eng_input_element numbers eng-dark-input" name="order_no" value="{{old('order_no',$job->order_no)}}" placeholder="customer po number Linked or blank to fill on site" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Contact on site </label>
                                <input type="text" class="form-control valid-control eng_input_element eng-dark-input" name="contact_site" value="{{ $job->contact }}" readonly>
                            </div>
                        </div> 
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Job Details</label>
                                <textarea name="job_detail" class="form-control valid-control eng-dark-input" readonly>{{ $job->detail }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Work Carried Out</label>
                                <textarea class="form-control valid-control eng_input_element eng-dark-input" name="work_carried_out"></textarea>
                            </div>
                        </div>
                    </div>  
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="make_and_serial">
                                <div class="row" id="make_and_serial_1">
                                    <span class="item-make-serial-count d-none">1</span>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Make / Model<br></label>
                                            <input type="text" name="make[]" class="form-control eng-dark-input make_model">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Equipment no<br></label>
                                            <input type="text" name="equipment[]" class="form-control eng-dark-input equipment_no">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Serial Number<br></label>
                                            <input type="text" name="serial_no_2[]" class="form-control eng-dark-input serial_number">
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>W and M Seals</label><br>
                                            <input type="radio"  id="yes" class="broken_result" name="w_m_seals[0]" value="1">
                                            <label for="yes">Yes</label><br>
                                            <input type="radio" id="no" class="broken_result" name="w_m_seals[0]" value="0">
                                            <label for="no">No</label><br>

                                            <input type="radio" id="na" class="broken_result" name="w_m_seals[0]" value="na">
                                            <label for="na">N/A</label><br>
                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <br>
                                        <button class="btn btn-danger btn-make-serial-del btn-sm btn-del d-none pull-left"><i class="material-icons">delete</i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="text-right">
                                <span class="material_row_label">Equiment to add<br></span>
                            </div>
                            <button type="button" class="btn btn-sm btn-primary  pull-right equipment_make_and_serial"><i class="material-icons">add</i></button>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="material_block">
                                <div class="row" id="material_row-1">
                                    <span class="item-count d-none">1</span>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Material used<br></label>
                                            <input type="text" name="material_used[]" class="form-control eng-dark-input material_usedd">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Quantity used<br></label>
                                            <input type="text" name="quantity_used[]" class="form-control numbers material_quantity eng-dark-input">
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <br>
                                        <button class="btn btn-danger btn-sm btn-del d-none pull-left"><i class="material-icons">delete</i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="text-right">
                                <span class="material_row_label">Material to add<br></span>
                            </div>
                            <button type="button" class="btn btn-sm btn-primary btn-add pull-right"><i class="material-icons">add</i></button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Photos</label>
                            </div>
                            <input type="file" name="images[]" accept="image/*" multiple>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Job Completed</label>
                                <br>
                                <input type="radio" id="completed_yes" class="completed_result valid-control" name="completed" value="1">
                                <label for="completed_yes">Yes</label><br>
                                <input type="radio" id="completed_no" class="completed_result" name="completed" value="0">
                                <label for="completed_no">No</label><br>
                                <input style="visibility: hidden;" type="text" name="" class="job_completed_hidden valid-control" value="">
                                <div class="alert alert-danger job_completed_alert d-none">
                                    Choose option for job completed
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 why_comment d-none">
                            <div class="form-group">
                                <label class="result_description"></label>
                                <textarea name="result_description" value="" id="" class="form-control result_comment eng-dark-input" placeholder="Job Comment"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Travel From</label>
                                <input type="text" class="form-control valid-control timepicker eng-dark-input bg_white" name="travel_from" id="travel_from" autocomplete="off" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Travel To</label>
                                <input type="text" class="form-control valid-control timepicker eng-dark-input bg_white" name="travel_to" id="travel_to" autocomplete="off" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Travel Time</label>
                                <input name="travel_time" value="" id="travel_time_calc" class="form-control eng-dark-input hrs" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Site Arrival Time</label>
                                <input type="text" name="site_arrival_time" value="" id="TmOnSite" class="form-control valid-control timepicker time_one eng-dark-input bg_white" autocomplete="off" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Site Departure Time</label>
                                <input type="text" name="site_departure_time" value="" id="TmOffSite" class="form-control valid-control timepicker time_two eng-dark-input bg_white" autocomplete="off" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Time On Site</label>
                                <input name="time_on_site" value="" id="TmTotalHrsOnSite" class="form-control hrs eng-dark-input" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Engineers Name</label>
                                <input name="engineer_name" value="{{engineer()->surname}} {{engineer()->forename}}" id="" class="form-control valid-control eng-dark-input" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Van No</label>
                                <input type="text" name="van_no" class="form-control valid-control eng-dark-input" value="{{ engineer()->van ?? '' }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 signature">
                            <label class="sign-label">Customer Signature</label>
                            <div id="signature-pad" class="signature-pad">
                                <div class="signature-pad--body">
                                  <canvas></canvas>
                                </div>
                                <div class="signature-pad--footer">
                                    <div class="description"></div>
                                    <div class="signature-pad--actions">
                                        <div>
                                            <button type="button" class="signature-button" data-action="clear">Clear</button>
                                            <button type="button" class="signature-button" data-action="change-color">Change color</button>
                                            <button type="button" class="signature-button" data-action="undo">Undo</button>
                                        </div>
                                    </div>
                                </div>
                                <div id="Signatur"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="submit" name="submit" class="btn btn-success engineer_submit_btn">Submit to office</button>
                            <button type="button" class="btn btn-danger form_close_btn">Close</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="loader-modal" style="display: none">
    <div class="loader-center">
        <h2 class="overlay-loader-text">Images uploading please wait.</h2>
    </div>
</div>
@endsection
@section('js')
    <script>
        $(window).keydown(function(event){
            if(event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });

        $(document).on("click", ".form_close_btn", function(){
            location.href = "{{ route('engineer.jobs.list') }}";
        });
        $(document).on("keyup", ".make_model", function(){
            if($(this).val() !== '')
            {
                $(this).closest(".row").find(".equipment_no").addClass("valid-control");
                $(this).closest(".row").find(".serial_number").addClass("valid-control");
                $(this).closest(".row").find(".broken_result").prop("required", true);
            }else
            {
                $(this).closest(".row").find(".equipment_no").removeClass("valid-control");
                $(this).closest(".row").find(".serial_number").removeClass("valid-control");
                $(this).closest(".row").find(".broken_result").prop("required", false);
            }
        });

        $(document).on("keyup", ".material_usedd", function(){
            if($(this).val() !== '')
            {
                $(this).closest(".row").find(".material_quantity").addClass("valid-control");
            }else
            {
                $(this).closest(".row").find(".material_quantity").removeClass("valid-control");
            }
        });
        
        $('#engineer_form').on('submit', function (e) {
            e.preventDefault();
            ImagePNG();
            $(".engineer_submit_btn").prop("disabled", true);
            $(".engineer_submit_btn").html("Please wait....");
            if(validate())
            {
                $(".loader-modal").show(); 
                $.ajax({
                    url: "{{ route('engineer.form.save') }}",
                    method: "POST",
                    data: new FormData(this),
                    dataType: 'JSON',
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function (response) {
                        location.href = "{{ route('engineer.jobs.list') }}"; 
                    },
                    error: function () {
                        toastr.error("There is something error");
                        $(".loader-modal").hide();
                    }
                });
            }else
            {
                // toastr.error("Please Fill All Fields");
                $(".engineer_submit_btn").html("Submit To Office");
                $(".engineer_submit_btn").prop("disabled", false);
            }
        });

        var make_and_serial = 1;
        $(document).on("click",".equipment_make_and_serial",function (e) 
        {
            e.preventDefault();
            if (make_and_serial < 16) 
            {
                var make_serial = getMakeAndSerialLength();
                var content = $('#make_and_serial_1').html();
                $(".make_and_serial").append('<div class="row" id="make_and_serial-'+(make_serial+1)+'">'+content+'</div>');
                $('#make_and_serial-'+(make_serial+1)).find('.item-make-serial-count').text(make_serial+1);
                $('#make_and_serial-'+(make_serial+1)).find('.btn-make-serial-del').removeClass('d-none');
                $('#make_and_serial-'+(make_serial+1)).find('.broken_result').attr('name','w_m_seals['+make_serial+']');

                $('#make_and_serial-'+(make_serial+1)).find(".equipment_no").removeClass("valid-control");
                $('#make_and_serial-'+(make_serial+1)).find(".serial_number").removeClass("valid-control");
                $('#make_and_serial-'+(make_serial+1)).find(".broken_result").prop("required", false);
                make_and_serial++;
                if(make_and_serial == 16)
                    $(this).fadeOut();
            }
        });
        function getMakeAndSerialLength()
        {
            return $(".make_and_serial .row").length;
        }
        $(document).on('click', '.btn-make-serial-del', function(){
            $(this).closest('.row').remove();
            refreshMakeSerialCounter();
        });
        function refreshMakeSerialCounter()
        {
            var count = 1;
            $('.make_and_serial .row').each(function()
            {
                $(this).find('.item-make-serial-count').text(count);
                count++;
            });
            if(make_and_serial == 2)
                $('.equipment_make_and_serial').fadeIn();
            make_and_serial--;
        }

        // START Pump Add More
        var pump_limit = 1;
        $(document).on("click",".btn-pump-add",function (e) 
        {
            e.preventDefault();
            if (pump_limit < 4) 
            {
                var pump_pointer = getPumpItemsBlockLength();
                var content = $('#pump_row-1').html();
                $(".pump_block").append('<div class="row" id="pump_row-'+(pump_pointer+1)+'">'+content+'</div>');
                $('#pump_row-'+(pump_pointer+1)).find('.item-pump-count').text(pump_pointer+1);
                $('#pump_row-'+(pump_pointer+1)).find('.btn-pump-del').removeClass('d-none');
                $('#pump_row-'+(pump_pointer+1)).find('.broken_result').attr('name','w_m_seals['+pump_pointer+']');
                pump_limit++;
                if(pump_limit == 4)
                    $(this).fadeOut();
            }
        });

        function refreshPumpCounter()
        {
            var count = 1;
            $('.pump_block .row').each(function()
            {
                $(this).find('.item-pump-count').text(count);
                count++;
            });
            if(pump_limit == 4)
                $('.btn-pump-add').fadeIn();
            pump_limit--;
        }

        function getPumpItemsBlockLength()
        {
            return $(".pump_block .row").length;
        }

        $(document).on('click', '.btn-pump-del', function(){
            $(this).closest('.row').remove();
            refreshPumpCounter();
        });

        // END Pump Add More

        // START Material Add More
        var limit = 1;
        $(document).on("click",".btn-add",function (e) 
        {
            e.preventDefault();
            if (limit < 22) 
            {
                var pointer = getLineItemsBlockLength();
                var content = $('#material_row-1').html();
                $(".material_block").append('<div class="row" id="material_row-'+(pointer+1)+'">'+content+'</div>');
                $('#material_row-'+(pointer+1)).find('.item-count').text(pointer+1);
                $('#material_row-'+(pointer+1)).find('.btn-del').removeClass('d-none');

                $('#material_row-'+(pointer+1)).find(".material_quantity").removeClass("valid-control");
                limit++;
                if(limit == 22)
                    $(this).fadeOut();
            }
        });

        $(document).on('click', '.btn-del', function(){
            $(this).closest('.row').remove();
            refreshCounter();
        });

        function getLineItemsBlockLength()
        {
            return $(".material_block .row").length;
        }

        $(document).on("change",".completed_result",function()
        {
            var value=$(this).val();
            $(".job_completed_hidden").removeClass("valid-control");
            if(value==1)
            {
                $(".why_comment").removeClass("d-none");
                $(".why_comment").addClass("d-block"); 
                $(".result_description").html("Job Completed Comment");
                $(".result_comment").removeClass("valid-control");
                $(".result_comment").attr("placeholder", "Job Completed Comment");
            }else
            { 
                $(".why_comment").removeClass("d-none");
                $(".why_comment").addClass("d-block");
                $(".result_description").html("Job Not Completed Comment");
                $(".result_comment").addClass("valid-control");
                $(".result_comment").attr("placeholder", "Job Not Completed Comment");
            }
        });

        // START JQUERY TIME PICKER
        $(function() {
            $('.timepicker').timepicker({
                timeFormat: 'HH:mm',
                interval: 15,
                startHour: 6,
                maxHour: 23,
                startTime: '06:00',
                dynamic: false,
                dropdown: true,
                scrollbar: true,
                change: calculateTime,
            });
        });
        // END JQUERY TIME PICKER

        function calculateTime () 
        {
            $(this).val($(this).val()+":00");
            if ($("#TmOnSite").val()!='' && $("#TmOffSite").val()!='') 
            {
                var startTime = moment($("#TmOnSite").val(), "HH:mm");
                var endTime = moment($("#TmOffSite").val(), "HH:mm");
                var duration = moment.duration(endTime.diff(startTime));
                var diff=duration.asHours().toFixed(2).split(".");
                var diff_hour=diff[0];
                var diff_min="0."+diff[1];
                diff_min=diff_min*60; 
                if(diff_min.toString().length==1)
                {
                    diff_min="0"+diff_min;
                }
                if(parseInt(diff_hour) == 0 && parseInt(diff_min) == 0)
                {
                    $("#TmTotalHrsOnSite").val("");
                }else
                {
                   $("#TmTotalHrsOnSite").val(diff_hour+":"+diff_min+":00"); 
                }
                
            }
            if ($("#travel_from").val()!='' && $("#travel_to").val()!='') 
            {
                var startTime = moment($("#travel_from").val(), "HH:mm");
                var endTime = moment($("#travel_to").val(), "HH:mm");

                var duration = moment.duration(endTime.diff(startTime));
                var diff=duration.asHours().toFixed(2).split(".");
                var diff_hour=diff[0];
                var diff_min="0."+diff[1];
                diff_min=diff_min*60;
                if(diff_min.toString().length==1)
                {
                    diff_min="0"+diff_min;
                }
                if(parseInt(diff_hour) == 0 && parseInt(diff_min) == 0)
                {
                    $("#travel_time_calc").val("");
                }else
                {
                    $("#travel_time_calc").val(diff_hour+":"+diff_min+":00");  
                }
                $("#TmOnSite").val($("#travel_to").val()); 
                
            }
        };

        function validate() {
            var valid = true;
            $("form").find('.alert-warning').remove();
            $(".valid-control:visible").each(function () {
                if ($(this).val() == "") {
                    $(this).closest("div").find(".alert-danger").remove();
                    $(this)
                    .closest("div")
                    .append('<div class="alert-danger mb-2" style="background:#ff5757;border-radius:2px;">This field is required</div>');
                    valid = false;
                } 
                else {
                    $(this).closest("div").find(".alert-danger").remove();
                }
            });
            if (!valid) {
                $("html, body").animate(
                    {
                        scrollTop: $(".alert-danger:first").offset().top-80,
                    },
                    100
                );
            }
            return valid;
        }
    </script>
    <script src="{{asset('signature/assets/signature/js/signature_pad.umd.js')}}"></script>
    <script src="{{asset('signature/assets/signature/js/app.js')}}"></script>
    <script src="{{asset('signature/assets/js/bootstrap-clockpicker.min.js')}}"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    @endsection
