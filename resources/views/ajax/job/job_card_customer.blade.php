<thead>
  <tr>
  	<th>#</th>
    <th>Date Scheduled</th>
    <th>Date Done</th>
    <th>Engineer</th>
    <th>Job Card Number</th>
    <th>Emailed Date</th>
    <th>Action Taken</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@if(!is_null($form))
		@foreach($form_list as $form)
			<tr>
				<td>{{ $loop->iteration }}</td>
				<td>
					{{ $job->created_at->format('d-m-Y') }}
				</td>
				<td>{{ $form->created_at->format('d-m-Y') }}</td>
				<td>{{ getContactName($form->engineer->contact_id) }}</td>
				<td>{{ $form->id }}</td>
				<td>@if(!is_null($form->email_date))
						{{ \Carbon\Carbon::parse($form->email_date)->format("d-m-Y") }}
					@else
						
					@endif
				</td>
				<td>{{ $form->work_carried_out ?? '' }}</td>
				<td>
					<a href="{{ route('reports.job_card_customer',$form->id) }}" target="_blank"><button class="btn btn-primary btn-sm bold print-certificate-btn">
			            <i class="fa fa-print"></i> PDF
			        </button></a>
			        <a href="{{ route('reports.job_card_customer',$form->id) }}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
			            <i class="fa fa-download"></i> PDF Download
			        </button></a>
			        <a href="{{ route('reports.job_card_customer',$form->id) }}?email=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
			            <i class="fa fa-envelope"></i> Email PDF
			        </button></a>
				</td>
			</tr>
		@endforeach
	@endif
</tbody>