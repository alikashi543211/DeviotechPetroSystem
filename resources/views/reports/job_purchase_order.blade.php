<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />

    <title>Purchase Order Report</title>



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

    @include('reports.includes.report_header',['title'=>'PURCHASE ORDER'])

    @include('reports.includes.report_footer')

    <main>

    {{-- <table width="100%">

        <tbody>

            <tr>

                <td style="text-align: center !important;"><h2>PURCHASE ORDER</h2></td>

            </tr>

        </tbody>

    </table> --}}



    <table width="100%">

        <tbody>

            <tr>

                <td align="left">

                    <h3 style="font-weight:normal;">{{ strtoupper($data->supplier->name) }} <br>

                        {{ strtoupper($data->supplier->address_1) }} <br>

                        {{ strtoupper($data->supplier->address_2) }} <br>

                        {{ strtoupper($data->supplier->address_3) }} <br>

                        {{ strtoupper($data->supplier->address_4) }} <br>

                    </h3>

                </td>

                <td valign="top">

                    {{-- <img src="{{ asset('petro-logo.png') }}" width="150" alt=""> --}}

                </td>



            </tr>

        </tbody>

    </table>



    <table width="100%">

        <tbody>

            <tr>

                <td width="50%"></td>

                <td width="50%">

                    <table>

                        <tbody>

                            <tr>

                                <th>Purchase Order No:</th>

                                <td>{{$data->job->id}}-{{ $data->id }}</td>

                            </tr>

                            <tr>

                                <th>Date:</th>

                                <td>{{ dateFormat($data->date) }}</td>

                            </tr>

                            <tr>

                                <th>Ref:</th>

                                <td>{{$data->job->customer->code}}</td>

                            </tr>

                             <tr>

                                <th>Ordered By:</th>

                                <td>{{ $data->purchased_by }}</td>

                            </tr>

                        </tbody>

                    </table>

                </td>

            </tr>

        </tbody>

    </table>



    <table width="100%">

        <tbody>

            <tr>

                <td><strong>Please Supply the following items:</strong></td>

            </tr>

            <tr>

                <table>

                    <tbody>
                        @if(isset($data->items_required))
                            <tr>
                                <th width="80px">Detail:</th>
                                <td>{{ $data->items_required }}</td>
                            </tr>
                        @endif
                        @if(isset($data->specification))
                            <tr>
                                <th width="80px">Specification:</th>
                                <td>{{ $data->specification }}</td>
                            </tr> 
                        @endif

                    </tbody>

                </table>

            </tr>

        </tbody>

    </table>
    <br><br><br><br>
    <table width="100%">
        <tbody>
            <tr>
                <td><strong>If you are unable to fulfill this order, please advise by return mail</strong></td>
            </tr>
        </tbody>
    </table>
    </main>

</body>

</html>