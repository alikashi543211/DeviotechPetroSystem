<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header card-header-primary">
                <h5 class="modal-title text-white bold">Update Line Item</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('quotation.save.item', $item->id) }}">
                  @csrf
                  <input type="hidden" name="quotation_id" value="{{ $item->quotation_id }}">
                  <div class="form-group">
                    <label>Item</label>
                    <textarea class="form-control" rows="5" name="item"></textarea>
                  </div>
                  <div class="form-group">
                    <label>Qty</label>
                    <input type="text" class="form-control" name="qty">
                  </div>
                  <div class="form-group">
                    <label>Cost Price</label>
                    <input type="text" class="form-control cost-price-box-edit" name="cost_price">
                  </div>
                  <div class="form-group">
                    <label>Sale Price</label>
                    <input type="text" class="form-control selling-price-box-edit" name="sale_price">
                  </div>
                  <div class="form-group">
                    <label>Margin %</label>
                    <input type="text" class="form-control margin-box-edit" readonly name="margin">
                  </div>
                  <button class="btn btn-primary">Save</button>
                  <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(function(){
  $(".cost-price-box-edit").keyup(function(){
    var cost_price=$(".cost-price-box-edit").val();
    var sale_price=$(".selling-price-box-edit").val();
    cost_price=parseFloat(cost_price)
    sale_price=parseFloat(sale_price)

        if(isNaN(sale_price))
        {
            sale_price=0;
        }
        if(isNaN(cost_price))
        {
            cost_price=0;
        }
        
   var margin = (sale_price - cost_price)/cost_price * 100;
    margin=margin.toFixed(2)
    $(".margin-box-edit").val(margin);
  });
});

$(document).ready(function(){
  $(".selling-price-box-edit").keyup(function(){
    var cost_price=$(".cost-price-box-edit").val();
    var sale_price=$(".selling-price-box-edit").val();
    cost_price=parseFloat(cost_price)
    sale_price=parseFloat(sale_price)
        if(isNaN(sale_price))
        {
            sale_price=0;
        }
        if(isNaN(cost_price))
        {
            cost_price=0;
        }
       
    var margin = (sale_price - cost_price)/cost_price * 100;
    margin=margin.toFixed(2)
    $(".margin-box-edit").val(margin);
  });
});

</script>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])
