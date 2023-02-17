<thead>
  <th>
    ID
  </th>
  <th>
    Engineer
  </th>
  <th>
    Job Card No
  </th>
  <th>
   Date
  </th>
  <th>
   Status
  </th>
</thead>
<tbody>
  @foreach ($list as $item)
  <tr>
    <td>{{ $item->id }}</td>
    <td>
      {{ $item->engineer->forename ?? '' }} {{ $item->engineer->surname ?? '' }}
    </td>
    <td>
      @if($item->status == "closed")
        {{ $item->engineer_form_id }}
      @else

      @endif
    </td>
    <td>
      {{ \Carbon\Carbon::parse($item->date)->format('d-m-Y') }}
    </td>
    <td>
     @if($item->status == "open")
        <span class="badge badge-info">issued</span>
      @elseif($item->status == "closed")
        <span class="badge badge-success">Submitted</span>
      @endif
    </td>
  </tr>
  @endforeach
</tbody>
