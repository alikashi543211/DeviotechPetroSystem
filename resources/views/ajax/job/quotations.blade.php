<thead>
  <th>
    ID
  </th>
  @if(auth()->user()->role == 'admin')
  <th>Created By</th>
  @endif
  <th>
    Title
  </th>
  <th>
    Total Value
  </th>
  <th>
   Signatory
  </th>
  <th>
   Status
  </th>
  <th>
    A/C Code
  </th>
  <th>
    Date
  </th>
  <th>
    Action
  </th>
</thead>
<tbody>
  @foreach ($list as $item)
  @if($item->status=='lost_archieve')
    @continue
  @endif
  <tr>
    <td>{{ $item->id }}</td>
    @if(auth()->user()->role == 'admin')
    <td>{{ $item->user->name }}</td>
    @endif
    <td>
      {{$item->title}}
    </td>
    <td>
      {{$item->total_value}}
    </td>
    <td>
      {{$item->signatory->signatory}}
    </td>
    <td>
     <span class="badge @if($item->status=='Pending') badge-warning text-dark @elseif($item->status=='Won') badge-success text-white @elseif($item->status=='Lost') badge-danger text-white @endif p-2">{{$item->status}}</span>
    </td>
    <td>
    {{$item->customer->code}}
    </td>
    <td>
    {{$item->date}}
    </td>
    <td>
        <a href="{{route('quotation.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
        <a href="{{route('quotation.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn">Delete</a>
        <a href="{{route('reports.quotation',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
            <i class="fa fa-print"></i> PDF
        </button></a>
        <a href="{{route('reports.quotation_xls',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
            <i class="fa fa-file-excel-o"></i> XLS
        </button></a>
        <a href="{{route('reports.quotation',$item->id)}}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
            <i class="fa fa-download"></i> PDF Download
        </button></a>
    </td>
  </tr>
  @endforeach
</tbody>
