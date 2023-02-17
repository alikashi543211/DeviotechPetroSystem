@extends('Admin.layouts.dashboard')
@section('page-title', 'Tool List')
@section('content')
<div class="col-12">
  <div class="row">
    <div class="col-md-12">
      <div class="col-md-12 text-right">
        <!-- <a href="{{url('/admin/tool_add')}}"><button type="button" class="btn btn-success">+ add tool</button></a> -->

        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tool-return-list"><i class="fa fa-print"></i> Tool Returned List</button>
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#tool-issue-list"><i class="fa fa-print"></i> Tool Issued List</button>
        <a href="{{ route('reports.tools_list') }}"><button type="button" class="btn btn-info"><i class="fa fa-print"></i> List</button></a>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add-category">+ Add new tool</button>
      </div>
      <div class="modal fade" id="tool-issue-list" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Tool Issued List</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="bmd-label-floating">Job</label>
                        <select name="job_id" id="issued_job_id" class="form-control">
                            <option value="" selected disabled>Select Job</option>
                            @foreach ($jobs as $item)
                                <option value="{{ $item->id }}">{{ $item->id }} {{ $item->name }}</option>
                            @endforeach
                        </select>
                      </div>
                    </div>
                </div>
                <button type="button" class="btn btn-primary pull-left issue_list_download">Download</button>
                <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="modal fade" id="tool-return-list" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Tool Returned List</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="bmd-label-floating">Job</label>
                        <select name="job_id" id="returned_job_id" class="form-control">
                            <option value="" selected disabled>Select Job</option>
                            @foreach ($jobs as $item)
                                <option value="{{ $item->id }}">{{ $item->id }} {{ $item->name }}</option>
                            @endforeach
                        </select>
                      </div>
                    </div>
                </div>
                <button type="button" class="btn btn-primary pull-left return_list_download">Download</button>
                <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="modal fade" id="add-category" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h5 class="modal-title text-white bold">Add Tool</h5>
              <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="{{route('store_tool')}}" method="post">
                @csrf
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Tool Code</label>
                      <input type="text" name="tool_code" class="form-control" value="" max-length="190">
                      @error('tool_code')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Serial No</label>
                      <input type="text" class="form-control" name="serial_no" value="" max-length="190">
                      @error('serial_no')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Date Purchased</label>
                      <input type="text" class="form-control datepicker" name="date_purchased" value="" max-length="190">
                      @error('date_purchased')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating">Purchase Price</label>
                      <input type="text" class="form-control" name="purchase_price" value="" max-length="190">
                      @error('purchase_price')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Description</label>
                      <input type="text" class="form-control" name="description" value="" max-length="190">
                      @error('description')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Notes</label>
                      <input type="text" class="form-control" name="notes" value="">
                      @error('notes')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary pull-left">Add</button>
                <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="card">
        <div class="card-header card-header-primary">
          <h4 class="card-title ">List of Tool</h4>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>
                  ID
                </th>
                <th>
                  Tool Code
                </th>
                <th>
                  Serial No
                </th>
                <th>
                  Description
                </th>
                <th>
                  Date Purchase
                </th>
                <th>
                  Purchase Price
                </th>
                <th>
                  Notes
                </th>
                <th>
                  Action
                </th>
              </thead>
              <tbody>
                <?php $index_count = 1; ?>

                @foreach ($tool as $cont)

                <tr>
                  <td>
                    <?php echo $index_count++ ?>
                  </td>

                  <td>
                    {{$cont->tool_code}}
                  </td>
                  <td>
                    {{$cont->serial_no}}
                  </td>
                  <td>
                    {{$cont->description}}
                  </td>
                  <td>
                    {{$cont->date_purchased}}
                  </td>
                  <td>
                    {{$cont->purchase_price}}
                  </td>
                  <td>
                    {{$cont->notes}}
                  </td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="{{route('tool_edit',['id'=>$cont->id])}}"><button type="button" class="btn btn-success btn-sm btn-fab btn-round"><i class="fa fa-pencil-square-o"></i></button></a>
                      <a href="{{route('tool_delete',['id'=>$cont->id] )}}" class="del-btn"><button type="button" class="btn btn-danger btn-sm btn-fab btn-round"><i class="fa fa-trash-o"></i></button></a>
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
</div>

@endsection
@section('js')
    <script>
        $(document).ready(function () {
            var issue_route = "{{ route('reports.tools_issued_list') }}/";
            var return_route = "{{ route('reports.tools_returned_list') }}/";
            $(".issue_list_download").click(function (e) {
                e.preventDefault();
                location.href = issue_route+$("#issued_job_id").val();
            });

            $(".return_list_download").click(function (e) {
                e.preventDefault();
                location.href = return_route+$("#returned_job_id").val();
            });
        });
    </script>
@endsection
