<thead>
  <tr>
  	<th>#</th>
	<th>Date</th>
	<th>Petro Name</th>
    <th>Action / Communication</th>
    <th>Type of comms</th>
    
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		<td>{{ $item->date }}</td>
		<td>{{ $item->user->name }}</td>
		<td>{{ $item->details }}</td>
		<td>{{ $item->com_type }}</td>
		<td>
			<button data-href="{{ route('job.delete.communication', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button>
			<button data-href="{{ route('job.edit.communication', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
		</td>
	</tr>
	@endforeach
</tbody>