<thead>
    <tr>
        <th>ID</th>
        <th>Payment Term</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach ($payment_terms as $at)
        <tr>
            <td>{{ $at->id }}</td>
            <td>{{ $at->title }}</td>
            <td>
                <button data-url="{{ route('payment_term.edit', $at->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('payment_term.delete', $at->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
