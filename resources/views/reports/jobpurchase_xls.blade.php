<thead>
  <tr>
    <th>PurchaseDate</th>
    <th>Supplier</th>
    <th>Items</th>
    <th>PO Number</th>
    <th>Value</th>
    <th>Extra Items</th>
    <th>PurchasedBy</th>
  </tr>
</thead>
<tbody>
	@foreach($data as $item)
	<tr>
		<td>{{ dateFormat($item->date) }}</td>
		<td>{{ $item->supplier->name }}</td>
		<td>{{ $item->items_required }}</td>
		<td>{{ $item->specifications }}</td>
		<td>{{ $item->value }}</td>
		<td>
			{{ $item->extra_to_job ? 'Yes' : 'No' }}
		</td>
		<td>{{ $item->purchased_by }}</td>
	</tr>
	@endforeach
</tbody>