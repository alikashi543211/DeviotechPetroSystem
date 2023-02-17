<thead>
  <tr>
  	<th>#</th>
    <th>Date</th>
    <th>Invoice Np</th>
    <th>Details</th>
    <th>Amount Received</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		<td>{{ $item->date }}</td>
		<td>{{ $item->invoice_no }}</td>
		<td>{{ $item->details }}</td>
		<td>€ {{ $item->amount_received }}</td>
		<td>
			<button data-href="{{ route('quotation.delete.payment', $item->id) }}" class="btn btn-danger btn-sm del-btn"><i class="material-icons">delete</i></button>
			<button data-href="{{ route('quotation.edit.payment', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
		</td>
	</tr>
	@endforeach
</tbody>
