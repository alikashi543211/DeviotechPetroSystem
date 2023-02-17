<thead>
    <tr>
        <th>ID</th>
        <th>Type</th>
        <th>Detail</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($block as $bl)
        <tr>
            <td>{{ $bl->id}}</td>
            <td>{{ $bl->type }}</td>
            <td>{{ $bl->detail}}</td>
            <td>
                <button data-url="{{ route('block.edit', $bl->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('block.delete', $bl->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
