<thead>
  <tr>
  	<th>Pump No</th>
    <th>Nozzles</th>
    <th>Make</th>
    <th>Serial No</th>
    <th>Action</th>
    
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
	<td>{{$item->pump_no}}</td>
    <td>{{$item->nozzles}}</td>
    <td>{{$item->make}}</td>
    <td>{{$item->serial_no}}</td>
    <td><button data-href="{{ route('job.delete.pump_certified', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button>
			<button data-href="{{ route('job.edit.pump_certified', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
		</td>
	</tr>
	@endforeach
</tbody>