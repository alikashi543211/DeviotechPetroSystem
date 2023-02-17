<thead>
    <tr>
        <th>ID</th>
        <th>Code</th>
        <th>Account Type</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($account_types as $at)
        <tr>
            <td>{{ $at->id }}</td>
            <td>{{ $at->code }}</td>
            <td>{{ $at->account_type }}</td>
            <td>
                <button data-url="{{ route('account_type.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('account_type.delete', $at->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
