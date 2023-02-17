<thead>
  <tr>
  	<th>#</th>
    <th>Date</th>
    <th>Receiver</th>
    <th>CC</th>
    <th>Subject</th>
	<th>Content</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		<td>{{ $item->created_at }}</td>
		<td>{{ $item->receiver }}</td>
		<td>{{ $item->cc ?? "" }}</td>
		<td>{{ $item->subject }}</td>
		<td>{{ $item->content ?? "" }}</td>
		<td>
			<button data-href="{{ route('job.delete.email', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button>
			<!-- <button  class="btn btn-info btn-sm del-btn">
				<i class="material-icons">email</i>
			</button> -->
			
			<button data-href-customer="{{ route('job.edit.email', $item->id) }}" data-href-staff="{{ route('job.edit.email_staff', $item->id) }}"  data-type="{{$item->mail_type}}" class="btn btn-info btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
		
		</td>
	</tr>
	@endforeach
</tbody>