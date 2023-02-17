<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />
    <title>Tools List</title>

    <style type="text/css">
        * {
            font-family: Verdana, Arial, sans-serif;
        }
        table{
            width: 100% !important;
            font-size: x-small;
            text-align: left !important;
        }
        tfoot tr td{
            font-weight: bold;
            font-size: x-small;
        }
        .gray {
            background-color: lightgray
        }
    </style>
</head>
<body>
    @include('reports.includes.report_header',['title'=>'TOOLS'])
    @include('reports.includes.report_footer')
    <main>
    {{-- <table width="100%">
        <tbody>
            <tr>
                <td style="text-align: center !important;"><h2>TOOLS</h2></td>
            </tr>
        </tbody>
    </table> --}}

    <table width="100%">
        <thead>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Current Job</th>
                <th>Allocated</th>
                <th>Notes</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr>
                    <td>{{ $item->tool_code }}</td>
                    <td>{{ $item->description }}</td>
                    <td>{{ $item->issue_tool ? $item->issue_tool->job->id .' - '. $item->issue_tool->job->name : 'N/A' }}</td>
                    <td>{{ $item->issue_tool->date_allocated ?? 'N/A' }}</td>
                    <td>{{ $item->notes }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    </main>
</body>
</html>
