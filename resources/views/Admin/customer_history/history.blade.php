@extends('Admin.layouts.dashboard')
@section('page-title', 'Customer History')
@section('css')
<style type="text/css">
.nav-tabs .nav-item {
    /*width: 190px;*/
}

.nav-tabs .nav-item .nav-link {
    background-color: rgba(255, 255, 255, .15);
    margin: 5px;
}

.nav-tabs .nav-item .nav-link.active {
    background-color: rgba(255, 255, 255, 0.9);
    transition: 0s background-color 0s;
}

.card .card-header.card-header-tabs .nav-tabs {
    /*justify-content: center;*/
}
</style>
@endsection
@section('content')
<div class="row">
<div class="col-md-12">
    <div class="card">
        <div class="card-header card-header-tabs card-header-primary">
            Customers Details
        </div>
        <div class="card-body">
            <div class="row">
            <div class="col-md-6">
                <label>A/C Code</label>
                <input class="form-control" value="{{ $customer->code ?? '' }}" readonly>
            </div>
            <div class="col-md-6">
                <label>Customer Name</label>
                <input class="form-control" value="{{ $customer->name ?? '' }}" readonly>
                <strong><h4 style="font-weight: bold"></h4></strong>
            </div>
            <div class="col-md-12">
                <label>Address</label>
                <input class="form-control" value="{{ $customer->address1 ?? '' }}" readonly>
            </div>
            </div>

        </div>
    </div>
</div>
</div>
<div class="row">
<div class="col-md-12">
    <div class="card">
        <div class="card-header card-header-tabs card-header-primary">
            <div class="nav-tabs-navigation">
                <div class="nav-tabs-wrapper">
                    <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="#job-details" data-toggle="tab">
                                <i class="material-icons">receipt</i> Site Details
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#equipments" data-toggle="tab">
                                <i class="material-icons">euro</i> Equipment
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#quotations" data-toggle="tab">
                                <i class="material-icons">euro</i> Quotations
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contracts" data-toggle="tab">
                                <i class="material-icons">construction</i> Contracts
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#emails" data-toggle="tab">
                                <i class="material-icons">email</i> Emails
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#previous_jobs" data-toggle="tab">
                                <i class="material-icons">work</i> Previous Jobs
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#templates" data-toggle="tab">
                                <i class="material-icons">folder</i> Templates
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#site_procedure" data-toggle="tab">
                                <i class="material-icons">folder</i> Site Procedures
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        {{--<li class="nav-item">
                            <a class="nav-link" href="#service_contracts" data-toggle="tab">
                                <i class="material-icons">email</i> Service Contracts
                                <div class="ripple-container"></div>
                            </a>
                        </li>--}}
                        <li class="nav-item">
                            <a class="nav-link" href="#quality" data-toggle="tab">
                                <i class="material-icons">folder</i> Quality
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="tab-content">
                <div class="tab-pane active" id="job-details">
                    <form action="{{ route('site.detail.add') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">POS</label>
                                <input type="text" name="pos" class="form-control" value="{{ $customer->pos ?? '' }}">
                                    @if($errors->has('pos'))
                                    {{ $errors->first('pos') }}
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">No of Tanks</label>
                                    <input type="text" name="no_of_tanks" class="form-control" value="{{ $customer->no_of_tanks ?? '' }}">
                                    @if($errors->has('no_of_tanks'))
                                    {{ $errors->first('no_of_tanks') }}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <input type ="hidden" name="id" value="{{ $id ?? '' }}">
                        <button type="submit" class="btn btn-success pull-right">Add Detail</button>
                    </form>

                    {{--<div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Site Photographs</label>
                            </div>
                            <div class="card">
                                <div class="card-header card-header-tabs card-header-primary">
                                    <div class="nav-tabs-navigation">
                                        <div class="nav-tabs-wrapper">
                                            <ul class="nav nav-tabs" data-tabs="tabs">
                                                <li class="nav-item">
                                                    <a class="nav-link active" href="#pumps" data-toggle="tab">
                                                        <i class="material-icons">receipt</i> Pumps
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#pos" data-toggle="tab">
                                                        <i class="material-icons">euro</i> POS
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#tanks" data-toggle="tab">
                                                        <i class="material-icons">headset_mic</i> Tanks
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#guages" data-toggle="tab">
                                                        <i class="material-icons">construction</i> Guages
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="pumps"></div>
                                        <div class="tab-pane" id="pos"></div>
                                        <div class="tab-pane" id="tanks"></div>
                                        <div class="tab-pane" id="guages"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--}}
                </div>

                <div class="tab-pane" id="equipments">
                    <div class="row">
                        <div class="col-12 text-right">
                            <button class="btn btn-primary btn-sm bold open-modal" data-update_url="{{ route('equipment.list',['customer_id'=>$id]) }}" data-url="{{ route('equipment.add',['customer_id'=>$id]) }}">
                                <i class="material-icons">add</i> Add New
                            </button>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Make & Model</th>
                                    <th>Serial #</th>
                                    <th>Type</th>
                                    <th>Equipment No</th>
                                    <th>Quantity</th>
                                    <th>No. Months</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($customer->equipment as $ce)
                                <tr>
                                    <td>{{ $ce->pump_make_and_model->make_model }}</td>
                                    <td>{{ $ce->serial }}</td>
                                    <td>{{ $ce->type }}</td>
                                    <td>{{ $ce->equipment_no }}</td>
                                    <td>{{ $ce->quantity }}</td>
                                    <td>{{ $ce->no_of_months }}</td>
                                    <td>{{ $ce->start_date }}</td>
                                    <td>{{ $ce->end_date }}</td>
                                    <td>
                                        <button data-url="{{ route('equipment.edit', $ce->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                                        <button data-href="{{ route('equipment.delete', $ce->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="quotations">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header card-header-tabs card-header-primary">
                                    <div class="nav-tabs-navigation">
                                        <div class="nav-tabs-wrapper">
                                            <ul class="nav nav-tabs" data-tabs="tabs">
                                                <li class="nav-item">
                                                    <a class="nav-link active" href="#all_quotations"
                                                        data-toggle="tab">
                                                        <i class="material-icons">receipt</i> Quotations
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#verif_quotations" data-toggle="tab">
                                                        <i class="material-icons">euro</i> Verification Quotations
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="all_quotations">
                                            <div class="row">
                                                <div class="col-12 text-right">
                                                    <a
                                                        href="{{ route('quotation.add') }}/?customer_id={{ $customer->id }}"><button
                                                            class="btn btn-sm btn-success">+ add
                                                            quotation</button></a>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>Date</th>
                                                            <th>Details</th>
                                                            <th>Value</th>
                                                            <th>No. Days</th>
                                                            <th>Status</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @foreach ($customer->quotation as $cq)
                                                        @if(is_null($cq->job_id))
                                                        @else
                                                        @continue
                                                        @endif
                                                        <tr>
                                                            <td>{{ $cq->id }}</td>
                                                            <td>{{ $cq->date }}</td>
                                                            <td>{{ $cq->title }}</td>
                                                            <td>{{ $cq->total_value }}</td>
                                                            <td>{{ $cq->no_of_days }}</td>
                                                            <td><span class="badge @if($cq->status=='Pending') badge-warning text-dark @elseif($cq->status=='Won') badge-success text-white @elseif($cq->status=='Lost' || $cq->status=='lost_archieve') badge-danger text-white @endif p-2">@if($cq->status=='lost_archieve') Lost Archieve @else {{ $cq->status }} @endif</span></td>
                                                            <td>
                                                                <a href="{{route('quotation.edit',['id'=>$cq->id])}}/quotations?c={{$id}}"
                                                                    class="btn btn-success btn-sm">Edit</a>

                                                                <a href="{{route('quotation.delete',['id'=>$cq->id] )}}"
                                                                    class="btn btn-danger btn-sm del-btn">Delete</a>
                                                                @if($cq->status=='Won')
                                                                    <a href="{{route('quotation.move_to_job',['id'=>$cq->id] )}}" class="btn btn-info btn-sm">Move to Job</a>
                                                                @endif
                                                                @if($cq->status=='Lost')
                                                                  <a href="{{route('quotation.lost.list',['lost'=>$cq->id] )}}" class="btn btn-info btn-sm">Move To Lost Archive</a>
                                                                @endif
                                                                <a href="{{route('reports.quotation',$cq->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                                                                    <i class="fa fa-print"></i> PDF
                                                                </button></a>
                                                                <a href="{{route('reports.quotation',$cq->id)}}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                                                                    <i class="fa fa-print"></i> PDF Download
                                                                </button></a>
                                                                <a href="{{route('reports.quotation_xls',$cq->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
                                                                    <i class="fa fa-file-excel-o"></i> XLS
                                                                </button></a>
                                                            </td>
                                                        </tr>
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="verif_quotations">
                                            <div class="row">
                                                <div class="col-12 text-right">
                                                    <a
                                                        href="{{ route('verif_quotation.add') }}/?customer_id={{ $customer->id }}"><button
                                                            class="btn btn-sm btn-success">+ add verif
                                                            quotation</button></a>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>Date</th>
                                                            <th>Details</th>
                                                            <th>Value</th>
                                                            <th>No. Days</th>
                                                            <th>Status</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @foreach ($customer->verif_quotations as $cvq)
                                                        <tr>
                                                            <td>{{ $cvq->id }}</td>
                                                            <td>{{ $cvq->date }}</td>
                                                            <td>{{ $cvq->title }}</td>
                                                            <td>{{ $cvq->total_value }}</td>
                                                            <td>{{ $cvq->no_of_days }}</td>
                                                            <td>{{ $cvq->status }}</td>
                                                            <td>
                                                                <a href="{{route('verif_quotation.edit',['id'=>$cvq->id] )}}" class="btn btn-success btn-sm">Edit</a>
                                                                <a href="{{route('verif_quotation.delete',['id'=>$cvq->id] )}}" class="btn btn-danger btn-sm del-btn del-quotation">Delete</a>
                                                                <a href="{{route('quotation.edit',['id'=>$cvq->id] )}}"
                                                                    class="btn btn-success btn-sm">Edit</a>
                                                                <a href="{{route('quotation.delete',['id'=>$cvq->id] )}}"
                                                                    class="btn btn-danger btn-sm del-btn">Delete</a>
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
                    </div>
                </div>
                <div class="tab-pane" id="contracts">
                    <form
                        action="{{ route('customer_history.save_services', $customer->serviceContract ? $customer->serviceContract->id : '') }}"
                        method="post">
                        @csrf
                        <input type="hidden" name="customer_id" value="{{ $customer->id }}">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Payment Method</label>
                                    <select name="payment_method" class="form-control payment_method">
                                        <option value="" selected disabled>Select Payment Method</option>
                                        <option value="Direct Debit"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_method == "Direct Debit" ? 'selected' : '' : '' }}>
                                            Direct Debit</option>
                                        <option value="Invoice"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_method == "Invoice" ? 'selected' : '' : '' }}>
                                            Invoice</option>
                                        <option value="Standing Order"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_method == "Standing Order" ? 'selected' : '' : '' }}>
                                            Standing Order</option>
                                    </select>
                                    @if($errors->has('payment_method'))
                                    {{ $errors->first('payment_method') }}
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Payment Frequency</label>
                                    <select name="payment_frequency" class="form-control payment_frequency">
                                        <option value="" selected disabled>Select Payment Frequency</option>
                                        <option value="Bi-annually"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Bi-annually" ? 'selected' : '' : '' }}>
                                            Bi-annually</option>
                                        <option value="Monthly"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Monthly" ? 'selected' : '' : '' }}>
                                            Monthly</option>
                                        <option value="Quarterly"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Quarterly" ? 'selected' : '' : '' }}>
                                            Quarterly</option>
                                        <option value="Yearly"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Yearly" ? 'selected' : '' : '' }}>
                                            Yearly</option>
                                    </select>
                                    @if($errors->has('payment_frequency'))
                                    {{ $errors->first('payment_frequency') }}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary pull-left">Save</button>
                        <div class="clearfix"></div>
                    </form>
                    <div class="row">
                        <div class="col-12 text-right">
                            <a href="{{ route('contract.add') }}/?customer_id={{ $customer->id }}"><button
                                    class="btn btn-sm btn-success">+ add contract</button></a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>Title</th>
                                    <th>Value</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($customer->contract as $cc)
                                <tr>
                                    <td>{{ $cc->start_date }}</td>
                                    <td>{{ $cc->end_date }}</td>
                                    <td>{{ $cc->title }}</td>
                                    <td>{{ $cc->value }}</td>
                                    <td>{{ $cc->status }}</td>
                                    <td>
                                        <a href="{{route('contract.edit',['id'=>$cc->id] )}}/contracts"
                                            class="btn btn-success btn-sm">Edit</a>
                                        <a href="{{route('contract.delete',['id'=>$cc->id] )}}/contracts"
                                            class="btn btn-danger btn-sm del-btn">Delete</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="emails">
                    <div class="row">
                        <div class="col-12 text-right">
                            <a href="{{ route('letter.add') }}/?customer_id={{ $customer->id }}"><button
                                    class="btn btn-sm btn-success">+ add email</button></a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-stripped">
                            <thead>
                                <th>ID</th>
                                <th>Date</th>
                                <th>Title</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                                @foreach ($customer->letters as $cl)
                                <tr>
                                    <td>{{ $cl->id }}</td>
                                    <td>{{ $cl->date }}</td>
                                    <td>{{ $cl->title }}</td>
                                    <td>
                                        <a href="{{route('letter.edit',['id'=>$cl->id] )}}?customer_id={{$id}}"
                                            class="btn btn-success btn-sm">Edit</a>
                                        <a href="{{route('letter.delete',['id'=>$cl->id] )}}" 
                                            class="btn btn-danger btn-sm del-btn">Delete</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="previous_jobs">
                    <div class="row">
                        <div class="col-12 text-right">
                            <a href="{{route('job.list',['id'=>$customer->id] )}}"><button type="button"
                                    class="btn btn-success btn-sm">Add Job</button></a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Date</th>
                                    <th>Completed</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($customer->jobs as $cj)
                                <tr>
                                    <td>{{ $cj->id }}</td>
                                    <td>{{ $cj->date }}</td>
                                    <td>
                                        @if ($cj->completed != "" && $cj->completed == 1)
                                        <span class="badge badge-success">Yes</span>
                                        @else
                                        <span class="badge badge-success">No</span>
                                        @endif
                                    </td>
                                    <td>{{ $cj->detail }}</td>
                                    <td>
                                        <a href="{{ route('job.edit',['id'=>$cj->id,'c'=>$id] ) }}"
                                            class="btn btn-success btn-sm">Edit</a>
                                        <a href="{{ route('job.delete',['id'=>$cj->id,'c'=>$id] ) }}/previous_jobs"
                                            class="btn btn-danger btn-sm del-btn">Delete</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="templates">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Document</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if (isset($templates['entries']))
                                    @foreach ($templates['entries'] as $item)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td><a target="_blank" href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a></td>
                                        <td>
                                            <a href="{{ route('doc.delete') }}?path={{ $item['path_lower'] }}">
                                                <button type="submit" class="btn btn-primary btn-sm del-btn"><i class="material-icons">delete</i></button>
                                            </a>
                                        </td>
                                    </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="site_procedure">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Document</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if (isset($site_proc['entries']))
                                    @foreach ($site_proc['entries'] as $item)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td><a target="_blank" href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a></td>
                                        <td><a href="{{ route('doc.delete') }}?path={{ $item['path_lower'] }}" class="btn btn-primary btn-sm del-btn"><i class="material-icons">delete</i></a></td>
                                    </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                {{--<div class="tab-pane" id="service_contracts">
                    <form
                        action="{{ route('customer_history.save_services', $customer->serviceContract ? $customer->serviceContract->id : '') }}"
                        method="post">
                        @csrf
                        <input type="hidden" name="customer_id" value="{{ $customer->id }}">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Payment Method</label>
                                    <select name="payment_method" class="form-control payment_method">
                                        <option value="" selected disabled>Select Payment Method</option>
                                        <option value="Direct Debit"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_method == "Direct Debit" ? 'selected' : '' : '' }}>
                                            Direct Debit</option>
                                        <option value="Invoice"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_method == "Invoice" ? 'selected' : '' : '' }}>
                                            Invoice</option>
                                        <option value="Standing Order"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_method == "Standing Order" ? 'selected' : '' : '' }}>
                                            Standing Order</option>
                                    </select>
                                    @if($errors->has('payment_method'))
                                    {{ $errors->first('payment_method') }}
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Payment Frequency</label>
                                    <select name="payment_frequency" class="form-control payment_frequency">
                                        <option value="" selected disabled>Select Payment Frequency</option>
                                        <option value="Bi-annually"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Bi-annually" ? 'selected' : '' : '' }}>
                                            Bi-annually</option>
                                        <option value="Monthly"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Monthly" ? 'selected' : '' : '' }}>
                                            Monthly</option>
                                        <option value="Quarterly"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Quarterly" ? 'selected' : '' : '' }}>
                                            Quarterly</option>
                                        <option value="Yearly"
                                            {{ $customer->serviceContract ? $customer->serviceContract->payment_frequency == "Yearly" ? 'selected' : '' : '' }}>
                                            Yearly</option>
                                    </select>
                                    @if($errors->has('payment_frequency'))
                                    {{ $errors->first('payment_frequency') }}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary pull-left">Save</button>
                        <div class="clearfix"></div>
                    </form>
                </div>--}}
                <div class="tab-pane" id="quality">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Document</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if (isset($quality['entries']))
                                    @foreach ($quality['entries'] as $item)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td><a target="_blank" href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a></td>
                                        <td><a href="{{ route('doc.delete') }}?path={{ $item['path_lower'] }}" class="btn btn-primary btn-sm del-btn"><i class="material-icons">delete</i></a></td>
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

<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header bg-info">
            <h5 class="modal-title text-white bold">Add New</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body modal_body">
        </div>
    </div>
</div>
</div>
@stop
@section('js')

<script>
$(".connect-dropbox").click(function (e) {
    e.preventDefault();
    location.href="{{ route('dropbox_auth') }}";
});
var update_url, target_table;

function updateTable(url, table) {
    $.ajax({
        url: url,
        type: 'GET',
        success: function(rows) {
            $(table).html(rows);
            $(table).DataTable().destroy();
            $(table).DataTable({
                ordering: false
            });
        }
    });
}

$(document).on('click', '.open-modal', function() {
    var url = $(this).attr("data-url");

    $.ajax({
        type: "GET",
        url: url,
        success: function(response) {
            $('.modal_body').html(response);
            $('.modal_body').find(".datepicker").datetimepicker();
            $('.modal_body').find('.select2').selectpicker({
                liveSearch: true
            });
            $('#modal').modal('show');
        }
    });
});


$(document).on('submit', '.modal form', function(e) {
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
            updateTable(update_url, target_table);
            $(form).closest('#modal').modal('hide');
            $(form).find('button:not([type="button"])').prop('disabled', false);
            toastr.success(response);
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
            } else {
                toastr.error('Unknown Error!');
                $(form).find('button:not([type="button"])').prop('disabled', false);
            }

        }

    });
    $('[data-update_url]').each(function() {
        updateTable($(this).data('update_url'), $(this).closest('.tab-pane').find('table'));
    });
});
$(document).ready(function(){
  activaTab('{{ $tab ??""}}');
});

function activaTab(tab){
  $('.nav-tabs a[href="#' + tab + '"]').tab('show');
};

// Delete From Ajax
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
              $(btn).prop('disabled', false);
              $('[data-update_url]').each(function() {
                    updateTable($(this).data('update_url'), $(this).closest('.tab-pane').find('table'));
                });
          },
          error: function() {
              toastr.error('Unknown error!');
              $(btn).prop('disabled', false);
          }
      });
    });
</script>

@endsection
