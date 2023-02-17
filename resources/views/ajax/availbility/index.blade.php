<thead>
    <tr>
        <th>ID</th>
        <th>Availability</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($availbilities as $at)
        <tr>
            <td>{{ $at->id }}</td>
            <td>{{ $at->title }}</td>
            <td>
                <button data-url="{{ route('availbility.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('availbility.delete', $at->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
