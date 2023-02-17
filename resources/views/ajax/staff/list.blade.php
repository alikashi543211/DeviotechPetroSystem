<thead class=" text-primary">
  <th>
    ID
  </th>
  <th>
    Staff Name
  </th>
  <th>
    Status
  </th>


  <th>
    Action
  </th>
</thead>
<tbody>
  <?php $index_count = 1; ?>
  @if(count($staffs)>0)
  @foreach ($staffs as $st)
  <tr>
    <td>
      <?php echo $index_count++ ?>
    </td>
    <td>
      {{$st->staff_name?? ''}}
    </td>
    <td>
      {{$st->status=='1' ? 'Active' : 'Inactive' }}
    </td>
    <td>
      <div class="btn-group">
        {{-- <a href="{{url('admin/staff/'.$st->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a> --}}
        <button data-url="{{ route('staff.edit', $st->id) }}" data-update_url="{{ route('staff.list') }}" class="btn btn-success btn-sm open-modal">Edit</button>
        <button data-href="{{ route('delete.staff', $st->id) }}" data-update_url="{{ route('staff.list') }}" class="btn btn-danger btn-sm del-btn">Delete</button>
      </div>
    </td>
  </tr>
  @endforeach
  @else
  <tr>
    <td>
      No Record
    </td>
  </tr>
  @endif
</tbody>