@extends('Admin.layouts.dashboard')
@section('page-title', 'Update Quotation')
@section('css')
<style type="text/css">
    .nav-tabs .nav-item{
        /*width: 190px;*/
    }
    .nav-tabs .nav-item .nav-link{
        background-color: rgba(255, 255, 255,.15);
        margin: 5px;
    }
    .nav-tabs .nav-item .nav-link.active {
        background-color: rgba(255, 255, 255, 0.9);
        transition: 0s background-color 0s;
    }
    .card .card-header.card-header-tabs .nav-tabs{
        /*justify-content: center;*/
    }
    .card-header-primary {
        background: linear-gradient(60deg, #ab47bc, #8e24aa);
    }
    .quotation_form_card
    {
        margin-bottom:320px !important;
    }
</style>
@endsection
@section('content')
<div class="row">
    <div class="col-md-12">
        @if($quotation->job_id)
            <a href="{{ route('job.edit', $quotation->job_id) }}" class="btn btn-success bold">Goto Job Page</a>
        @endif

        @if(isset($req->c))

            <a href="{{ route('customer_history.history',['id'=>$req->c] ) }}/quotations" class="btn btn-success bold">Goto Customer History</a>
        @endif
        <div class="card quotation_form_card">
            <div class="card-header card-header-tabs card-header-primary">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="nav-item">
                                <a class="nav-link active" href="#quotation-details" data-toggle="tab">
                                    <i class="material-icons">receipt</i> Quotation Details
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#payments" data-toggle="tab">
                                    <i class="material-icons">euro</i> Received Payments
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#q_document" data-toggle="tab">
                                    <i class="material-icons">note_add</i>Quotation Docs
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="quotation-details">
                        <form action="{{route('quotation.save', $quotation->id)}}" method="post">
                            @csrf
                            <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                            <input type="hidden" name="id" value="">
                            @if($quotation->job_id)
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="hidden" name="direction" value="{{ route('job.edit', $quotation->job_id.'/'.'quotations') }}" class="form-control" readonly="">
                                </div>
                            </div>
                            @elseif($tab)
                                <input type="hidden" name="direction" value="{{ route('customer_history.history',['id'=>$req->c] ) }}/quotations" class="form-control" readonly="">
                            @else
                                <input type="hidden" name="direction" value="{{route('quotation.list')}}" class="form-control" readonly="">
                            @endif
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        @if($req->convert_to_job && is_null($quotation->job_id))
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Job ID *</label>
                                                    <input type="text" name="job_id" value="{{ $req->job_id }}" class="form-control">
                                                </div>
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
                                                <label>Signatory </label>
                                                <select class="form-control" name="signatory_id" id="cars">
                                                    <option selected disabled>Select Signatory</option>
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
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Status</label>
                                                <select name="status">
                                                    <option value="" disabled selected>Select Status</option>
                                                        <option @if($quotation->status=='Pending') selected @endif>Pending</option>
                                                        <option @if($quotation->status=='Won') selected @endif>Won</option>
                                                        <option value="Lost" @if($quotation->status=='Loss') selected @endif>Lost</option>
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
                                                    <input type="text" name="qty[]" class="form-control qty-box">
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="form-group">
                                                    <label>Unit Price</label>
                                                    <input type="text" name="cost_price[]" class="form-control cost-price-box">
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
                    <div class="tab-pane" id="payments">
                        <button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#add-payment" data-update_url="{{ route('quotation.get.payments', $quotation->id) }}">
                            <i class="material-icons">add</i> Add New
                        </button>
                        <h4 class="bold">Received Payments</h4>
                        <div class="table-responsive">
                            <table class="table-bordered table table-striped custom-dt">

                            </table>
                        </div>
                    </div>
                    <div class="tab-pane" id="q_document">
                        <a href="https://www.dropbox.com/home{{ $quotation->quotation_folder }}" target="_blank" class="btn btn-primary btn-sm bold pull-right">
                            View Folder
                        </a>
                        <button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#add-q_document" data-update_url="{{ route('quotation.get.q_document', $quotation->id) }}">
                            <i class="material-icons">add</i> Add New
                        </button>
                        <h4 class="bold">Quotation Document</h4>
                        <div class="table-responsive">
                            <table class="table-bordered table table-striped docs-table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>File</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (isset($dropbox['entries']))
                                        @foreach ($dropbox['entries'] as $item)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td><a target="_blank" href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a></td>
                                            <td><a href="{{ route('quotation.deletedocument', ['q_id' => $quotation->id, 'id' => $item['name']],) }}" class="btn btn-primary btn-sm del-btn"><i class="material-icons">delete</i></a></td>
                                        </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="add-q_document" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header card-header-primary">
        <h5 class="modal-title text-white bold">Quotation Document</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="{{ route('quotation.save.document') }}" enctype="multipart/form-data">
          @csrf
          <input type="hidden" name="quotation_id" value="{{ $quotation->id }}">
          <div class="form-group">
            <label>Add Document</label>
            <input type="file" class="form-control" name="file">
          </div>
          <button type="submit" class="btn btn-primary">Save</button>
          <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
        </form>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="add-payment" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header card-header-primary">
                <h5 class="modal-title text-white bold">Add Received Payment</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('quotation.save.payment') }}">
                  @csrf
                  <input type="hidden" name="quotation_id" value="{{ $quotation->id }}">
                  <div class="form-group">
                    <label>Date</label>
                    <input type="text" class="form-control datepicker" name="date">
                  </div>
                  <div class="form-group">
                    <label>Invoice No</label>
                    <input type="text" class="form-control" name="invoice_no">
                  </div>
                  <div class="form-group">
                    <label>Details</label>
                    <input type="text" class="form-control" name="details">
                  </div>
                  <div class="form-group">
                    <label>Amount Received</label>
                    <input type="text" class="form-control" name="amount_received">
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="update-form-modal-wrapper"></div>
@stop
@section('js')
<script type="text/javascript">
    var limit = 1;
    $(document).ready(function () {
        
        $(window).keydown(function(event){
            if(event.keyCode == 13) {
              event.preventDefault();
              return false;
            }
          });

        $(document).on("keyup", ".cost-price-box,.qty-box", function(e){
            e.preventDefault();
            var elm = $(this).closest('.row');
            calculateSaleValue(elm);
            calculateEachValue(elm);
        });
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

        $(".btn-add").click(function (e) {
            e.preventDefault();
            addMore();
        });

        function addMore()
        {
            if (limit < 25) {
                var pointer = getLineItemsBlockLength();
                var content = $('#ldf-1').html();
                $(".line-items-block").append('<div class="row" id="ldf-'+(pointer+1)+'">'+content+'</div>');
                $('#ldf-'+(pointer+1)).find('textarea').text("");
                $('#ldf-'+(pointer+1)).find('.item-count').text(pointer+1);
                $('#ldf-'+(pointer+1)).find('.btn-del').removeClass('d-none');
                $('#ldf-'+(pointer+1)).find('.extra_to_job').attr('name','extra_to_job['+limit+']');
                $('#ldf-'+(pointer+1)).find('.extra_to_job').attr('name');
                limit++;
                if(limit == 25)
                    $('.btn-add').fadeOut();
            }
        }
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
        function mapData(blind)
        {
            console.log(blind);
            for(var i=0;i<blind.length;i++)
            {
                $('#ldf-'+(i+1)).find('[name="row_value"]').val(blind[i]['qty'] * blind[i]['cost_price']);
                $('#ldf-'+(i+1)).find('[name="item[]"]').text(blind[i]['item']);
                $('#ldf-'+(i+1)).find('[name="qty[]"]').val(blind[i]['qty']);
                $('#ldf-'+(i+1)).find('[name="sale_price[]"]').val(blind[i]['sale_price']);
                $('#ldf-'+(i+1)).find('[name="cost_price[]"]').val(blind[i]['cost_price']);
                $('#ldf-'+(i+1)).find('[name="margin[]"]').val(blind[i]['margin']);
                if(blind[i]['extra_to_job']==1)
                {
                    $('#ldf-'+(i+1)).find('[name="extra_to_job['+i+']"]').val(blind[i]['extra_to_job']);
                    $('#ldf-'+(i+1)).find('[name="extra_to_job['+i+']"]').prop("checked", true);
                }

                if(i !== blind.length-1)
                    addMore();
            }
        }
        var qt_data = <?php echo json_encode($quotation->quotation_items->toArray()) ?>;
        mapData(qt_data);

        function mapQuotationDataToFields(data)
        {
            $.map(data, function(value, index){
                var input = $('#quotation-details [name="'+index+'"]');
                if($(input).length)
                {
                    if($('input').attr('type') == 'checkbox' && value == $(input).val())
                        $(input).prop('checked', true);
                    else
                        $(input).val(value).change();
                }
            });
        }
        var q_data = <?php echo json_encode($quotation->toArray()) ?>;
        mapQuotationDataToFields(q_data);
    });
</script>
<script type="text/javascript">
  var update_url, target_table;
  function updateTable(url, table)
  {
    $.ajax({
      url: url,
      type: 'GET',
      success: function(rows){
        $(table).html(rows);
        $(table).DataTable().destroy();
        $(table).DataTable({
            ordering: false
        });
      }
    });
  }
  $(document).on('submit', '.modal form', function(e){
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
          $(form).closest('.modal').modal('hide');
          $(form).find('button:not([type="button"])').prop('disabled', false);
          toastr.success(response);
          updateTable(update_url, target_table);
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
          }
          else {
            toastr.error('Unknown Error!');
            $(form).find('button:not([type="button"])').prop('disabled', false);
          }

        }
    });
  });
  $(document).on('click', '.edit-btn', function(e){
    e.preventDefault();
    var btn = $(this);
    var url = $(btn).attr('data-href');
    $(btn).prop('disabled', true);

    $.ajax({
      url: url,
      type: 'GET',
      success: function(response){
        $('#update-form-modal-wrapper').html(response);
        $('#update-form-modal').modal('show');
        $(btn).prop('disabled', false);
        $('.form-group select').selectpicker();
        $('.form-group .datepicker').datetimepicker({});
      },
      error: function(){
        toastr.error('Unknown error!');
        $(btn).prop('disabled', false);
      }
    });
  });
  // $(document).on('click', '.del-btn', function(e){
  //   e.preventDefault();
  //   var btn = $(this);
  //   var url = $(btn).attr('data-href');
  //   $(btn).prop('disabled', true);

  //   $.ajax({
  //     url: url,
  //     type: 'GET',
  //     success: function(response){
  //       toastr.success(response);
  //       updateTable(update_url, target_table);
  //     },
  //     error: function(){
  //       toastr.error('Unknown error!');
  //       $(btn).prop('disabled', false);
  //     }
  //   });
  // });
  $(document).on('click', '[data-toggle="modal"],.edit-btn,.del-btn', function(){
    update_url = $(this).closest('.tab-pane')
          .find('[data-toggle="modal"]')
          .data('update_url');
    target_table = $(this).closest('.tab-pane')
          .find('table');
  });
  $('[data-update_url]').each(function(){
    updateTable($(this).data('update_url'), $(this).closest('.tab-pane').find('table'));
  });
  $(document).ready(function() {
        $(window).keydown(function(event){
            if(event.keyCode == 13) {
                event.preventDefault();
                return false;
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
</script>
<script>
    var val = "{{ $quotation->customer_id }}";
    populateNameAddress(val);
</script>

@endsection
