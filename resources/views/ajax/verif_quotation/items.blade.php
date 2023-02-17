<thead>
    <tr>
        <th>#</th>
        <th>Number</th>
        <th>Nozzels</th>
        <th>Cost 1st Nozzle</th>
        <th>Cost Other Nozzles</th>
        <th>Cost All Nozzles</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($list as $item)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $item->number }}</td>
            <td>{{ $item->nozzles }}</td>
            <td>{{ $item->cost_1st_nozzle }}</td>
            <td>{{ $item->cost_other_nozzles }}</td>
            <td>{{ $item->cost_all_nozzles }}</td>
            <td>
                <button data-href="{{ route('verif_quotation.delete.item', $item->id) }}" class="btn btn-danger btn-sm del-btn">
                    <i class="material-icons">delete</i>
                </button>
                <button data-href="{{ route('verif_quotation.edit.item', $item->id) }}" class="btn btn-danger btn-sm edit-btn">
                    <i class="material-icons">edit</i>
                </button>
            </td>
        </tr>
    @endforeach
</tbody>
