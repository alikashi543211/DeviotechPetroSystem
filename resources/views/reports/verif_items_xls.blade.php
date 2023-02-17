<table>
    <thead>
    <tr>
        <th>Detail</th>
    </tr>
    </thead>
    <tbody>
   @foreach($data as $item)
    <tr>
        <td>1 Nozzle @ €{{$item->cost_1st_nozzle}}.00 @if($item->nozzles-1 > 0) and {{$item->nozzles-1}} Nozzle(s) @
€{{$item->cost_other_nozzles}}.00 @endif</td>
    </tr>
@endforeach
    </tbody>
</table>