<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />
    <title>Returned Tools List</title>

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
    @include('reports.includes.report_header',['title'=>'TOOLS RETURNED'])
    @include('reports.includes.report_footer')
    <main>
    {{-- <table width="100%">
        <tbody>
            <tr>
                <td style="text-align: center !important;"><h2>TOOLS RETURNED</h2></td>
            </tr>
        </tbody>
    </table> --}}

    <table width="100%">
        <thead>
            <tr>
                <th>Code</th>
                <th>Serial No</th>
                <th>Issued To</th>
                <th>Date Allocated</th>
                <th>Allocated By</th>
                <th>Date Returned</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr>
                    <td>{{ $item->tool->tool_code }} - {{ $item->tool->description }}</td>
                    <td>{{ $item->serial_no }}</td>
                    <td>{{ $item->issued_to }}</td>
                    <td>{{ $item->date_allocated }}</td>
                    <td>{{ $item->user->name }}</td>
                    <td>{{ $item->date_returned }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <br>
    <br>
    <table style="width:35% !important;">
        <tbody>
            <tr>
                <th width="100px">Engineer:</th>
                <td style="border-bottom: 1px solid;"></td>
            </tr>
            <tr>
                <th width="100px">Date Issued:</th>
                <td style="border-bottom: 1px solid;"></td>
            </tr>
        </tbody>
    </table>
    </main>
</body>
</html>
