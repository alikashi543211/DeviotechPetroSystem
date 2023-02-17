<!DOCTYPE html>
<html lang="en">

<head>
    {{-- <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> --}}
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />
    <title>Jobs Summary</title>

    <style type="text/css">
        * {
            font-family: Verdana, Arial, sans-serif;
        }

        table {
            width: 100% !important;
            font-size: x-small;
            text-align: left !important;
        }

        tfoot tr td {
            font-weight: bold;
            font-size: x-small;
        }

        .gray {
            background-color: lightgray
        }
    </style>
</head>

<body>
    @include('reports.includes.report_header')
    @include('reports.includes.report_footer')
    <main>
    <table width="100%">
        <tbody>
            <tr>
                <td style="text-align: center !important;">
                    <h2>JOBS SUMMARY @if(!$request->job_start_date && !$request->job_end_date ) (ALL JOBS) @endif</h2>
                </td>

            </tr>
            <tr>
                @if($request->job_start_date && $request->job_end_date )
                <td style="text-align: center !important;">
                    <h2>Between {{ $request->job_start_date }} and {{ $request->job_end_date }}</h2>
                </td>
                @endif
            </tr>
        </tbody>
    </table>

    <table width="100%">
        <thead style="text-align: center">
            <tr>

                <th>Date</th>
                <th>Job No</th>
                <th>Job Details</th>

            </tr>
        </thead>


        @foreach ($customers as $customer)
        @if(count($jobs->where('customer_id', $customer->id)) >0)
        <thead style="text-align: center">
            <tr>
                <th width="180px">{{ $customer->id }}</th>
                <th width="180px">{{ $customer->name }}</th>
            </tr>
        </thead>
        <tbody style="text-align: center">
            @foreach($jobs->where('customer_id', $customer->id) as $job)
            <tr>
                <td width="180px">{{ $job->date }}</td>
                <td width="180px">{{ $customer->code }}</td>
                <td width="180px">{{ $job->detail }}</td>
            </tr>
            @endforeach
            @endif
            @endforeach
        </tbody>
    </table>
    </main>
</body>

</html>