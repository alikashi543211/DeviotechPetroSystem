<!DOCTYPE html>
<html lang="en">

<head>
    <title>Filtered Stocks</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />



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
                    <h2>STOCKS PURCHASES @if(!$request->from_date && !$request->to_date ) (ALL Stock) @endif</h2>
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


    <table width="100%">

        <thead style="text-align: center">
            <tr class="bordered">


                <th width="180px">Date</th>
                <th width="180px">Serial Number</th>
                <th width="180px">Quantity</th>
                <th width="180px">Unit Price</th>

            </tr>
        </thead>

        <tbody style="text-align: center;">
            @foreach ($suppliers as $supplier)
            @if(count($stock_purchase->where('supplier', $supplier->id)) >0)
            <tr>
                <td width="180px" style="font-weight:bold" class="table-bordered">{{ $supplier->name }}</td>
            </tr>
            
            @foreach($stock_purchase->where('supplier', $supplier->id) as $purchase)

            <tr>
                <td width="180px" @if($loop->last)style="border-bottom: 1px solid black;"@endif>{{ $purchase->date }}
                </td>
                <td width="180px" @if($loop->last)style="border-bottom: 1px solid
                    black;"@endif>{{ $purchase->serial_number }}</td>
                <td width="180px" @if($loop->last)style="border-bottom: 1px solid
                    black;"@endif>{{ $purchase->quantity }}</td>
                <td width="180px" @if($loop->last)style="border-bottom: 1px solid
                    black;"@endif>{{ $purchase->unitprice }}</td>

            </tr>
            @endforeach

            <tr>
                <th></th>
                <th></th>
                <th></th>

                <th>
                    <h4>Total Price</h4>
                </th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>{{$supplier->stock_receipt->sum('unitprice')}}</td>
            </tr>

            {{-- {{$supplier->stock_receipt->sum('unitprice')}} --}}
            @endif
            @endforeach
        </tbody>



    </table>
</main>

</body>

</html>