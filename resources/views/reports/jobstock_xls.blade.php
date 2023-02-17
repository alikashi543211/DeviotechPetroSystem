<table>
<thead>
  <tr>
    <th>MovementDate</th>
    <th>StockCode</th>
    <th>StockDescription</th>
    <th>UnitCost</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Item Supplier</th>
  </tr>
</thead>
<tbody>
	@foreach($data as $item)
	<tr>
		<td>{{ $item->date }}</td>
		<td>{{ $item->stock->code }}</td>
		<td>{{ $item->stock->name }}</td>
        <td>{{ $item->stock->unit_cost }}</td>
        <td>{{ $item->qty }}</td>
        <td>{{ $item->price }}</td>
        <td></td>
	</tr>
	@endforeach
</tbody>
</table>