<thead>
    <tr>
        <th>#</th>
        <th>File</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @if (isset($dropbox['entries']))
        @foreach ($dropbox['entries'] as $item)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td><a target="_blank" href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a></td>
            <td><a href="{{ route('quotation.deletedocument', ['q_id' => $quotation->id, 'id' => $item['name']],) }}" class="btn btn-primary btn-sm del-btn"><i class="material-icons">delete</i></a></td>
        </tr>
        @endforeach
    @endif
</tbody>
