<thead>
              <th>
                ID
              </th>
              @if(auth()->user()->role == 'admin')
              <th>Created By</th>
              @endif
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
              <tr>
                <td>{{ $item->id }}</td>
                @if(auth()->user()->role == 'admin')
                <td>{{ $item->user->name }}</td>
                @endif
                <td>
                  {{$item->total_value}}
                </td>
                <td>
                  {{$item->signatory->signatory}}
                </td>
                <td>
                  {{$item->status}}
                </td>
                <td>
                  {{$item->customer->code}}
                </td>
                <td>
                  {{$item->date}}
                </td>
                <td>

                  <a href="{{route('verif_quotation.edit',['id'=>$item->id] )}}" class="btn btn-success btn-sm">Edit</a>
        <a href="{{route('verif_quotation.delete',['id'=>$item->id] )}}" class="btn btn-danger btn-sm del-btn del-quotation">Delete</a>
        <a href="{{route('reports.callibri_quotation',$item->id)}}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
            <i class="fa fa-print"></i> PDF
        </button></a>
        <a href="{{route('reports.callibri_quotation',$item->id)}}?download=true"><button class="btn btn-primary btn-sm bold print-certificate-btn">
            <i class="fa fa-print"></i> PDF Download
        </button></a>
        <a href="{{route('reports.callibri_quotation',$item->id)}}?email=true&job_id={{ $job_id }}"><button class="btn btn-primary btn-sm bold print-certificate-btn">
            <i class="fa fa-envelope"></i> Email PDF
        </button></a>
                </td>
              </tr>
              @endforeach
            </tbody>