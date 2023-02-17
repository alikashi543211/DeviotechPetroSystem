<!DOCTYPE html>
<html lang="en">

<head>
    <title>Stock Balance</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />



    <style type="text/css">
        * {
            font-family: Verdana, Arial, sans-serif;
        }

        table {

            font-size: x-small;
            text-align: center !important;
            margin-left: auto;
            margin-right: auto;
        }

        tfoot tr td {
            font-weight: bold;
            font-size: x-small;
        }

        .gray {
            background-color: lightgray
        }
    </style>
    <style>
        table {
            border-collapse: collapse;
        }

        .thistr {
            border: solid thin;
        }
    </style>
</head>

<body>
    @include('reports.includes.report_header',['title'=>'STOCK BALANCE'])
    @include('reports.includes.report_footer')
    <main>
    {{-- <table>
        <tbody>
            <tr>
                <td style="text-align: center !important;">
                    <h2>STOCK BALANCE </h2>
                </td>
                

            </tr>

        </tbody>
    </table> --}}


    <table width="100%">

        <thead style="text-align: center; border-bottom: 1px solid
        black;">
            <tr width="180px">


                <th width="180px">Code</th>

                <th width="180px">Quantity On Hand</th>
                <th width="180px">Value</th>

            </tr>
        </thead>

        <tbody style="text-align: center;">
            @foreach ($stock_items as $item)
            <tr>
                <td width="180px" style="border-bottom: 1px solid
                black;"><h4>{{ $item->stock_code }}</h4></td>
                @php $remaning_qty = $item->stock_receipt->sum('quantity') - $item->job_stocks->sum('qty') @endphp
                <td width="180px" style="border-bottom: 1px solid
                black;">{{$remaning_qty}}</td>
                <td width="180px" style="border-bottom: 1px solid
                    black;">{{$remaning_qty * $item->unit_cost }}</td>
            </tr>

            @endforeach
        </tbody>



    </table>
    </main>

</body>

</html>