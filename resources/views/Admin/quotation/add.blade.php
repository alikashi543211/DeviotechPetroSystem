@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Quotation')
@section('css')
    <style>
        .quotation_form_card
        {
            margin-bottom:320px !important;
        }
    </style>
@endsection
@section('content')
<div class="row">
    <div class="col-md-12">
        @if($req->job_id)
            <a href="{{ route('job.edit', $req->job_id) }}" class="btn btn-success bold">Goto Job Page</a>
        @endif
        @if($req->customer_id)
            <a href="{{ route('customer_history.history', $req->customer_id) }}" class="btn btn-success bold">Goto History Page</a>
        @endif
        <div class="card quotation_form_card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Quotation</h4>
            </div>
            <div class="card-body">
                <form action="{{route('quotation.save')}}" method="post">
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
                                        <input type="hidden" name="direction" value="{{ route('job.edit', $req->job_id."/".'quotations') }}" class="form-control" readonly="">
                                    </div>
                                </div>
                                @elseif($req->customer_id)
                                    <input type="hidden" name="direction" value="{{route('customer_history.history', $req->customer_id."/".'quotations')}}" class="form-control" readonly="">
                                @else
                                    <input type="hidden" name="direction" value="{{route('quotation.list')}}" class="form-control" readonly="">
                                @endif
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>A/C Code *</label>
                                        <select class="form-control customer_id" name="customer_id" id="customer_id">
                                        @if(!empty($req->customer_id) || !empty($req->c_id))
                                            @foreach($customer as $cus )
                                                @if($req->customer_id == $cus->id || $req->c_id == $cus->id)
                                                <option value="{{$cus->id}}" selected>{{$cus->code}}</option>
                                                @endif
                                            @endforeach
                                        @else
                                            <option selected disabled>Select A/C Code</option>
                                            @foreach($customer as $cus )
                                                <option value="{{ $cus->id }}" {{ $req->customer_id ? $req->customer_id == $cus->id ? 'selected' : '' : '' }}>{{ $cus->code }}</option>
                                            @endforeach
                                        @endif
                                        </select>
                                        @if($errors->has('customer_id'))
                                            <p class="text-danger">{{ $errors->first('customer_id') }}</p>
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
                                        <label>Title</label>
                                        <input type="text" name="title" class="form-control">
                                        @if($errors->has('title'))
                                            {{ $errors->first('title') }}
                                        @endif
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Signatory *</label>
                                        <select class="form-control" name="signatory_id" id="cars" required="">
                                            @foreach($signatories as $sig )
                                                <option value="{{$sig->id}}">{{$sig->signatory}} ({{ $sig->title }})</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('signatory_id'))
                                            {{ $errors->first('signatory_id') }}
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Travel (€)</label>
                                        <input type="text" class="form-control" name="travel" value="" max-length="190">
                                        @error('internal_notes')
                                            <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Total Value</label>
                                        <input type="text" class="form-control total_value" name="total_value" value="" max-length="190" readonly>
                                        @error('internal_notes')
                                            <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
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
                                <div class="col-md-12">
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
                                <div class="col-md-12">
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
                                        <label>Availability</label>
                                        <select name="availablity_id" >
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach($availbilities as $avail)
                                                <option value="{{ $avail->title }}">{{ $avail->title }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Payment terms</label>
                                        <select name="payment_term_id" >
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach($payment_terms as $term)
                                                <option value="{{ $term->title }}">{{ $term->title }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>VAT</label>
                                        <select name="vat_id" id="vat">
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach($vats as $vat)
                                                <option value="{{ $vat->vat }}">{{ $vat->vat }}%</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Warranty</label>
                                        <select name="warranty_id">
                                            <option value="" disabled selected>Select Option</option>
                                            @foreach ($warranties as $v)
                                                <option value="{{ $v->id }}">{{ $v->title }} @if($v->title>1) Months @else Month @endif</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="line-items-block">
                                <div class="row" id="ldf-1">
                                    <input type="hidden" name="row_value" class="row_value">
                                    <div class="col-6">
                                        <h5 class="font-weight-bold">Line Item <span class="item-count">1</span></h5>
                                    </div>
                                    <div class="col-6 text-right">
                                        <button class="btn btn-danger btn-sm btn-del d-none" type="button"><i class="material-icons">delete</i></button>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label>Item</label>
                                            <textarea name="item[]" rows="3" class="form-control" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Qty</label>
                                            <input type="text" name="qty[]" class="form-control qty-box" >
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Unit Price</label>
                                            <input type="text" name="cost_price[]" class="form-control cost-price-box" >
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label>Sales Value</label>
                                            <input type="text" name="sale_price[]" class="form-control sale-price-box" required readonly>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group form-check mb-2 pl-1 pull-right">
                                            <label class="form-check-label">
                                            <input class="form-check-input extra_to_job" type="checkbox" value="1" name="extra_to_job[0]">
                                              Extra To Job
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-sm btn-primary btn-add pull-right"><i class="material-icons">add</i></button>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="{{ route('job.edit', $req->job_id) }}" class="btn btn-danger">Close</a>
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
        var c_id = "{{ $req->customer_id ? $req->customer_id:$req->c_id }}";
        $('.customer_id').on('change', function(e) {
            var val = $(this).val();
            populateNameAddress(val);
        });
        if (c_id != "") {
            $('.customer_id').val(c_id).change();
        }

        var limit = 1;
        $(".btn-add").click(function (e) {
            e.preventDefault();
            if (limit < 25) {
                var pointer = getLineItemsBlockLength();
                var content = $('#ldf-1').html();
                $(".line-items-block").append('<div class="row" id="ldf-'+(pointer+1)+'">'+content+'</div>');
                $('#ldf-'+(pointer+1)).find('.item-count').text(pointer+1);
                $('#ldf-'+(pointer+1)).find('.btn-del').removeClass('d-none');
                $('#ldf-'+(pointer+1)).find('.extra_to_job').attr('name','extra_to_job['+limit+']');
                $('#ldf-'+(pointer+1)).find('.extra_to_job').attr('name');
                limit++;
                if(limit == 25)
                    $(this).fadeOut();
            }
        });

        $(document).on('click', '.btn-del', function(){
            $(this).closest('.row').remove();
            refreshCounter();
            calculateEachValue($(this).closest('.row'));
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
            if(limit == 25)
                $('.btn-add').fadeIn();
            limit--;
        }

        $(document).on("keyup", ".cost-price-box,.qty-box", function(e){
            e.preventDefault();
            var elm = $(this).closest('.row');
            calculateSaleValue(elm);
            calculateEachValue(elm);
        });

        function calculateMargin(elm)
        {
            var cost_price = parseFloat($(elm).find(".cost-price-box").val());
            var sale_price = parseFloat($(elm).find(".sale-price-box").val());

            if(isNaN(sale_price))
            {
                sale_price=0;
            }
            if(isNaN(cost_price))
            {
                cost_price=0;
            }
            var margin = ((sale_price - cost_price)/cost_price * 100).toFixed(2);
            var margin = Number(margin);
            if(margin=="Infinity")
            {
                margin=0;
            }else
            if(isNaN(margin))
            {
                margin=0;
            }
            $(elm).find(".margin-box").val(margin);
        }
        function calculateSaleValue(elm)
        {
            var unit_price = parseFloat($(elm).find(".cost-price-box").val());
            var qty = parseFloat($(elm).find(".qty-box").val());

            if(isNaN(unit_price))
            {
                unit_price=0;
            }
            if(isNaN(qty))
            {
                qty=0;
            }
            if(qty==0)
            {
                var sale_price = unit_price;
            }else
            {
                var sale_price = (unit_price*qty); 
            }
            if(sale_price=="Infinity")
            {
                sale_price=0;
            }else
            if(isNaN(sale_price))
            {
                sale_price=0;
            }
            $(elm).find(".sale-price-box").val(sale_price);
        }

        function calculateEachValue(elm)
        {
            var sum = 0;
            var sale_price = Number($(elm).find(".sale-price-box").val());
            var qty = Number($(elm).find(".qty-box").val());
            if(isNaN(sale_price))
            {
                sale_price=0;
            }
            if(isNaN(qty))
            {
                qty=0;
            }
            var amount=sale_price;
            $(elm).find(".row_value").val(amount);

            $(".line-items-block .row").each(function () {
                sum += +$(this).find(".row_value").val();
            });

            $(".total_value").val(sum);
        }
        $(document).ready(function() {
            $(window).keydown(function(event){
                if(event.keyCode == 13) {
                    event.preventDefault();
                    return false;
                }
            });
        });
    });
</script>
@endsection
