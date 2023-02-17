<thead>
  <tr>
	<th>#</th>
    <th>Date Scheduled</th>
    <th>Date Done</th>
    <th>Engineer</th>
    <th>Office Comment</th>
    <th>Job Card Number</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@if(!is_null($form))
		@foreach($form_list as $form)
			<tr>
				<td>{{ $form->id }}</td>
				<td>{{ $job->created_at->format('d-m-Y') }}</td>
				<td>{{ $form->date }}</td>
				<td>{{ getContactName($form->engineer->contact_id) }}</td>
				<td>{{ $form->comment ?? '' }}</td>
				<td>{{ $form->id }}</td>
				<td>
					@if(setting('is_job_card_password') == 'yes')
						<a href="javascript:void(0);"><button data-href="{{ route('job.edit',$job->id) }}?form={{ $form->id }}" class="btn btn-success btn-sm bold edit_job_card_internal_btn" >
			             	Edit
				        </button>
			    		</a>
	    		@else
		    		<a href="{{ route('job.edit',$job->id) }}?form={{ $form->id }}"><button class="btn btn-success btn-sm bold" >
			             	Edit
				        </button>
		    		</a>
	    		@endif
	    		<a href="{{ route('job.edit',$job->id) }}?form={{ $form->id }}&type=images"><button class="btn btn-info btn-sm bold" >
		             	Photos
			        </button>
	    		</a>
					<a href="{{ route('reports.job_card_internal',$form->job_id) }}" target="_blank"><button class="btn btn-primary btn-sm bold print-certificate-btn">
			            <i class="fa fa-print"></i> PDF
			        </button></a>
			        <a href="{{ route('reports.job_card_internal',$form->job_id) }}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
			            <i class="fa fa-download"></i> PDF Download
			        </button></a>
			        
				</td>
			</tr>
		@endforeach
	@endif
</tbody>
