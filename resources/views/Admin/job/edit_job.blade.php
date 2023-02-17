@extends('Admin.layouts.dashboard')
@section('page-title', 'Update Job')
@section('css')
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	<link rel="stylesheet" href="https://weareoutman.github.io/clockpicker/dist/jquery-clockpicker.min.css" />
	<style type="text/css">
		.clockpicker-popover {
			z-index: 99999 !important;
		}
		.nav-tabs .nav-item {
			/*width: 190px;*/
		}
		.nav-tabs .nav-item .nav-link {
			background-color: rgba(255, 255, 255, .15);
			margin: 5px;
		}
		.nav-tabs .nav-item .nav-link.active {
			transition: 0s background-color 0s;
		}
		.card .card-header.card-header-tabs .nav-tabs {
			/*justify-content: center;*/
		}
		.card-header-primary {
			background: linear-gradient(60deg, #ab47bc, #8e24aa);
		}
		#engineer_form .eng_input_element
	    {
	        border: 2px solid black;
	        border-radius: 0px;
	        color: black !important;
	    }
	    .job-card-img
	    {
	    	width: 100%;
	    	height: 200px;
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
        .external_image_div
        {
            width: 100%;
    		height: 160px;
        }
        .internal_image
        {
            height: 100px;
    		width: 100%;
        }
	</style>
@endsection
@section('content')
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header card-header-tabs card-header-primary">
					<h4 class="card-title">Customers Details</h4>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-6">
							<label>Job ID</label>
							<input class="form-control" value="{{ $job->id ?? '' }}" readonly>
						</div>
						<div class="col-md-6">
							<label>Customer Name</label>
							<input class="form-control" value="{{ $job->customer->name ?? '' }}" readonly>
							<strong><h4 style="font-weight: bold"></h4></strong>
						</div>
						<div class="col-md-12">
							<label>Job Detail</label>
							<input class="form-control" value="{{ $job->detail ?? '' }}" readonly>
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
									<a class="nav-link active job_details_tab" href="#job-details" data-toggle="tab">
										<i class="material-icons">receipt</i> Job Details
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#job_engineers" data-toggle="tab">
										<i class="material-icons">sticky_note_2</i>Engineers
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
									<a class="nav-link" href="#verif_quotations" data-toggle="tab">
										<i class="material-icons">euro</i>Verification Quotations
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#communications" data-toggle="tab">
										<i class="material-icons">headset_mic</i> Action taken / Communication ( <span class="comm_length">{{ $action_count }}</span> )
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#labours" data-toggle="tab">
										<i class="material-icons">construction</i> Labour
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#purchases" data-toggle="tab">
										<i class="material-icons">shopping_cart</i> Purchases
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#stocks" data-toggle="tab">
										<i class="material-icons">store</i> Stocks
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#emails" data-toggle="tab">
										<i class="material-icons">email</i> Email
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#jobdocument" data-toggle="tab">
										<i class="material-icons">note_add</i>Job Docs
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#job_card_customer" data-toggle="tab">
										<i class="material-icons">note_add</i>Job Card Customer
										<div class="ripple-container"></div>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link job_card_internal_tab" href="#job_card_internal" data-toggle="tab">
										<i class="material-icons">note_add</i>Job Card Internal
										<div class="ripple-container"></div>
									</a>
								</li>

								@if ($job->jobtype)
								@if ($job->jobtype->name == 'Calibration')
								<li class="nav-item">
									<a class="nav-link" href="#jobcertificates" data-toggle="tab">
										<i class="material-icons">note_add</i>Certificates
										<div class="ripple-container"></div>
									</a>
								</li>
								@endif
								@endif
							</ul>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="tab-content">
						<div class="tab-pane active" id="job-details">
							<form action="{{route('job.save', $job->id)}}" method="post" class="petro-edit-job-form">
								@csrf
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>A/C Code *</label>
											<select class="form-control customer_id" name="customer_id" readonly="">
													<option value="{{$job->customer->id}}" selected>{{$job->customer->code}}</option>
											</select>
											@if($errors->has('customer_id'))
											{{ $errors->first('customer_id') }}
											@endif
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Name *</label>
											<input type="text" name="name" class="form-control name" max-length="190" readonly>
											@if($errors->has('name'))
											{{ $errors->first('name') }}
											@endif
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Address</label>
											<input type="text" name="address" class="form-control address" readonly>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Contact *</label>
											<input type="text" class="form-control" name="contact" value="{{ $job->contact }}" max-length="190" required="">
											@if($errors->has('contact'))
											<div class="alert alert-danger">{{ $errors->first('contact') }}</div>
											@endif
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Job Type *</label>
											<select class="form-control" name="jobtype_id" required="">
													@if(isset($job->jobtype_id))
															<option value="{{$job->jobtype_id}}">{{$job->jobtype->name ?? ""}}</option>
													@else
															<option selected disabled>Select Job Type</option>
															@foreach($jobtype as $type )
															<option value="{{$type->id}}" @if($job->jobtype_id==$type->id) selected @endif>{{$type->name}}</option>
															@endforeach
													@endif
											</select>
											@if($errors->has('jobtype_id'))
											<div class="alert alert-danger">{{ $errors->first('jobtype_id') }}</div>
											@endif
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>Category</label>
											<select class="form-control" name="category_id" readonly>
												<option selected disabled>Select Category</option>
												@foreach($category as $cat )
												<option value="{{$cat->id}}" @if($job->category_id == $cat->id) selected @endif>{{$cat->name}}
												</option>
												@endforeach
											</select>
											@if($errors->has('category_id'))
											{{ $errors->first('category_id') }}
											@endif
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Detail *</label>
											<textarea class="form-control" name="detail" rows="3" required="">{{ $job->detail }}</textarea>
											@if($errors->has('detail'))
											<div class="alert alert-danger">{{ $errors->first('detail') }}</div>
											@endif
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Date</label>
											<input type="text" class="form-control datepicker" name="date" value="{{ $job->date }}"
												max-length="190">
											@if($errors->has('date'))
											{{ $errors->first('date') }}
											@endif
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Works completed</label>
											<select class="form-control" name="completed" id="work_completed">
												<option selected disabled value="">Works completed Yes / No</option>
												<option value="1" @if($job->completed=='1') selected @endif>Yes</option>
												<option value="0" @if($job->completed=='0') selected
													@endif>No</option>
											</select>
										</div>
									</div>
									<div class="col-md-6 @if($job->completed==false) d-none @endif job_status_col">
										<div class="form-group">
											<label>Job status</label>
											<select class="form-control select_option" name="status" id="select_option">
												<option selected disabled>Job status</option>
												<option value="open" @if($job->status=='open') selected @endif>Ongoing</option>
												<option value="completed" @if($job->status=='completed') selected
													@endif>Completed</option>
											</select>
										</div>
									</div>
									{{--<option value="completed" @if($job->status=='completed' || $job->jobtype_id == 1) selected
													@endif>Completed</option>
													 && $job->jobtype_id != 1
									--}}
									<div class="col-md-6 completed_date" @if(!isset($job->datecomplete) || $job->status !== 'completed')
										style="display: none;" @endif>
										<div class="form-group">
											<label> Completed Date</label>
											<input type="text" class="form-control notFillDatepicker completed_date_element" name="datecomplete"
												value="{{ $job->datecomplete }}" max-length="190">
											@if($errors->has('date'))
											{{ $errors->first('date') }}
											@endif
										</div>
									</div>
									<div class="col-md-6 select_filled" @if($job->select_option=='null' || $job->status !== 'completed')
										style="display: none;" @endif >
										<div class="form-group">
											<label>Invoice or filling?</label>
											<select class="form-control select_filled_element" name="select_option">
												<option selected disabled>Select Option</option>
												<option value="filing" @if($job->select_option=='filing' && $job->status == 'completed') selected @endif>Filing</option>
												<option value="invoice" @if($job->select_option=='invoice' && $job->status == 'completed') selected
													@endif>Invoice</option>
											</select>
										</div>
									</div>
									<div class="col-md-6 invoice_or_pending" @if($job->invoice_option=='null' || $job->status !== 'completed')
										style="display: none;" @endif >
										<div class="form-group">
											<label>Invoice Status</label>
											<select class="form-control invoice_or_pending_element" name="invoice_option">
												<option selected disabled>Select Invoice</option>
												<option value="invoiced" @if($job->invoice_option=='invoiced' && $job->status == 'completed') selected
													@endif>Invoiced</option>
												<option value="pending_invoice" @if($job->invoice_option=='pending_invoice' && $job->status == 'completed') selected
													@endif>Pending Invoice</option>
											</select>
										</div>
									</div>
									<div class="col-md-6 invoiced_number" @if(!isset($job->invoice_no) || $job->status !== 'completed')
										style="display: none;" @endif >
										<div class="form-group">
											<label>Invoice No *</label>
											<input type="text" name="invoice_no" class="form-control invoiced_number_element" max-length="190"
												value="{{$job->invoice_no}}">
											@if($errors->has('name'))
											{{ $errors->first('name') }}
											@endif
										</div>
									</div>
									{{--<div class="col-md-6 filed_or_to_be" @if($job->filing_option=='null') style="display: none;" @endif >
										<div class="form-group">
											<label>Select Option</label>
											<select class="form-control filed_or_to_be_element" name="filing_option">
												<option selected disabled>Select Filing</option>
												<option value="to_be_filed" @if($job->filing_option=='to_be_filed') selected @endif>To be filed
												</option>
												<option value="filed" @if($job->filing_option=='filed') selected @endif>Filed</option>
											</select>
										</div>
									</div>--}}
									@if(!is_null($job->warranty))
									<div class="col-md-6">
										<div class="form-group">
											<label>Warranty *</label>
											<select class="form-control" name="warranty_id">
															<option value="" disabled selected>Select Option</option>
															@foreach ($warranties as $v)
																	<option value="{{ $v->title }}" @if($job->warranty==$v->title) selected @endif>{{ $v->title }}</option>
															@endforeach
													</select>
											@if($errors->has('jobtype_id'))
											<div class="alert alert-danger">{{ $errors->first('jobtype_id') }}</div>
											@endif
										</div>
									</div>
									@endif
									<div class="col-md-6">
										<div class="form-group">
											<label>Entered By</label>
											<input type="text" class="form-control" name="enteredby" value="{{ auth()->user()->name }}"
												max-length="190">
											@if($errors->has('enteredby'))
											{{ $errors->first('enteredby') }}
											@endif
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Order No</label>
											<input type="text" class="form-control" name="order_no" value="{{ $job->order_no }}"
												max-length="190">
											@if($errors->has('order_no'))
												{{ $errors->first('order_no') }}
											@endif
										</div>
									</div>
								</div>
								<div class="row job-checks mb-2">
									@if ($job->jobtype_id)
									@if ($job->jobtype_id == 4 || $job->jobtype_id == 1)
									<div class="col-md-6 form-check warranty-field">
										<label>Warranty</label>
										<select name="warranty" class="form-control" id="warranty" autocomplete="off">
											<option value="0">0</option>
											@foreach ($warranties as $v)
											<option @if($job->warranty==$v->title) selected @endif value="{{ $v->title }}">{{ $v->title }}
											</option>
											@endforeach
										</select>
									</div>
									@endif
									@endif

								</div>
								<div class="row">
									<div class="col-md-6">
										<button type="submit" class="btn btn-primary update-job-btn">Update</button>
										<a href="/admin/dashboard" class="btn btn-danger">Close</a>
									</div>
									<div class="col-md-6">
										<button type="button" class="btn btn-warning close-job {{ $job->jobtype_id == 1 ? '' : 'd-none' }}"
											disabled>Close Job</button>
									</div>
								</div>
								<div class="clearfix"></div>
							</form>
						</div>
						<div class="tab-pane" id="communications">
							<button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#add-communication"
								data-update_url="{{ route('job.get.communications', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							<h4 class="bold">Action taken / Communication</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>
						<div class="tab-pane" id="labours">
							<button class="btn btn-primary btn-sm bold pull-right add_new" data-toggle="modal" data-target="#add-labour"
								data-update_url="{{ route('job.get.labours', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							<h4 class="bold">Job Labour</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>
						<div class="tab-pane" id="job_card_customer">
							<button class="btn btn-primary btn-sm bold pull-right add_new d-none" data-toggle="modal" data-target="#add-labour"
								data-update_url="{{ route('job.get.job_card_customer', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							<h4 class="bold">Job Card Customer</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>
						<div class="tab-pane" id="job_card_internal">
							<button class="btn btn-primary btn-sm bold pull-right add_new d-none" data-toggle="modal" data-target="#add-labour"
								data-update_url="{{ route('job.get.job_card_internal', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							@if(isset(request()->type))
								<h4 class="bold">Job Card Images - {{ $eng_form->id }}</h4>
								@if($eng_form->eng_images->count() > 0)
				                    <div class="row mt-5">
				                    	<div class="col-md-12">
				                    	</div>
				                    	@foreach($eng_form->eng_images as $card_image)
					                    	<div class="col-md-4 my-2 ml-3">
					                    		<div class="external_image_div">
				                    				<img src="{{ asset($card_image->path) }}" class="internal_image">
						                    	</div>
						                    	<div class="text-center">
						                    		<a href="{{ asset($card_image->path) }}" class="btn btn-warning btn-sm" download>Download</a>
						                    	</div>
					                    	</div>
				                    	@endforeach
				                    </div>
				                    <div class="row">
				                    	<div class="col-md-12 text-right">
			                    			<a href="{{ route('job.edit', $job->id) }}/job_card_internal" class="btn btn-danger">Close</a>
				                    	</div>
				                    </div>
			                    @endif	
							@elseif(request()->form)
							<h4 class="bold">Edit Job Card Internal</h4>
								<form action="{{ route('job.job_card_internal.save') }}" method="post" enctype="multipart/form-data" id="engineer_form">
				                    @csrf
				                    <input type="hidden" name="form_id" value="{{ $eng_form->id }}">
				                    <input type="hidden" name="job_id" value="{{ $job->id }}">
				                    @php
				                        $date=date('d-m-Y',strtotime(dateFormat($job->created_at)));
				                    @endphp
				                    <div class="row">
				                        <div class="col-md-6">
				                            <div class="form-group">
				                                <label>Date</label>
				                                <input type="text" class="form-control valid-control eng-dark-input" name="date" value="{{old('date',$date)}}"
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
				                                @if($errors->has('job_id'))
				                                	{{ $errors->first('job_id') }}
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
				                                @if($errors->has('job_type'))
				                                	{{ $errors->first('job_type') }}
				                                @endif
				                            </div>
				                        </div>
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Job Sheet No</label>
				                                <input type="text" class="form-control valid-control eng-dark-input" name="job_sheet_no" value="{{$job->id.'-'.seq_number(0)}}" readonly="">
				                                @if($errors->has('job_sheet_no'))
				                                	{{ $errors->first('job_sheet_no') }}
				                                @endif
				                            </div>
				                        </div>
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Order No</label>
				                                <input type="text" class="form-control valid-control eng_input_element numbers bg_white" name="order_no" value="{{ $eng_form->order_no ?? '' }}" placeholder="customer po number Linked or blank to fill on sitorder_noe" required>
				                                @if($errors->has('order_no'))
				                                	{{ $errors->first('order_no') }}
				                                @endif
				                            </div>
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Contact on site </label>
				                                <input type="text" class="form-control valid-control eng_input_element" name="contact_site" value="{{ $job->contact }}">
				                                @if($errors->has('contact_on_site'))
				                                	{{ $errors->first('contact_on_site') }}
				                                @endif
				                            </div>
				                        </div> 
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Job Details</label>
				                                <textarea name="job_detail" class="form-control valid-control eng-dark-input" readonly>{{$job->detail}}</textarea>
				                                @if($errors->has('job_detail'))
				                                	{{ $errors->first('job_detail') }}
				                                @endif
				                            </div>
				                        </div>
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Work Carried Out</label>
				                                <textarea class="form-control valid-control eng_input_element" name="work_carried_out">{{ $eng_form->work_carried_out ?? '' }}</textarea>
				                                @if($errors->has('work_carried_out'))
				                                	{{ $errors->first('work_carried_out') }}
				                                @endif
				                            </div>
				                        </div>
				                    </div>
				                    @if($eng_form->engineer_equipments->count() > 0)
					                    <div class="row">
					                        <div class="col-md-12">
					                        	<h5 class="card-title">Equipments</h5>
					                            <div class="make_and_serial">
					                                <div class="row" id="make_and_serial-1">
					                                    <span class="item-make-serial-count d-none">1</span>
					                                    <div class="col-md-3">
					                                        <div class="form-group">
					                                            <label>Make / Model<br></label>
					                                            <input type="text" name="make[]" class="form-control valid-control eng-dark-input">
					                                        </div>
					                                    </div>
					                                    <div class="col-md-3">
					                                        <div class="form-group">
					                                            <label>Equipment no<br></label>
					                                            <input type="text" name="equipment[]" class="form-control valid-control numbers eng-dark-input">
					                                        </div>
					                                    </div>
					                                    <div class="col-md-3">
					                                        <div class="form-group">
					                                            <label>Serial Number<br></label>
					                                            <input type="text" name="serial_no_2[]" class="form-control valid-control eng-dark-input">
					                                        </div>
					                                    </div>
					                                    <div class="col-md-3">
					                                        <div class="form-group">
					                                            <label>W and M Seals</label><br>
					                                            <input type="radio"  id="yes-0" class="broken_result yes_w_m_seals" name="w_m_seals[0]" value="1" required>
					                                            <label class="yes_label" for="yes-0">Yes</label><br>

					                                            <input type="radio" id="no-0" class="broken_result no_w_m_seals" name="w_m_seals[0]" value="0">
					                                            <label class="no_label" for="no-0">No</label><br>

					                                            <input type="radio" id="na-0" class="broken_result no_w_m_seals" name="w_m_seals[0]" value="na">
					                                            <label class="no_label" for="na-0">N/A</label><br>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
				                    @endif
				                    @if($eng_form->materials->count() > 0)
					                    <div class="row">
					                        <div class="col-md-12">
					                        	<h5 class="card-title">Materials</h5>
					                            <div class="material_block">
					                                <div class="row" id="material_row-1">
					                                    <span class="item-count d-none">1</span>
					                                    <div class="col-md-6">
					                                        <div class="form-group">
					                                            <label>Material used<br></label>
					                                            <input type="text" name="material_used[]" class="form-control valid-control eng-dark-input">
					                                        </div>
					                                    </div>
					                                    <div class="col-md-6">
					                                        <div class="form-group">
					                                            <label>Quantity used<br></label>
					                                            <input type="text" name="quantity_used[]" class="form-control valid-control numbers eng-dark-input">
					                                        </div>
					                                    </div>
					                                    <div class="col-md-2">
				                                        	<br>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
				                    @endif
				                    @if($eng_form->eng_images->count() > 0)
					                    <div class="row">
					                    	<div class="col-md-12">
					                    		<h5 class="card-title">Images</h5>
					                    	</div>
					                    	@foreach($eng_form->eng_images as $card_image)
						                    	<div class="col-md-12 my-2 ml-3">
						                    		<a href="{{ asset($card_image->path) }}" download>{{ asset($card_image->path) }}</a>
						                    	</div>
					                    	@endforeach
					                    </div>
				                    @endif
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group">
				                                <label>Job Completed</label>
				                                <br>
				                                <input type="radio" id="completed_yes" class="completed_result valid-control" name="completed" value="1" @if($eng_form->completed == 1) checked @endif>
				                                <label for="completed_yes">Yes</label><br>
				                                <input type="radio" id="completed_no" class="completed_result" name="completed" value="0" @if($eng_form->completed == 0) checked @endif>
				                                <label for="completed_no">No</label><br>
				                            </div>
				                        </div>
				                    </div>
				                    
				                    <div class="row">
				                    	<div class="col-md-12 completed_comment @if($eng_form->completed != 1) d-none @endif">
				                            <div class="form-group">
				                                <label>Job completed comment</label>
				                                <textarea name="job_completed_comment" value="" id="" class="form-control valid-control eng-dark-input" placeholder="Job Comment">{{ $eng_form->job_completed_comment }}</textarea>
				                            </div>
				                        </div>
		                        		<div class="col-md-12 why_comment @if($eng_form->completed == 1) d-none @endif">
				                            <div class="form-group">
				                                <label>Job not completed comment</label>
				                                <textarea name="not_completed_comment" value="" id="" class="form-control valid-control eng-dark-input" placeholder="Job Comment" >{{ $eng_form->not_completed_comment }}</textarea>
				                            </div>
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group">
				                                <label>Office comment</label>
				                                <textarea name="comment" value="" id="" class="form-control valid-control eng-dark-input" placeholder="Office Comment" required>{{ $eng_form->comment ?? '' }}</textarea>
				                            </div>
				                        </div>
				                    </div>
				                    @if($eng_form->job_labour)
					                    <div class="row">
					                        <div class="col-md-4">
					                            <div class="form-group">
					                                <label>Travel From</label>
					                                <input type="text" class="form-control valid-control timepicker eng-dark-input bg_white" name="travel_from" id="travel_from" autocomplete="off" value="{{ $eng_form->job_labour->travel_from }}" readonly>
					                            </div>
					                        </div>
					                        <div class="col-md-4">
					                            <div class="form-group">
					                                <label>Travel To</label>
					                                <input type="text" class="form-control valid-control timepicker eng-dark-input bg_white" name="travel_to" id="travel_to" autocomplete="off" value="{{ $eng_form->job_labour->travel_to }}" readonly>
					                            </div>
					                        </div>
					                        <div class="col-md-4">
					                            <div class="form-group">
					                                <label>Travel Time</label>
					                                <input name="travel_time" value="{{ $eng_form->job_labour->travel_time }}" id="travel_time_calc" class="form-control valid-control hrs eng-dark-input" readonly>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="row">
					                        <div class="col-md-4">
					                            <div class="form-group">
					                                <label>Site Arrival Time</label>
					                                <input type="text" name="site_arrival_time" value="{{ $eng_form->job_labour->start }}" id="TmOnSite" class="form-control valid-control timepicker time_one eng-dark-input bg_white" autocomplete="off" readonly>
					                            </div>
					                        </div>
					                        <div class="col-md-4">
					                            <div class="form-group">
					                                <label>Site Departure Time</label>
					                                <input type="text" name="site_departure_time" value="{{ $eng_form->job_labour->end }}" id="TmOffSite" class="form-control valid-control timepicker time_two eng-dark-input bg_white" autocomplete="off" readonly>
					                            </div>
					                        </div>
					                        <div class="col-md-4">
					                            <div class="form-group">
					                                <label>Time On Site</label>
					                                <input name="time_on_site" value="{{ getTimeFormat($eng_form->job_labour->hours) }}" id="TmTotalHrsOnSite" class="form-control valid-control hrs eng-dark-input" readonly>
					                            </div>
					                        </div>
					                    </div>
				                    @else
				                    	<div class="row">
				                    		<div class="col-md-12 my-2">
				                    			<h5 class="card-title text-danger">Engineer has not visited site</h5>
				                    		</div>
				                    	</div>
				                    @endif
				                    <div class="row">
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Engineers Name</label>
				                                <input name="engineer_name" value="{{ $eng_form->engineer->name ?? '' }}" id="" class="form-control valid-control eng-dark-input" readonly>
				                            </div>
				                        </div>
				                        <div class="col-md-4">
				                            <div class="form-group">
				                                <label>Van No</label>
				                                <input type="text" name="van_no"  class="form-control valid-control eng-dark-input" value="{{ $eng_form->van_no }}" readonly>
				                            </div>
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col-md-12">
				                            <div class="form-group">
				                                <button name="submit" class="btn btn-success engineer_submit_btn" value="">SAVE</button>
				                                <a href="{{route('admin.dashboard')}}" class="btn btn-danger">Close</a>
				                            </div>
				                        </div>
				                    </div>
				                </form>
							@else
								<h4 class="bold">Job Card Internal</h4>
								<div class="table-responsive">
									<table class="table-bordered table table-striped custom-dt">

									</table>
								</div>
							@endif
						</div>
						<div class="tab-pane" id="purchases">
							<button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#add-purchase"
								data-update_url="{{ route('job.get.purchases', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							<h4 class="bold">Job Purchases</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>
						<div class="tab-pane" id="stocks">
							<button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#add-stock"
								data-update_url="{{ route('job.get.stocks', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							<h4 class="bold">Materials Used</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>
						<div class="tab-pane" id="emails">
							<button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#send_to_customer"
								data-update_url="{{ route('job.get.emails', $job->id) }}">
								<i class="material-icons">add</i>Mail Send To Customer
							</button>
							<button class="btn btn-primary btn-sm bold pull-right ignore" data-toggle="modal" data-target="#send_to_staff"
								data-update_url="{{ route('job.get.emails', $job->id) }}">
								<i class="material-icons">add</i>Mail Send To Staff
							</button>
							<h4 class="bold">Job Emails</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">
								</table>
							</div>
						</div>
						<div class="tab-pane" id="jobdocument">
							<a href="https://www.dropbox.com/home{{ $job->job_folder }}" target="_blank"
								class="btn btn-primary btn-sm bold pull-right">
								View Folder
							</a>
							<button class="btn btn-primary btn-sm bold pull-right" data-toggle="modal" data-target="#add-jobdocument"
									data-update_url="{{ route('job.get.job_document', $job->id) }}">
								<i class="material-icons">add</i> Add New
							</button>
							<h4 class="bold">Job Document</h4>
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
													<td><a target="_blank"
															href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a>
													</td>
													<td>
														<a href="{{ route('job.deletedocument') }}?job_id={{$job->id}}&id={{$item['name']}}"
														class="btn btn-primary btn-sm del-btn"><i class="material-icons">delete</i></a>
														{{-- <a href="{{ route('job.deletedocument') }}?job_id={{$job->id}}&id={{$item['name']}}"
														class="btn btn-success btn-sm del-btn">Edit</a> --}}
													</td>
											</tr>
											@endforeach
										@endif
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane" id="verif_quotations">
							<a class="btn btn-primary btn-sm bold pull-right"
								data-update_url="{{ route('job.get.verif_quotations', $job->id) }}"
								href="{{ route('verif_quotation.add') }}?job_id={{$job->id}}&c_id={{ $job->customer_id }}">
								<i class="material-icons">add</i> Add New
							</a>
							<h4 class="bold">Verification quotations</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">
								</table>
							</div>
						</div>
						<div class="tab-pane" id="job_engineers">
							<a class="btn btn-primary btn-sm bold pull-right"
								data-update_url="{{ route('job.get.job_engineers', $job->id) }}"
								data-toggle="modal" data-target="#assign-engineerjob" href="javascript:void(0);">
								<i class="material-icons">add</i> Assign Engineer
							</a>
							<h4 class="bold">Job Engineers</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>

						<div class="tab-pane" id="quotations">
							<a class="btn btn-primary btn-sm bold pull-right"
								data-update_url="{{ route('job.get.quotations', $job->id) }}"
								href="{{ route('quotation.add') }}?job_id={{$job->id}}&c_id={{ $job->customer_id }}">
								<i class="material-icons">add</i> Add New
							</a>
							<h4 class="bold">Job Quotations</h4>
							<div class="table-responsive">
								<table class="table-bordered table table-striped custom-dt">

								</table>
							</div>
						</div>
						<div class="tab-pane certificate-box" id="jobcertificates">
							<div class="row">
								<div class="col-md-6">
									<h4 class="bold">Certificate Details</h4>
								</div>
								<div class="col-md-6 text-right">
									<a href="{{route('reports.job_certificate',$job->id)}}"><button
											class="btn btn-primary btn-sm bold print-certificate-btn" @if(!isset($job->certificate)) disabled
											@endif>
											<i class="fa fa-print"></i> PDF
										</button></a>
									<button class="btn btn-primary btn-sm bold add-pump-btn" data-toggle="modal"
										data-target="#add-pump-certified" data-update_url="{{ route('job.get.pump_certifieds', $job->id) }}"
										>
										<i class="material-icons">add</i> Add Pumps Certified
									</button>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 certificate-column">
									<form method="POST" class="save_certficate_form">
										@csrf
										<div class="form-group">
											<label>Job No</label>
											<input type="text" class="form-control" name="job_id" value="{{$job->id}}" readonly>
										</div>
										<input type="hidden" class="form-control" name="customer_id" value="{{$job->customer_id}}" readonly>
										<div class="form-group">
											<label>Verification Date</label>
											<input type="text" class="form-control cverification_date datepicker"
												value="@if(isset($job->certificate->verification_date)){{$job->certificate->verification_date}} @endif"
												name="verification_date">
										</div>

										<div class="form-group">
											<label>Name</label>
											<input type="text" class="form-control cname" name="name"
												value="@if(isset($job->certificate->name)) {{$job->certificate->enteredBy}} @else {{$job->customer->name}} @endif">
										</div>
										<div class="form-group">
											<label>Address</label>
											<textarea class="form-control caddress" name="address"
												rows="4">@if(isset($job->certificate->address)) {{$job->certificate->address}}@else{{$job->customer->address1.' '.$job->customer->address2.' '.$job->customer->address3.' '.$job->customer->address4}}@endif</textarea>
										</div>
										<div class="form-group">
											<label>Entered By</label>
											<input type="text" class="form-control centeredBy"
												value="@if(isset($job->certificate->enteredBy)) {{$job->certificate->enteredBy}} @else {{Auth::user()->name}} @endif"
												name="enteredBy">
										</div>
										<button type="button" class="btn btn-primary save_certficate_btn" @if(count($job->pump_certifieds)==0) disabled="true" @endif>Save</button>
									</form>
								</div>
								<div class="col-md-6">
									<div class="table-responsive">
										<table class="table-bordered table table-striped custom-dt">

										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="add-pump-certified" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Add Pump Certified</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.pump_certified') }}">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<input type="hidden" name="certificate_id"
							value="{{$job->certificate->id ?? null }}">
						<div class="form-group">
							<label>Pump No</label>
							<input type="text" class="form-control" name="pump_no">
						</div>
						<div class="form-group">
							<label>Nozzles</label>
							<input type="text" class="form-control" name="nozzles">
						</div>
						<div class="form-group">
							<label>Make</label>
							<input type="text" class="form-control" name="make">
						</div>
						<div class="form-group">
							<label>Serial No</label>
							<input type="text" class="form-control" name="serial_no">
						</div>

						<button class="btn btn-primary save_pump_certified_btn">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="edit_job_card_password_modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Edit Job Card Internal</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="get" action="" id="edit_job_card_password_form">
						@csrf
						<input type="hidden" name="edit_job_form_id" value="">
						
						<div class="form-group">
							<label>Password</label>
							<input type="text" class="form-control" name="edit_job_card_password" id="edit_job_card_password">
						</div>

						<button type="button" class="btn btn-primary submit_edit_job_card">Submit</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="assign-engineerjob" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Assign Engineer</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.job_engineers.save') }}">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<div class="form-group">
							<label>Engineer</label>
							<select class="form-control" name="assign_engineer_id">
								<option value="">Select Engineer</option>
								@foreach($contact_surname as $s)
									@if(strpos(ucfirst($s->surname), "Z ") !== false)
										@continue
									@endif
									<option data-hourly_rate='{{ $s->charge ?? "0" }}' value="{{ $s->id }}">{{ ucfirst($s->surname) }} {{ ucfirst($s->forename) }}
									</option>
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label>Interval</label>
							<select class="form-control assign_job_interval" name="assign_job_interval">
								<option selected="" disabled="" value="">Select Interval</option>
								<option value="1">One Day</option>
								<option value="2">Multiple Days</option>
							</select>
						</div>
						<div class="form-group assign_from_to d-none">
							<label>From Date</label>
							<input type="text" class="form-control onlydatepicker" name="assign_from_date">
						</div>
						<div class="form-group assign_from_to d-none">
							<label>To Date</label>
							<input type="text" class="form-control onlydatepicker" name="assign_to_date">
						</div>
						<div class="form-group assign_one_date d-none">
							<label>Date</label>
							<input type="text" class="form-control onlydatepicker" name="assign_one_date">
						</div>
						<button class="btn btn-primary">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="add-communication" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Action taken / Communications</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.communication') }}">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<div class="form-group">
							<label>Date</label>
							<input type="text" class="form-control datepicker" name="date">
						</div>

						<div class="form-group">
							<label>Action taken / Communications</label>
							<input list="block1list" class="form-control" name="details" autocomplete="off">
							<datalist id="block1list">
								@foreach ($action as $a)
								<option value="{{$a->action_taken}}">
									@endforeach
							</datalist>
						</div>


						<input type="hidden" name="user_id" value="{{Auth::user()->id}}">
						<div class="form-group">
							<label>Communication Type</label>
							<select class="form-control" name="com_type">
								<option disabled>Select Communication Type</option>
								<option value="Text">Text</option>
								<option value="Office update">Office update</option>
								<option value="Office phone">Office phone</option>
								<option value="Email from outlook">Email from outlook</option>
								<option value="Whatapp">Whatapp</option>
								<option value="Mobile call">Mobile call</option>
							</select>
						</div>
						<button class="btn btn-primary">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade send_to_customer" id="send_to_customer" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Send Email to Customer</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.email') }}">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<input type="hidden" name="mail_type" value="customer">
						<input type="hidden" name="send_mail_type" class="send_mail_type">
						<div class="form-group">
							<label>To</label>
							<input type="text" class="form-control" value="{{$job->customer->email}}" name="receiver">
							<input type="hidden" name="receiver_name" value="{{$job->customer->name}}">
						</div>
						<div class="form-group">
							<label>CC <small>(seaparated by comma)</small></label>
							<select class="form-control" name="cc[]" id="ex-multiselect" multiple>
								@foreach($contact_forename as $cont)
									@if(empty($cont->email))
										@continue
									@endif
									@if(strpos(ucfirst($cont->forename), "Z ") !== false)
										@continue
									@endif
									<option value="{{$cont->email}}">{{ucfirst($cont->forename)}} - {{$cont->email}}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label>Other Email Address(Receiever)</label>
							<input type="email" class="form-control" name="other_email_address">
						</div>
						<div class="form-group">
							<label>Subject</label>
							<input type="text" value="PetroSystems Engineer Dispatched" class="form-control" name="subject">
						</div>
						<div class="form-group">
							<label>Content</label>
							<textarea class="form-control" name="content" rows="5">
									Dear Customer,
									An Engineer has been dispatched and is on the way.
									Kind Regards,
									Petro Systems Management Ltd.
							</textarea>
						</div>
						<button class="btn btn-primary save-mail" type="button">Save</button>
						<button class="btn btn-info save-and-send-mail" type="button">Save and Send</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade send_to_customer" id="send_to_staff" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Send Email to staff</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.email') }}">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<input type="hidden" name="mail_type" value="staff">
						<input type="hidden" name="send_mail_type" class="send_mail_type">
						<input type="hidden" name="receiver_name" value="{{$job->customer->name}}">
						<div class="form-group">
							<label>Receiver</label>
							<select class="form-control" name="receiver" id="ex-multiselect">
								@foreach($contact_forename as $cont)
									@if(empty($cont->email))
										@continue
									@endif
									@if(strpos(ucfirst($cont->forename), "Z ") !== false)
										@continue
								@endif
									<option value="{{$cont->email}}">{{ucfirst($cont->forename)}} {{ucfirst($cont->surname)}} - {{$cont->email}}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label>CC <small>(seaparated by comma)</small></label>
							<select class="form-control" name="cc[]" id="ex-multiselect" multiple>
								@foreach($contact_forename as $cont)
								@if(empty($cont->email))
									@continue
								@endif
								@if(strpos(ucfirst($cont->forename), "Z ") !== false)
										@continue
								@endif
								<option value="{{$cont->email}}">{{ucfirst($cont->forename)}} - {{$cont->email}}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label>Other Email Address(Receiver)</label>
							<input type="email" class="form-control" name="other_email_address">
						</div>
						<div class="form-group">
							<label>Subject</label>
							<input type="text" value="JOB: {{$job->id}}-{{$job->customer->name}}-{{$job->customer->eircode}}"
								class="form-control" name="subject">
						</div>
						<div class="form-group">
							<label>Content</label>
							<textarea class="form-control" name="content" rows="5">{{$job->detail}}</textarea>
						</div>
						<button class="btn btn-primary save-mail" type="button">Save</button>
						<button class="btn btn-info save-and-send-mail" type="button">Save and Send</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="add-jobdocument" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Job Document</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.document') }}" enctype="multipart/form-data">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<div class="form-group">
							<label>Add Document</label>
							<input type="file" class="form-control" name="file">
						</div>
						<button class="btn btn-primary">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="add-labour" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Add Labour</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.labour') }}">
					 <input type="hidden" name="_token" value="{{csrf_token()}}">
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<div class="form-group">
							<label>Date</label>
							<input type="text" class="form-control datepicker" name="date">
						</div>
						<div class="form-group">
							<label>Engineer</label>
							<select class="form-control staff" name="contact_id" id="hourly_rate">
								<option value="" selected="" disabled="">Select Engineer</option>
								@foreach($contact_surname as $s)
									@if(strpos(ucfirst($s->surname), "Z ") !== false)
										@continue
									@endif
									<option data-hourly_rate='{{ $s->charge ?? "0" }}' value="{{ $s->id }}">{{ ucfirst($s->surname) }} {{ ucfirst($s->forename) }}
									</option>
								@endforeach
							</select>
						</div>
						 <div class="form-group">
							<label>Job Sheet</label>
							<input type="text" class="form-control" name="job_sheet" value="">
						</div>

						<div class="form-group">
							<label>Site arrival time</label>
							<input type="text" autocomplete="off" class="form-control time time1" name="start">
						</div>
						<div class="form-group">
							<label>Site finish time</label>
							<input type="text" autocomplete="off" class="form-control time time2" name="end">
						</div>
						<div class="form-group">
							<label>Hours on site</label>
							<input type="text" class="form-control hrs hours" name="hours" readonly="">
						</div>
						<div class="form-group">
							<label>Cost per hour site</label>
							<input type="text" class="form-control cost_per_hour_site" name="cost_per_hour_site">
						</div>
						<div class="form-group">
							<label>Travel Time</label>
							<input type="text" autocomplete="off" class="form-control time time3 travel_time" name="travel_time">
						</div>
						<div class="form-group">
							<label>Cost per hour travel</label>
							<input type="text" class="form-control cost_per_hour_travel" name="cost_per_hour_travel">
						</div>
						<div class="form-group">
							<label>Total cost site</label>
							<input type="text" class="form-control total_site_cost" name="total_cost_site" readonly>
						</div>
						<div class="form-group">
							<label>Total Cost Travel </label>
							<input type="text" class="form-control total_travel_cost" name="total_cost_travel" readonly>
						</div>
						<div class="form-group">
							<label>Works Completed</label>
							<textarea rows="3" class="form-control" name="completed_detail"></textarea>
						</div>
						<div class="form-group">
							<label>Amount</label>
							<input type="text" class="form-control total_cost_amount" name="amount" id="" readonly>
						</div>
						<button class="btn btn-primary">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="add-purchase" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Add Purchase</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.purchase') }}" id="add_store_po_form">
						@csrf
						<div class="form-group">
							<label>Job ID</label>
						<input type="text" name="job_id" class="form-control" value="{{ $job->id }}" readonly>
						</div>
						<div class="form-group">
							<label>PO Number</label>
						<input type="text" name="po_number" class="form-control" value="{{$po_number}}" readonly>
						</div>
						<div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" id="customer_name" value="{{$job->customer->name}}" readonly>
						</div>
						<div class="form-group">
							<label>Address</label>
							<input type="text" class="form-control"
								value="{{$job->customer->address1}} {{$job->customer->address2}} {{$job->customer->address3}} {{$job->customer->address4}}"
								readonly>
						</div>
						<div class="form-group">
							<label>Date</label>
							<input type="text" class="form-control datepicker" name="date">
						</div>
						<div class="form-group">
							<label>Supplier</label>
							<select class="form-control" name="supplier_id" id="supplier_id">
								<option value="" selected="" disabled="">Select Supplier</option>
								@foreach($supplier as $s)
								<option data-email="{{$s->email}}" value="{{ $s->id }}" class="supplier_email_option">{{ $s->name }}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label>Email</label>
							<input type="text" name="supplier_email" class="form-control supplier_email" value="" max-length="190" readonly>
						</div>
						<div class="form-group">
							<label>Items Req</label>
							<textarea rows="3" class="form-control" name="items_required"></textarea>
						</div>
						<div class="form-group">
							<label>Specs</label>
							<textarea rows="3" class="form-control" name="specification"></textarea>
						</div>
						<div class="form-group">
							<label>Purchased By</label>
							<input type="text" class="form-control" name="purchased_by">
						</div>
						<div class="form-group">
							<label>Value</label>
							<input type="text" class="form-control" name="value">
						</div>
						<div class="form-group form-check mb-2 pl-1">
							<label class="form-check-label">
								<input class="form-check-input" type="checkbox" value="1" name="extra_to_job">
								Extra To Job
								<span class="form-check-sign">
									<span class="check"></span>
								</span>
							</label>
						</div>
						<button class="btn btn-primary">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="add-stock" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header card-header-primary">
					<h5 class="modal-title text-white bold">Add Stock Item</h5>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="{{ route('job.save.stock') }}">
						@csrf
						<input type="hidden" name="job_id" value="{{ $job->id }}">
						<div class="form-group">
							<label>Date</label>
							<input type="text" class="form-control datepicker" name="date">
						</div>
						<div class="form-group">
							<label>Stock Item</label>
							<select class="form-control" name="stock_item_id" class="select_stock_item">
								<option value="" selected="" disabled="">Select Stock Item</option>
								@foreach($stock_item as $s)
									@if(isset($s->name) && !empty($s->name))
										<option value="{{ $s->id }}">{{ ucfirst($s->name) }}</option>
									@endif 
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label>Serial #</label>
							<input type="text" class="form-control" name="serial_no">
						</div>
						<div class="form-group">
							<label>Qty</label>
							<input type="text" class="form-control qty_stock_box" name="qty">
						</div>
						<div class="form-group">
							<label>Price</label>
							<input type="text" class="form-control price_stock_box" name="price">
						</div>
						<div class="form-group">
							<label>Amount</label>
							<input type="text" readonly class="form-control total_stock_box" name="total">
						</div>
						<button class="btn btn-primary">Save</button>
						<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="update-form-modal-wrapper"></div>

@endsection

@section('js')
	<script src="https://weareoutman.github.io/clockpicker/dist/jquery-clockpicker.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
	<script>
		var $edit_job_card_internal_url = "";
		$('.modal').on('hidden.bs.modal', function () {
			$(this)
				.find("input:not([type=hidden], [name=date], [name=job_id], [readonly]), textarea, select")
				.val('')
				.end()
				.find("input[type=checkbox], input[type=radio]")
				.prop("checked", "")
				.end();
		});
		
		$(document).ready(function() {
			$('.select_stock_item').select2();
		});

		$('.select_option').on('change', function (e) {
			if($(this).val()=='completed'){
				$(".completed_date").show();
				$(".completed_date_element").attr('required', true);
				$(".select_filled").show();
				$(".close-job").removeClass('d-none');
			}
			if($(this).val()=='open'){
				$(".completed_date").hide();
				$(".completed_date_element").attr('required', false);
				$(".select_filled").hide();
				$(".invoiced_number").hide();
				$(".invoiced_number_element").attr('required', false);
				$(".invoice_or_pending").hide();
				$(".close-job").addClass('d-none');
			}
			changeCloseButtonProp(close_flag = false);
		});

		$(document).on("keyup", ".price_stock_box, .qty_stock_box", function (e) {
			e.preventDefault();
			price = $(".price_stock_box").val();
			qty = $(".qty_stock_box").val();
			if(price == '')
			{
				price = 0; 
			}
			if(qty == '')
			{
				qty = 0; 
			}
			$(".total_stock_box").val(calculateTotalAmountStock(price, qty));
		});

		$(document).on("keyup", ".edit_price_stock_box, .edit_qty_stock_box", function (e) {
			e.preventDefault();
			price = $(".edit_price_stock_box").val();
			qty = $(".edit_qty_stock_box").val();
			if(price == '')
			{
				price = 0; 
			}
			if(qty == '')
			{
				qty = 0; 
			}
			$(".edit_total_stock_box").val(calculateTotalAmountStock(price, qty));
		});

		$(".invoiced_number_element").keyup(function (e) {
			if (this.value.length > 0) {
					$(".close-job").prop("disabled", false);
			} else {
					$(".close-job").prop("disabled", true);
			}
		});

		function calculateTotalAmountStock(price,qty)
		{
			var total = qty * price;
			if(isNaN(parseFloat(total)) || total == 0)
			{
				return 0;  
			}else
			{
				return total;
			}          
		}

		function changeCloseButtonProp(close_flag)
		{
			if (close_flag) {
				$(".close-job").prop("disabled", false);
			} else{
				$(".close-job").prop("disabled", true);
			}
		}

		$('.select_filled_element').on('change', function (e) {
			if($(this).val() == 'filing'){
				$(".invoice_or_pending").hide();
			}
			if($(this).val() == 'invoice'){
					$(".invoice_or_pending").show();
			}
		});
		$('.invoice_or_pending_element').on('change', function (e) {
			if($(this).val() == 'invoiced'){
				$(".invoiced_number").show();
				$(".invoiced_number_element").attr('required', true);
			}
			if($(this).val() == 'pending_invoice'){
					$(".invoiced_number").hide();
					$(".invoiced_number_element").attr('required', false);
			}
		});
		function HoursOnSite(){
			var T = ["0.00", "0.02", "0.03", "0.05", "0.07", "0.08", "0.1", "0.12", "0.13", "0.15", "0.17", "0.18", "0.2", "0.22", "0.23", "0.25", "0.27", "0.28", "0.3", "0.32", "0.33", "0.35", "0.37", "0.38", "0.4", "0.42", "0.43", "0.45", "0.47", "0.48", "0.5", "0.52", "0.53", "0.55", "0.57", "0.58", "0.6", "0.62", "0.63", "0.65", "0.67", "0.68", "0.7", "0.72", "0.73", "0.75", "0.77", "0.78", "0.8", "0.82", "0.83", "0.85", "0.87", "0.88", "0.9", "0.92", "0.93", "0.95", "0.97", "0.98"];
			var  charges = $('#hourly_rate').find(":selected").data('hourly_rate');
			var t1 = $(".time1").val();
			var t2 = $(".time2").val();
			var time,h,m;
			if(t1 !== "" && t2 !== "" && charges !== ""){
				var time1,time2;
				time1 = t1.split(':');
				time2 = t2.split(':');
				if ((parseInt(time2[0]) - parseInt(time1[0])) < 0) {
					h = parseInt(time2[0]) - parseInt(time1[0]) + 24;
				}else{
					h = parseInt(time2[0]) - parseInt(time1[0]);
				}
				if ((parseInt(time2[1]) - parseInt(time1[1])) < 0) {
					m = parseInt(time2[1]) - parseInt(time1[1]) + 60;
					h = h - 1;
				}else{
					m = parseInt(time2[1]) - parseInt(time1[1]);
				}
				time = h + parseFloat(T[m]);
				$(".hrs").val(time);

				var total = time * charges;
				total = parseFloat(total);
				if(isNaN(total))
				{
					total = "";
				}
				$("#total_amnt").val(total);

			}else{
				$(".hrs").val("");
			}
		}

		function EditHoursOnSite(){
			var T = ["0.00", "0.02", "0.03", "0.05", "0.07", "0.08", "0.1", "0.12", "0.13", "0.15", "0.17", "0.18", "0.2", "0.22", "0.23", "0.25", "0.27", "0.28", "0.3", "0.32", "0.33", "0.35", "0.37", "0.38", "0.4", "0.42", "0.43", "0.45", "0.47", "0.48", "0.5", "0.52", "0.53", "0.55", "0.57", "0.58", "0.6", "0.62", "0.63", "0.65", "0.67", "0.68", "0.7", "0.72", "0.73", "0.75", "0.77", "0.78", "0.8", "0.82", "0.83", "0.85", "0.87", "0.88", "0.9", "0.92", "0.93", "0.95", "0.97", "0.98"];
			var  charges = $('.editstaff').find(":selected").data('hourly_rate');
			var t1 = $(".edittime1").val();
			var t2 = $(".edittime2").val();
			var time,h,m;
			if(t1 !== "" && t2 !== "" && charges !== ""){
				var time1,time2;
				time1 = t1.split(':');
				time2 = t2.split(':');
				if ((parseInt(time2[0]) - parseInt(time1[0])) < 0) {
					h = parseInt(time2[0]) - parseInt(time1[0]) + 24;
				}else{
					h = parseInt(time2[0]) - parseInt(time1[0]);
				}
				if ((parseInt(time2[1]) - parseInt(time1[1])) < 0) {
					m = parseInt(time2[1]) - parseInt(time1[1]) + 60;
					h = h - 1;
				}else{
						m = parseInt(time2[1]) - parseInt(time1[1]);
				}
				time = h + parseFloat(T[m]);
				$(".edithrs").val(time);
				var total = time * charges;
				total=parseFloat(total);
				if(isNaN(total))
				{
					total = "";
				}
				$("#editamount").val(total);

			}else{
				$(".edithrs").val("");
			}
		}
		$(document).ready(function() {
			$('.customer_id').on('change', function(e) {
				var val = $(this).val();
				populateNameAddress(val);
			});

			$('.time1, .time2, .time3, .staff').on('change', function(){
				HoursOnSite();
			});
		});


		$(document).ready(function() {

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
		});

		var update_url, target_table;

		function updateTable(url, table) {
			$(document).ready(function(){
				$.ajax({
					url: url,
					type: 'GET',
					success: function(rows) {
						$(table).html(rows);
						$(table).DataTable().destroy();
						$(table).DataTable({
						ordering: false
						});
						if(url=="{{ route('job.get.communications', $job->id) }}")
						{
							var comm_length = $(table).find('tr').length - 1;
							@if($action_count != 0)
								$(".comm_length").text(comm_length);
							@endif
						}
						if(url == "{{ route('job.get.pump_certifieds', $job->id) }}")
						{
							var pump_length = $(table).find('tbody').find('tr').length;
							var col_length = $(table).find('tbody').find('.dataTables_empty').length;
							pump_length = Number(pump_length);
							if(col_length == 1)
							{
								$("#jobcertificates").find(".save_certficate_btn").prop("disabled",true);
							}else
							{
								$("#jobcertificates").find(".save_certficate_btn").prop("disabled",false);
							}
						}	
					}
				});
			});	
		}

		function checkCertificateSaveButton(update_url)
		{	
			if(update_url == "{{ route('job.get.pump_certifieds', $job->id) }}")
			{
				@if($job->pump_certifieds->count() > 0)
					$(".save_certficate_btn").removeAttr("disabled");
				@else
					$(".save_certficate_btn").prop("disabled", true);
				@endif
			}
		}

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
					} else {
						toastr.error('Unknown Error!');
						$(form).find('button:not([type="button"])').prop('disabled', false);
					}
				}
			});
		});

		$(document).on('click', '.edit-btn', function(e) {
			var choices = ["00","15","30","45"];
			e.preventDefault();
			var btn = $(this);
			var url = $(btn).attr('data-href');
			var url1 = $(btn).attr('data-href-customer');
			var url2 = $(btn).attr('data-href-staff');
			var mail_type = $(btn).attr('data-type');
			$(btn).prop('disabled', true);
			if(mail_type == "customer")
			{
				$.ajax({
					url: url1,
					type: 'GET',
					success: function(response) {
						$('#update-form-modal-wrapper').html(response).find(".my_time").addClass("time1");
						$('#update-form-modal').modal('show');
						$(btn).prop('disabled', false);
						$('.form-group select').selectpicker({
							liveSearch: true
						});
						$('.form-group .datepicker').datetimepicker({});
					},
					error: function() {
						toastr.error('Unknown error!');
						$(btn).prop('disabled', false);
					}
				});
			}
			else if(mail_type == "staff")
			{
				$.ajax({
					url: url2,
					type: 'GET',
					success: function(response) {
						$('#update-form-modal-wrapper').html(response);
						$('#update-form-modal').modal('show');    
						$('.form-group .datepicker').datetimepicker({
							format: 'DD/MM/YYYY H:m a',
							defaultDate: "{{ now() }}",
						});            
						$(btn).prop('disabled', false);
						$('.form-group select').selectpicker({
									liveSearch: true
							});
						$('.form-group .datepicker').datetimepicker({});
					},
					error: function() {
						toastr.error('Unknown error!');
						$(btn).prop('disabled', false);
					}
				});
			}else
			{
				$.ajax({
					url: url,
					type: 'GET',
					success: function(response) {
						$('#update-form-modal-wrapper').html(response);
						$('.form-group .datepicker').datetimepicker({
							format: 'DD/MM/YYYY H:m a',
							defaultDate: "{{ now() }}",
					 	});
						$('#update-form-modal').modal('show');                
						$(btn).prop('disabled', false);
						$('.form-group select').selectpicker({
							liveSearch: true
						});
						$('.form-group .datepicker').datetimepicker({});
						$('#update-form-modal-wrapper').find(".my_time").clockpicker({
							placement: 'bottom',
							align: 'left',
							autoclose: true,
							default: 'now',
							donetext: "Select",
							afterShow: function() {
								$(".clockpicker-minutes").find(".clockpicker-tick").filter(function(index, element){
									return !($.inArray($(element).text(), choices) != -1)
								}).remove();
							}
						});
						$('#update-form-modal-wrapper').find(".my_time, .editstaff").on('change',function(){
							EditHoursOnSite();
						});
					},
					error: function() {
						toastr.error('Unknown error!');
						$(btn).prop('disabled', false);
					}
				});
			}
		});

		$(document).on('click', '#del-final-ajax', function(e) {
			e.preventDefault();
			var btn = $(this);
			$(btn).prop('disabled', true);
			url = $(this).attr('data');
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

		$(document).on('click', '[data-toggle="modal"],.edit-btn,.del-btn', function() {
			update_url = $(this).closest('.tab-pane')
				.find('[data-toggle="modal"]')
				.data('update_url');
			target_table = $(this).closest('.tab-pane')
				.find('table');
		});

		$('.save-and-send-mail').click(function(){
			$('.send_mail_type').val("2");
			$(this).closest('form').submit();
		});

		$('.save-mail').click(function(){
			$('.send_mail_type').val("1");
			$(this).closest('form').submit();
		});

		$('#update-form-modal-wrapper').on('click','.update_mail', function() {
			$(this).closest('form').submit();
		});

		$('[data-update_url]').each(function() {
			if(!$(this).hasClass('ignore'))
				updateTable($(this).data('update_url'), $(this).closest('.tab-pane').find('table'));
		});

		function addCertificateForm(url,certificate_class)
		{
			$.ajax({
				url: url,
				type: 'GET',
				success: function(response) {
					$(certificate_class).html(response);
				}
			});
		}

		$(document).on("click", '.save_certficate_btn', function(){
			var form = $('.save_certficate_form').serialize();
			$.ajax({
				type: "POST",
				url: "{{ route('job.save.certificate') }}",
				data: form,
				success: function (response) {
		 			$('.cverification_date').val(response.verification_date)
				 	$('.cname').val(response.name)
				 	$('.caddress').val(response.address)
				 	$('.centeredBy').val(response.enteredBy)
				 	$( ".print-certificate-btn" ).prop( "disabled", false );
					toastr.success(response.success);
				}
			});
		});

		$('.form-group select').selectpicker({
			liveSearch: true
		});

		var val = "{{ $job->customer_id }}";
		populateNameAddress(val);

		var choices = ["00","15","30","45"];
		$(".time").clockpicker({
			placement: 'bottom',
			align: 'left',
			autoclose: true,
			default: 'now',
			donetext: "Select",
				afterShow: function() {
					$(".clockpicker-minutes").find(".clockpicker-tick").filter(function(index,element){
					return !($.inArray($(element).text(), choices) != -1)
				}).remove();
			}
		});

		$(document).ready(function(){
			activaTab('{{ $tab }}');
		});

		function activaTab(tab){
			$('.nav-tabs a[href="#' + tab + '"]').tab('show');
		};

		$(document).on("click", ".purchase-email", function (e) {
			e.preventDefault();
			$.ajax({
				method: "GET",
				url: $(this).attr('data-href'),
				success: function (response) {
					if (response.error) {
						toastr.error(response.error.msg);
					} else{
						toastr.success(response.success);
					}
				}
			});
		});

		$(document).on('change','#supplier_id',function(e)
		{
			var email=$(this.options[e.target.selectedIndex]).attr("data-email");
			$("#add_store_po_form .supplier_email").val(email);
		});

		$(document).on("change","#work_completed",function(){
			if($(this).val()==1)
			{
				$(".job_status_col").removeClass("d-none");
				$(".completed_date").removeClass("d-none");
			}else
			{
				$(".completed_date").addClass("d-none");
				$(".job_status_col").addClass("d-none");
			}
		});
				
		$(document).on("change",".w_m_seals_select",function(){
			var w_m=$(this).val();
			var job_stock_id=$(this).attr('data-id');
			w_m_seals_status(w_m,job_stock_id);
		});
				
		$(document).on("keyup", ".hours,.cost_per_hour_site", function(e){
			e.preventDefault();
			var event = $(this)
			calculate_site_cost(event);
		});

		$(document).on("keyup", ".travel_time,.cost_per_hour_travel", function(e){
			e.preventDefault();
			var event = $(this)
			calculate_travel_cost(event);
		});

		function calculate_site_cost(event)
		{
			var cost_per_hour_site = parseFloat(event.closest('.modal').find(".cost_per_hour_site").val());
			var hours = parseFloat(event.closest('.modal').find(".hours").val());

			if(isNaN(hours))
			{
				hours = 0;
			}
			if(isNaN(cost_per_hour_site))
			{
				cost_per_hour_site = 0;
			}
			var total_site_cost = hours * cost_per_hour_site;
			var total_site_cost = Number(total_site_cost);
			if(total_site_cost == "Infinity")
			{
					total_site_cost = 0;
			}else
			if(isNaN(total_site_cost))
			{
					total_site_cost = 0;
			}
			event.closest('.modal').find(".total_site_cost").val(total_site_cost);
			update_total_amount(event);
		}

		function calculate_travel_cost(event)
		{
			var hours = event.closest('.modal').find(".travel_time").val();
			if(hours != '')
			{
				time = hours.split(":");
				min = time[1]/60;
				min = min.toFixed(2);
				hours = parseFloat(time[0]);
				min = parseFloat(min);
				time = hours + min;
				hours = time;
			}
			var cost_per_hour_site = parseFloat(event.closest('.modal').find(".cost_per_hour_travel").val());
			if(isNaN(hours))
			{
				hours = 0;
			}
			if(isNaN(cost_per_hour_site))
			{
				cost_per_hour_site = 0;
			}
			var total_site_cost = hours * cost_per_hour_site;
			var total_site_cost = Number(total_site_cost);
			if(total_site_cost == "Infinity")
			{
				total_site_cost = 0;
			}else
			if(isNaN(total_site_cost))
			{
				total_site_cost = 0;
			}
			$(".total_travel_cost").val(total_site_cost);
			update_total_amount(event);
		}

		function update_total_amount(event)
		{
			var total_travel_cost = event.closest('.modal').find(".total_travel_cost").val();
			var total_site_cost = event.closest('.modal').find(".total_site_cost").val();
			if(total_travel_cost !== '' && total_site_cost !== '')
			{
				console.log("Updating amount");
				if(isNaN(total_travel_cost))
				{
					total_travel_cost=0;
				}
				if(isNaN(total_site_cost))
				{
					total_site_cost=0;
				}
				var total_amount = parseFloat(total_travel_cost)+parseFloat(total_site_cost);
				var total_amount = Number(total_amount);

				if(total_amount=="Infinity")
				{
					total_amount=0;
				}else
				if(isNaN(total_amount))
				{
					total_amount=0;
				}
				event.closest('.modal').find(".total_cost_amount").val(total_amount);
			}
		}
		
		$(document).on("click", ".edit_job_card_internal_btn", function(){
			$edit_job_card_internal_url = $(this).attr("data-href");
			$("#edit_job_card_password_modal").modal("show");
		});

		$(document).on("click", ".submit_edit_job_card", function(){

			$input_password = $("#edit_job_card_password").val();
			  var form = $('#edit_job_card_password_form').serialize();
		      $.ajax({
		          type: "POST",
		          url: "{{ route('job.job_card_internal.check.password') }}",
		          data: form,
		          success: function (response) {
	          			if(response.result)
	          			{
	          				toastr.success(response.message);
	          				setTimeout(function() {
					            window.location.href = $edit_job_card_internal_url;
					        }, 2000);
	          				
	          			}else
	          			{
	          				toastr.error(response.message);
	          			}
		               
		               
		          },
		      });
		});
        $(window).keydown(function(event){
        	if(event.keyCode == 13) {
              	event.preventDefault();
              	return false;
            }
      	});
		@if(request()->form)
			$(function()
			{
				$("#job-details").removeClass('active');
				$(".job_details_tab").removeClass('active');
				$("#job_card_internal").addClass('active');
				$(".job_card_internal_tab").addClass('active');
			});
			// ENGINEER FORM JQUERY CODE
			var make_and_serial = 1;
			$(document).on("click",".equipment_make_and_serial",function (e) 
			{
				e.preventDefault();
				equipmentsAddMore();
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
					$('.equipment_plus_btn').fadeIn();
					make_and_serial--;
			}

			// START Material Add More
			var limit = 1;
			$(document).on("click",".btn-add",function (e) 
			{
				e.preventDefault();
				materialsAddMore();
			});

			$(document).on('click', '.btn-del', function(){
				$(this).closest('.row').remove();
				refreshCounter();
			});

			function refreshCounter()
			{
				var count = 1;
				$('.material_block .row').each(function()
				{
					$(this).find('.item-count').text(count);
					count++;
				});
				if(limit == 10)
					$('.material_plus_btn').fadeIn();
				limit--;
			}

			function getLineItemsBlockLength()
			{
				return $(".material_block .row").length;
			}

			$(document).on("change",".completed_result",function()
			{
				var value=$(this).val();
				if(value==1)
				{
					$(".completed_comment").removeClass("d-none");
					$(".completed_comment").addClass("d-block"); 
					$(".why_comment").removeClass("d-block");
					$(".why_comment").addClass("d-none");
				}else
				{
					$(".completed_comment").removeClass("d-block");
					$(".completed_comment").addClass("d-none");
					$(".why_comment").removeClass("d-none");
					$(".why_comment").addClass("d-block"); 
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
				$(this).val($(this).val() + ":00");
				if ($("#TmOnSite").val() != '' && $("#TmOffSite").val() != '') 
				{
					var startTime = moment($("#TmOnSite").val(), "HH:mm");
					var endTime = moment($("#TmOffSite").val(), "HH:mm");
					var duration = moment.duration(endTime.diff(startTime));
					var diff = duration.asHours().toFixed(2).split(".");
					var diff_hour = diff[0];
					var diff_min = "0." + diff[1];
					diff_min = diff_min * 60; 
					if(diff_min.toString().length == 1)
					{
							diff_min = "0" + diff_min;
					}        
					$("#TmTotalHrsOnSite").val(diff_hour + ":" + diff_min + ":00");
				}
				if ($("#travel_from").val() != '' && $("#travel_to").val() != '') 
				{
					var startTime = moment($("#travel_from").val(), "HH:mm");
					var endTime = moment($("#travel_to").val(), "HH:mm");
					var duration = moment.duration(endTime.diff(startTime));
					var diff = duration.asHours().toFixed(2).split(".");
					var diff_hour = diff[0];
					var diff_min = "0."+diff[1];
					diff_min = diff_min*60; 
					if(diff_min.toString().length == 1)
					{
						diff_min = "0" + diff_min;
					}
					$("#travel_time_calc").val(diff_hour + ":" + diff_min + ":00");
					$("#TmOnSite").val($("#travel_to").val());
				}
			};

			

			function map_materials_data(blind)
			{
				if(blind.length > 0)
				{
					for(var i = 0; i < blind.length; i++)
					{
						$('#material_row-' + (i + 1)).find('[name="quantity_used[]"]').val(blind[i]['qty']);
						$('#material_row-' + (i + 1)).find('[name="material_used[]"]').val(blind[i]['material_used']);
						if(i !== blind.length-1)
							materialsAddMore();
					}
				}
			}

			function materialsAddMore()
			{
				var pointer = getLineItemsBlockLength();
				var content = $('#material_row-1').html();
				$(".material_block").append('<div class="row" id="material_row-' + (pointer + 1) + '">' + content + '</div>');
				$('#material_row-' + (pointer + 1)).find('.item-count').text(pointer + 1);
				$('#material_row-' + (pointer + 1)).find('.btn-del').removeClass('d-none');
			}
			var materials_data = <?php echo json_encode($eng_form->materials->toArray()) ?>;
			map_materials_data(materials_data);
			
			function map_equipments_data(blind)
			{
				if(blind.length > 0)
				{
					for(var i = 0; i < blind.length; i++)
					{
						// console.log(i);
						$('#make_and_serial-'+(i + 1)).find('[name="equipment[]"]').val(blind[i]['equipment']);
						$('#make_and_serial-'+(i + 1)).find('[name="make[]"]').val(blind[i]['make']);
						$('#make_and_serial-'+(i + 1)).find('[name="serial_no_2[]"]').val(blind[i]['serial_no']);
						console.log(blind[i]['w_m_seals']);
						if(blind[i]['w_m_seals'] == '1')
						{
							$('#make_and_serial-' + (i + 1)).find('#yes-' + i).prop("checked", true);	
						}else if(blind[i]['w_m_seals'] == '0'){
							$('#make_and_serial-' + (i + 1)).find('#no-' + i).prop("checked", true);	
						}else{
							$('#make_and_serial-' + (i + 1)).find('#na-' + i).prop("checked", true);
						}
						if(i !== blind.length - 1)
							equipmentsAddMore();
					}
				}
			}

			function equipmentsAddMore()
			{
                var pointer = getMakeAndSerialLength();
                var content = $('#make_and_serial-1').html();
                $(".make_and_serial").append('<div class="row" id="make_and_serial-'+(pointer+1)+'">'+content+'</div>');
                $('#make_and_serial-'+(pointer+1)).find('.item-make-serial-count').text(pointer+1);
                $('#make_and_serial-'+(pointer+1)).find('.btn-make-serial-del').removeClass('d-none');
                $('#make_and_serial-'+(pointer+1)).find('.broken_result').attr('name','w_m_seals['+pointer+']');
                $('#make_and_serial-'+(pointer+1)).find('.yes_w_m_seals').attr('id','yes-' + pointer);
                $('#make_and_serial-'+(pointer+1)).find('.no_w_m_seals').attr('id','no-' + pointer);
                $('#make_and_serial-'+(pointer+1)).find('.yes_label').attr('for','yes-' + pointer);
                $('#make_and_serial-'+(pointer+1)).find('.no_label').attr('for','no-' + pointer);
			}
			var equipment_data = <?php echo json_encode($eng_form->engineer_equipments->toArray()); ?>;
			map_equipments_data(equipment_data);
	
		@endif

		$(".checkbox_extra_to_job").change(function() {
		    if(this.checked) {
		        
		    }
		});

        function validate() {
			var valid = true;
			$("form").find('.alert-warning').remove();
			$(".valid-control:visible").each(function () {
				if ($(this).val() == "") {
					$(this).closest("div").find(".alert-danger").remove();
					$(this)
					.closest("div")
					.append('<div class="alert-danger mb-2" style="background:#ff5757;border-radius:2px;">This filed is required</div>');
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


		function validate_assign_add_more() {
			var valid = true;
			$("form").find('.alert-warning').remove();
			$(".valid-control-assign:visible").each(function () {
				if ($(this).val() == "") {
					$(this).closest("div").find(".alert-danger").remove();
					$(this)
					.closest("div")
					.append('<div class="alert-danger mb-2" style="background:#ff5757;border-radius:2px;">This filed is required</div>');
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

		$('.form-group .onlydatepicker').datetimepicker({
			format: 'DD/MM/YYYY',
			defaultDate: "{{ now() }}",
		});

		$(document).on('change', 'body .assign_job_interval', function (e) {
			if($(this).val() == 1){
				$(".assign_from_to").addClass('d-none');
				$(".assign_one_date").removeClass('d-none');
			}else if($(this).val() == 2){
				$(".assign_from_to").removeClass('d-none');
				$(".assign_one_date").addClass('d-none');

			}
		});

	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
@endsection

