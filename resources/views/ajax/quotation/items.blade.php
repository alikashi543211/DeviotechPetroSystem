<thead>
  <tr>
  	<th>#</th>
    <th>Item</th>
    <th>Qty</th>
    <th>Cost Price</th>
    <th>Sale Price</th>
    <th>Margin %</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		<td>{{ $item->item }}</td>
		<td>{{ $item->qty }}</td>
		<td>{{ $item->cost_price }}</td>
		<td>{{ $item->sale_price }}</td>
		<td>{{ $item->margin }}</td>
		<td>
			<button data-href="{{ route('quotation.delete.item', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button>
			<button data-href="{{ route('quotation.edit.item', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
		</td>
	</tr>
	@endforeach
</tbody>