@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Verification Quotation')
@section('content')
<div class="row">
    <div class="col-md-12">
        @if($req->job_id)
            <a href="{{ route('job.edit', $req->job_id) }}" class="btn btn-success bold">Goto Job Page</a>
        @endif
        @if($req->customer_id)
            <a href="{{ route('customer_history.history', $req->customer_id) }}" class="btn btn-success bold">Goto History Page</a>
        @endif
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Verification Quotation</h4>
            </div>
            <div class="card-body">
                <form action="{{route('verif_quotation.save')}}" method="post">
                    @csrf
                    <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                @if($req->job_id)
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Job ID *</label>
                                        <input type="text" name="job_id" value="{{ $req->job_id }}" class="form-control" readonly="">
                                    </div>
                                </div>
                                @endif
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>A/C Code *</label>
                                        
                                        <select class="form-control customer_id" name="customer_id" id="customer_id">
                                            @if(!empty($req->c_id))
                                              @foreach($customer as $cus )
                                                @if($req->c_id == $cus->id)
                                                <option value="{{$cus->id}}" selected>{{$cus->code}}
                                                </option>
                                                @endif
                                              @endforeach
                                            @else
                                            <option selected disabled>Select A/C Code</option>
                                            @foreach($customer as $cus )
                                              <option value="{{ $cus->id }}"
                                                {{ $req->customer_id ? $req->customer_id == $cus->id ? 'selected' : '' : '' }}>{{ $cus->code }} {{ $cus->name }}
                                              </option>
                                              @endforeach
                                            @endif
                                          </select>
                                        @if($errors->has('customer_id'))
                                            {{ $errors->first('customer_id') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" name="name" class="form-control name" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input type="text" name="address" class="form-control address" readonly>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Quotation Type</label>
                                        <select class="form-control" name="quotation_type_id" id="quotation_type_id" required>
                                            <option value="" selected disabled>Select Quotation Type</option>
                                            @foreach ($quotation_type as $qt)
                                            <option value="{{ $qt->id }}" data-1st-nozzle="{{ $qt->cost_1st_nozzle }}" data-other-nozzles="{{ $qt->cost_other_nozzles }}">{{ $qt->type }}</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('quotation_type_id'))
                                            {{ $errors->first('quotation_type_id') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Cost 1st Nozzle</label>
                                        <input type="text" name="cost_1st" class="form-control cost_1st_nozzle" readonly>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Cost Other Nozzles</label>
                                        <input type="text" name="cost_other" class="form-control cost_other_nozzles" readonly>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Total Cost</label>
                                        <input type="text" name="total_value" id="total_cost" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Date</label>
                                        <input type="text" class="form-control datepicker" name="date" value="" max-length="190">
                                        @if($errors->has('date'))
                                        {{ $errors->first('date') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Expected No. Days</label>
                                        <input type="text" class="form-control" name="no_of_days" value="" max-length="190">
                                        @if($errors->has('no_of_days'))
                                        {{ $errors->first('no_of_days') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Signatory</label>
                                        <select class="form-control" name="signatory_id" id="cars">
                                            <option selected disabled>Select Signatory</option>
                                            @foreach($signatories as $sig )
                                            <option value="{{$sig->id}}">{{$sig->signatory}} ({{ $sig->title }})</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('signatory'))
                                            {{ $errors->first('signatory') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Sign Off</label>
                                        <select class="form-control" name="sign_off" id="cars">
                                            <option value="1">Preliminaries</option>
                                            <option value="2"> PSDP & PSCS</option>
                                            <option value="3">Retailer</option>
                                        </select>
                                        @if($errors->has('sign_off'))
                                            {{ $errors->first('sign_off') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Travel €</label>
                                        <input type="text" name="travel_km" id="travel_km" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Per Km Cost</label>
                                        <input type="text" name="travel_km_cost" id="travel_km_cost" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Total Travel Cost</label>
                                        <input type="text" name="travel_total_cost" id="travel_total_cost" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Internal Notes</label>
                                        <textarea class="form-control" name="internal_notes" rows="3"></textarea>
                                        @if($errors->has('internal_notes'))
                                            {{ $errors->first('internal_notes') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Block 1</label>
                                        <div class="input-group">
                                            <input list="block1list" class="form-control" name="block1" id="block1" autocomplete="off">
                                            <button type="button" class="btn btn-fab-mini btn-warning m-0 p-0 detailBtn"><i class="fa fa-ellipsis-v p-2"></i></button>
                                        </div>
                                        <datalist id="block1list">
                                            @foreach ($block1 as $b)
                                            <option value="{{str_replace("\n", " | ", $b->detail)}}"></option>
                                            @endforeach
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Block 2</label>
                                        <div class="input-group">
                                            <input list="block2list" class="form-control" name="block2" id="block2" autocomplete="off">
                                            <button type="button" class="btn btn-fab-mini btn-warning m-0 p-0 detailBtn"><i class="fa fa-ellipsis-v p-2"></i></button>
                                        </div>
                                        <datalist id="block2list">
                                            @foreach ($block2 as $b)
                                            <option value="{{str_replace("\n", " | ", $b->detail)}}"></option>
                                            @endforeach
                                        </datalist>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>VAT</label>
                                        <select name="vat_id" id="vat" class="form-control">
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach($vats as $vat)
                                            <option value="{{ $vat->id }}">{{ $vat->vat }}%</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                {{-- <div class="col-md-6">
                                    <div class="form-group">
                                        <label>% Rate</label>
                                        <select name="rate" id="rate" class="form-control">
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach($vats as $vat)
                                            <option value="{{ $vat->vat }}">{{ $vat->vat }}%</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div> --}}
                                <input type="hidden" name="rate" value="0">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Warranty</label>
                                        <select name="warranty_id" class="form-control">
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach ($warranties as $v)
                                            <option value="{{ $v->id }}">{{ $v->title }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="line-items-block">
                                <div class="row" id="ldf-1">
                                    <div class="col-6">
                                        <h5 class="font-weight-bold">LDF <span class="item-count">1</span></h5>
                                    </div>
                                    <div class="col-6 text-right">
                                        <button class="btn btn-danger btn-sm btn-del d-none"><i class="material-icons">delete</i></button>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Number</label>
                                            <input type="text" name="number[]" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Type</label>
                                            <select class="form-control nozzle_type" name="type[]" required>
                                                <option selected disabled>Select Type</option>
                                                <option value="Mono">Mono</option>
                                                <option value="Dual">Dual</option>
                                                <option value="Quad">Quad</option>
                                                <option value="Six Hose">Six Hose</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Nozzles</label>
                                            <select class="form-control nozzles" name="nozzles[]" required>
                                                <option value="" selected disabled>Select Nozzles</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>1st Nozzle Cost</label>
                                            <input type="text" name="cost_1st_nozzle[]" class="form-control cost_1st_nozzle" readonly>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Other Nozzles Cost</label>
                                            <input type="text" name="cost_other_nozzles[]" class="form-control cost_other_nozzles" readonly>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Total Cost</label>
                                            <input type="text" name="cost_all_nozzles[]" class="form-control cost_all_nozzles" readonly>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-sm btn-primary btn-add pull-right"><i class="material-icons">add</i></button>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="/admin/dashboard" class="btn btn-danger">Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
@stop
@section('js')
<script>
    $(document).ready(function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $("#travel_km").keyup(function(e) {
            if ($("#travel_km_cost").val() == "") {
                $("#travel_total_cost").val($(this).val());
            } else {
                val = $("#travel_km_cost").val() * $(this).val();
                $("#travel_total_cost").val(val);
            }
        });

        $("#travel_km_cost").keyup(function(e) {
            if ($("#travel_km").val() == "") {
                $("#travel_total_cost").val($(this).val());
            } else {
                val = $("#travel_km").val() * $(this).val();
                $("#travel_total_cost").val(val);
            }
        });
        var limit = 1;
        $(".btn-add").click(function (e) {
            e.preventDefault();
            if (limit < 13) {
                var pointer = getLineItemsBlockLength();
                var content = $('#ldf-1').html();
                $(".line-items-block").append('<div class="row" id="ldf-'+(pointer+1)+'">'+content+'</div>');
                $('#ldf-'+(pointer+1)).find('.dropdown-toggle').remove();
                $('#ldf-'+(pointer+1)).find('select').selectpicker();
                $('#ldf-'+(pointer+1)).find('.item-count').text(pointer+1);
                $('#ldf-'+(pointer+1)).find('.btn-del').removeClass('d-none');
                limit++;
                if(limit == 13)
                    $(this).fadeOut();
            }
            refreshNozzlePrices();
        });

        $(document).on('click', '.btn-del', function(){
            $(this).closest('.row').remove();
            refreshCounter();
        });

        $("#quotation_type_id").change(function (e) {
            e.preventDefault();
            refreshNozzlePrices();
            refreshEachCost();
        });

        $(document).on("change", ".nozzles", function(e){
            e.preventDefault();
            refreshEachCost();
        });

        function getLineItemsBlockLength()
        {
            return $(".line-items-block .row").length;
        }
        function refreshCounter()
        {
            var count = 1;
            $('.line-items-block .row').each(function(){
                $(this).find('.item-count').text(count);
                count++;
            });
            if(limit == 13)
                $('.btn-add').fadeIn();
            limit--;
        }
        function refreshNozzlePrices()
        {
            var fst_nozzle = $("#quotation_type_id").find("option:selected").data('1st-nozzle');
            var other_nozzles = $("#quotation_type_id").find("option:selected").data('other-nozzles');
            $(".cost_1st_nozzle").val(fst_nozzle);
            $(".cost_other_nozzles").val(other_nozzles);
        }
        function refreshEachCost()
        {

            var fst_nozzle = $('[name="cost_1st"]').val();
            var other_nozzle = $('[name="cost_other"]').val();
            var nozzles = 0;
            var cost = 0;
            var total_cost = 0;

            if (fst_nozzle != "" && other_nozzle != "") {
                $(".line-items-block .row").each(function () {
                    if ($(this).find(".nozzles").find("option:selected").val() != "") {
                        nozzles = $(this).find(".nozzles").find("option:selected").val();
                        cost = Number(fst_nozzle) + (Number(other_nozzle)*(Number(nozzles)-1));

                        $(this).find(".cost_all_nozzles").val(cost);
                        total_cost += cost;

                    } else{
                        $(this).find(".cost_all_nozzles").val("0");
                    }
                });
                $('[name="total_value"]').val(total_cost);
            } else{
                $('[name="total_value"]').val(total_cost);
            }
        }
    });
</script>
<script>
    $(document).ready(function() {
        var c_id = "<?php echo $req->c_id ?>";
        $('.customer_id').on('change', function(e) {
            var val = $(this).val();
            populateNameAddress(val);
        });
        if (c_id != "") {
            $('.customer_id').val(c_id).change();
        }
    });
</script>
@endsection
