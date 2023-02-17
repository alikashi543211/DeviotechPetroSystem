<thead>
    <tr>
        <th>ID</th>
        <th>Warranty</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($warranties as $at)
        <tr>
            <td>{{ $at->id }}</td>
            <td>{{ $at->title }} - @if($at->title>1) Months @else Month @endif</td>
            <td>
                <button data-url="{{ route('warranty.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('warranty.delete', $at->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
