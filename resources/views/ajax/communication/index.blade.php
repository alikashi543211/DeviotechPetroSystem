<thead>
    <tr>
        <th>ID</th>
        
        <th>Communication/Action Taken</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($communication as $co)
        <tr>
            <td>{{ $co->id}}</td>
            
            <td>{{ $co->action_taken}}</td>
            <td>
                <button data-url="{{ route('communication.edit', $co->id) }}" class="btn btn-success btn-sm open-modal">Edit</button>
                <button data-href="{{ route('communication.delete', $co->id) }}" class="btn btn-danger btn-sm del-btn">Delete</button>
            </td>
        </tr>
    @endforeach
</tbody>
