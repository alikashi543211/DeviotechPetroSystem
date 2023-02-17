<thead>
    <tr>
        <th>ID</th>
        <th>Type</th>
        <th>Cost 1st Nozzle</th>
        <th>Cost Other Nozzles</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($quotation_types as $qt)
        <tr>
            <td>{{ $qt->id }}</td>
            <td>{{ $qt->type }}</td>
            <td>{{ $qt->cost_1st_nozzle }}</td>
            <td>{{ $qt->cost_other_nozzles }}</td>
            <td>
                <button data-url="{{ route('quotation_type.edit', $qt->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('quotation_type.delete', $qt->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
