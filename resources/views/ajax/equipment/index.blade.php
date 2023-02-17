<thead>
    <tr>
        <th>Make & Model</th>
        <th>Serial #</th>
        <th>Type</th>
        <th>Equipment No</th>
        <th>Quantity</th>
        <th>No. Months</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($customer->equipment as $ce)
    <tr>
        <td>{{ $ce->pump_make_and_model->make_model }}</td>
        <td>{{ $ce->serial }}</td>
        <td>{{ $ce->type }}</td>
        <td>{{ $ce->equipment_no }}</td>
        <td>{{ $ce->quantity }}</td>
        <td>{{ $ce->no_of_months }}</td>
        <td>{{ $ce->start_date }}</td>
        <td>{{ $ce->end_date }}</td>
        <td>
            <button data-url="{{ route('equipment.edit', $ce->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
            <button data-href="{{ route('equipment.delete', $ce->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
        </td>
    </tr>
    @endforeach
</tbody>