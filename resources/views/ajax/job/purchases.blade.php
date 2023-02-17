<thead>
  <tr>
  	<th>#</th>
    <th>Date</th>
    <th>Supplier</th>
    <th>Email</th>
    <th>PO</th>
    <th>Items Req</th>
    <th>Specs</th>
    <th>Value</th>
    <th>Extra To Job</th>
    <th>Purchased By</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
	@foreach($list as $item)
	<tr>
		<td>{{ $loop->iteration }}</td>
		<td>{{ $item->date }}</td>
		<td>{{ $item->supplier->name }}</td>
		<td>{{ $item->supplier->email ?? '' }}</td>
		<td>{{ $item->id }}</td>
		<td>{{ $item->items_required }}</td>
		<td>{{ $item->specification }}</td>
		<td>{{ $item->value }}</td>
		<td>
			<span class="badge badge-info">{{ $item->extra_to_job ? 'Yes' : 'No' }}</span>
		</td>
		<td>{{ $item->purchased_by }}</td>
		<td>
			<button data-href="{{ route('job.delete.purchase', $item->id) }}" class="btn btn-danger btn-sm del-btn">
				<i class="material-icons">delete</i>
			</button>
			<button data-href="{{ route('job.edit.purchase', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
				<i class="material-icons">edit</i>
			</button>
            <a href="{{route('reports.job_purchase_order',['id'=>$item->id])}}">
                <button class="btn btn-primary btn-sm bold"> <i class="fa fa-print"></i> PDF </button>
            </a>
            <a href="{{route('reports.job_purchase_order',['id'=>$item->id,'email'=>'true'])}}">
                <button class="btn btn-primary btn-sm bold"> <i class="fa fa-envelope"></i> Send Email </button>
            </a>
            <a href="{{route('reports.job_purchase_order',['id'=>$item->id,'download'=>'true'])}}">
                <button class="btn btn-primary btn-sm bold"> <i class="fa fa-download"></i> PDF Download </button>
            </a>
		</td>
	</tr>
	@endforeach

</tbody>
