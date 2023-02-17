<!DOCTYPE html>
<html lang="en">

<head>
    <title>Stocks Movement</title>
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
    
</head>

<body>
    @include('reports.includes.report_header',['title'=>'STOCKS MOVEMENT'])
    @include('reports.includes.report_footer')
    <main>
    <table>
        <tbody>
            <tr>
                <td style="text-align: center !important;">
                    
                </td>

            </tr>
            <tr>
                @if($request->from_date && $request->to_date )
                <td style="text-align: center !important;">
                    <h2>Between {{ $request->from_date }} and {{ $request->to_date }}</h2>
                </td>
                @endif
            </tr>
        </tbody>
    </table>


    <table>

        <thead style="text-align: center" >
            <tr class="bordered">


                <th width="180px">Date</th>
                <th width="180px">Code/Supplier/Job</th>

                <th width="180px">Serial No</th>
                <th width="180px">Receieved</th>
                <th width="180px">Issued</th>

            </tr>
        </thead>

        <tbody style="text-align: center;">

            @foreach ($stock_items as $item)
           

            <tr style="font-weight:bold;border-top: 2px solid black;">
                <td width="180px" style="text-align: center; border-top: 1px solid
                black;">{{ $item->name }}</td>
                <td width="180px" style="text-align: center; border-top: 1px solid
                black;"></td>
                <td width="180px" style="text-align: center; border-top: 1px solid
                black;"></td>
                <td width="180px" style="text-align: center; border-top: 1px solid
                black;"></td>
                <td width="180px" style="text-align: center; border-top: 1px solid
                black;"></td>
            </tr>

            @foreach($item->job_stocks as $i)

            <tr>
                <td>{{ $i->date }}
                </td>
                <td>{{ $item->stock_code }}-{{ $i->job_id }}-{{ $i->jobs->customer->name }}
                </td>

                <td>{{ $i->serial_no }}
                </td>
                <td></td>

                <td>{{ $i->qty * $i->price }}</td>
            </tr>

            @endforeach
            @php $job_stock_sum = 0; @endphp
            @foreach($item->stock_receipt as $it)
            <tr>
                <td>{{ $it->date }}
                </td>
                <td>{{ $item->stock_code }}-{{ $it->receipt_supplier->name }}
                </td>

                <td>{{ $it->serial_number }}
                </td>
                @php $job_stock_sum += ($it->quantity * $it->unitprice) @endphp
                <td>{{ $it->quantity * $it->unitprice }}
                </td>
            </tr>
            @endforeach


            <tr style="border-top: 1px solid black;">
                <th width="180px" style="border-top: 1px solid black;"></th>
                <th width="180px" style="border-top: 1px solid black;"></th>


                <td width="180px" style="border-top: 1px solid black;">
                    <h4>Total Price</h4>
                </td>
                <td width="180px" style="border-top: 1px solid black;">
                    {{$job_stock_sum}}
                </td>
                <td width="180px" style="border-top: 1px solid black;">
                    {{$item->job_stocks->sum('total')}}
                </td>

            </tr>

            @endforeach
        </tbody>
    </table>
    <main>
</body>

</html>