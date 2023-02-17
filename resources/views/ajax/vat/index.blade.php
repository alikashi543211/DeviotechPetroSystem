<thead>
    <tr>
        <th>ID</th>
        <th>VAT</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($vats as $at)
        <tr>
            <td>{{ $at->id }}</td>
            <td>{{ $at->vat }}%</td>
            <td>
                <button data-url="{{ route('vat.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('vat.delete', $at->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
