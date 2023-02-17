@extends('Admin.layouts.dashboard')
@section('page-title', 'Receipt List')
@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="col-md-12 text-right">
      <!-- <a href="{{url('/admin/receipt')}}"><button type="button" class="btn btn-success">+ add receipt</button></a> -->
      <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ add receipt</button>
    </div>
    <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add Receipt</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{url('/admin/add_receipt')}}" method="post">
              @csrf
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Date</label>
                    <input type="text" class="form-control datepicker" name="date" value="{{$receipt->date ?? ''}}" max-length="190">
                    @error('date')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Name</label>
                    <select class="form-control" name="supplier">
                      <option value="">Select Supplier</option>
                      @if(count($suppliers)>0)
                      @foreach ($suppliers as $supplier)
                      <option value="{{$supplier->id ?? ''}}">{{$supplier->name ?? ''}}</option>
                      @endforeach
                      @endif
                    </select>
                    @error('supplier')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Stock Item</label>
                    <select class="form-control" name="stock_item">
                      <option value="">Select Item</option>
                      @if(count($stocks)>0)
                      @foreach ($stocks as $stock)
                      <option value="{{$stock->id ?? ''}}">{{$stock->name ?? ''}}</option>
                      @endforeach
                      @endif
                    </select>
                    @error('stock_item')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Serial Number</label>
                    <input type="text" class="form-control" name="serial_number" value="{{$receipt->serial_number ?? ''}}" max-length="190">

                    @error('serial_number')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Quantity</label>
                    <input type="text" class="form-control" name="quantity" value="{{$receipt->quantity ?? ''}}" max-length="190">
                    @error('quantity')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Unit Price</label>
                    <input type="text" class="form-control" name="unitprice" value="{{$receipt->unitprice ?? ''}}" max-length="190">
                    @error('unitprice')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              </div>
              <input type="hidden" value="{{$receipt->id ?? '0'}}" name="id">
              <button type="submit" class="btn btn-primary pull-left">Add</button>
              <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title ">Receipt List</h4>
        {{-- <p class="card-category"> Here is a subtitle for this table</p> --}}
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table">
            <thead class=" text-primary">
              <th>
                ID
              </th>
              <th>
                Date
              </th>
              <th>
                Supplier
              </th>
              <th>
                Stock Item
              </th>
              <th>
                Serial Number
              </th>
              <th>
                quantity
              </th>

              <th>
                Unit Price
              </th>
              <th>
                Action
              </th>
            </thead>
            <tbody>
              <?php $index_count = 1; ?>
              @foreach ($receipts as $receipt)

              <tr>
                <td>
                  <?php echo $index_count++ ?>
                </td>
                <td>
                  {{$receipt->date ?? ''}}
                </td>
                <td>
                  <?php $rec = App\Stock_receipt::find($receipt->id); ?>
                  {{$rec->receipt_supplier->name ?? ''}}
                </td>
                <td>
                  <?php $rece = App\Stock_receipt::find($receipt->id); ?>
                  {{$rece->rec_stock_item->name ?? ''}}
                </td>
                <td>
                  {{$receipt->serial_number ?? ''}}
                </td>
                <td>
                  {{$receipt->quantity ?? ''}}
                </td>
                <td>
                  {{$receipt->unitprice ?? ''}}
                </td>

                <td>
                  <div class="btn-group">
                    <a href="{{url('admin/receipt/'.$receipt->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a>
                    <form method="post">
                      {{ csrf_field() }}
                      <input type="hidden" name="id" value="{{$receipt->id ?? ''}}">
                      <input type="hidden" name="_method" value="DELETE">
                      <a href="{{url('admin/remove_receipt')}}?id={{$receipt->id ?? ''}}" class="del-btn"><button type="submit" class="btn btn-danger btn-sm" style="margin-left:10px">Delete</button></a>
                    </form>
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
@stop

@section('js')
  <script>
    $(document).ready(function(){
      $('.form-group .datepicker').datetimepicker({
        format: 'DD/MM/YYYY H:m a',
        defaultDate: "{{ now() }}",
      }); 
    });
    
  </script>
@endsection