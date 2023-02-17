<table>
    <thead>
    <tr>
        <th>LabourDate</th>
        <th>StaffName</th>
        <th>Job Sheet</th>
        <th>HourlyRate</th>
        <th>Hours</th>
        <th>LabourCost</th>
        <th>Start</th>
        <th>End</th>
    </tr>
    </thead>
    <tbody>
    @foreach($data as $item)
    <tr>
        <td>{{ dateFormat($item->date) }}</td>
        <td>{{ $item->staff->staff_name }}</td>
        <th>{{$item->job_sheet}}</th>
        <td>{{ $item->amount/$item->hours }}</td>
        <td>{{ $item->hours }}</td>
        <td>{{ $item->amount }}</td>
        <td>{{ dateFormat($item->start) }}</td>
        <td>{{ dateFormat($item->end) }}</td>
    </tr>
    @endforeach
    </tbody>
</table>