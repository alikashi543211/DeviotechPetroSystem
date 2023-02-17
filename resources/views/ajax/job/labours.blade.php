<thead>
  <tr>
  	<th>#</th>
    <th>Date</th>
    <th>Eng</th>
    <th>Job Sheet</th>
    <th>Travel Time</th>
    <th>Site Arrival</th>
    <th>Site Finish</th>
    <th>Site Hours</th>
    <th>Travel Cost</th>
    <th>Site Cost</th>
    <th>Detail</th>
    <th>Entered By</th>
    <th>Job Card No</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@if(count($list)>0)
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		<td>{{ $item->date }}</td>
		<td>
			@if(is_null($item->form_id))
				{{ ucfirst($item->contact->forename ?? '') }} {{ ucfirst($item->contact->surname ?? '')  }}
			@else
				{{ $item->user->name ?? '' }}
			@endif
		</td>
		<td>{{ $item->job_sheet }}</td>
		<td>{{ $item->travel_time ?? 'N/A' }}</td>
		<td>{{ $item->start }}</td>
		<td>{{ $item->end }}</td>
		<td>{{ $item->hours }}</td>
		<td>{{ $item->total_cost_travel }}</td>
		<td>{{ $item->total_cost_site }}</td>
		<td>{{ $item->completed_detail ?? "N/A" }}</td>
		<td>{{ ucfirst($item->user->role) ?? 'N/A' }}  </td>
		<td>
			@if(is_null($item->form_id))

			@else
				{{ $item->form_id }}
			@endif
		</td>
		<td>
			<button data-href="{{ route('job.delete.labour', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button>
			<button data-href="{{ route('job.edit.labour', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
		</td>
	</tr>
	@endforeach
	@endif
</tbody>