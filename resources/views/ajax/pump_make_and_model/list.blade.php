<thead class=" text-primary">
    <th>
      ID
    </th>
    <th>
      Make & Model
    </th>


    <th>
      Action
    </th>
  </thead>
  <tbody>
    <?php $index_count = 1; ?>
    @if(count($make_models)>0)
    @foreach ($make_models as $make_model)

    <tr>
      <td>
        <?php echo $index_count++ ?>
      </td>
      <td>
        {{$make_model->make_model?? ''}}
      </td>

      <td>
        <div class="btn-group">
            {{-- <a href="{{url('admin/staff/'.$st->id ?? '')}}"><button type="button" class="btn btn-success btn-sm">Edit</button></a> --}}
            <button data-url="{{ route('pump_make_and_model.edit', $make_model->id) }}" data-update_url="{{ route('pump_list') }}" class="btn btn-success btn-sm open-modal">Edit</button>
            <button data-href="{{ route('delete.pump_make_and_model', $make_model->id) }}" data-update_url="{{ route('pump_list') }}"  class="btn btn-danger btn-sm del-btn">Delete</button>
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