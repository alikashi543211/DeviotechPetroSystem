@extends('Admin.layouts.dashboard')
@section('page-title', 'Create Quotation Type')
@section('content')
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Create Quotation Type</h4>
            </div>
            <div class="card-body">
                <form action="{{route('quotation_type.save')}}" method="post">
                @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" name="type" class="form-control">
                                @if($errors->has('type'))
                                    {{ $errors->first('type') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Cost 1st Nozzle</label>
                                <input type="text" name="cost_1st_nozzle" class="form-control">
                                @if($errors->has('cost_1st_nozzle'))
                                    {{ $errors->first('cost_1st_nozzle') }}
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Cost Other Nozzles</label>
                                <input type="text" name="cost_other_nozzles" class="form-control">
                                @if($errors->has('cost_other_nozzles'))
                                    {{ $errors->first('cost_other_nozzles') }}
                                @endif
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>
@stop
