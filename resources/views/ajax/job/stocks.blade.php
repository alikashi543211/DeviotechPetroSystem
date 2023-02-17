<thead>
  <tr>
  	<th>#</th>
    <th>Date</th>
    <th>Item</th>
    <th>Serial #</th>
    <th>Qty</th>
    <th>Price</th>
    <th>Total</th>
    <th>Source</th>
    <th>Job Card No</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		@if(is_null($item->id))
			<td>{{ $item->date }}</td>
		@else
			<td>{{ $item->created_at->format('d-m-Y') }}</td>
		@endif
		<td>
			@if($item->form_id)
				{{ $item->material_used ?? '' }}
			@else
				{{ $item->stock->name }}
			@endif
		</td>
		<td>{{ $item->serial_no ?? 'N/A' }}</td>
		<td>{{ $item->qty }}</td>
		<td>{{ $item->price ?? 'N/A' }}</td>
		<td>{{ $item->total ?? 'N/A' }}</td>
		<td>{{ $item->form_id ? 'Engineer' : 'Office' }}</td>
		<td>
			@if($item->form_id)
				{{ $item->form_id }}
			@endif
		</td>
		<td>
			{{-- <button data-href="{{ route('job.delete.stock', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button> 
			<button data-href="{{ route('job.edit.stock', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button> --}}
			<button data-href="{{ route('job.edit.stock', $item->id) }}" class="btn btn-success btn-sm edit-btn">
				Edit
			</button>
		</td>
	</tr>
	@endforeach
</tbody>