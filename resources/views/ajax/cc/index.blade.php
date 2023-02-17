<thead>
    <tr>
        <th>ID</th>
        <th>Email</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($vats as $at)
        <tr>
            <td>{{ $at->id }}</td>
            <td>{{ $at->email }}</td>
            <td>
                <button data-url="{{ route('cc.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
            </td>
        </tr>
    @endforeach
</tbody>
