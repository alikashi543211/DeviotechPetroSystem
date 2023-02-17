@extends('emails.layout')

@section('content')
<div>

    <h1 align="center" style="color: #06090f;font-size:24px;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Purchase Order</h1>

</div>
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

                <td width="40%"></td>

                <td width="60%">

                    <table>

                        <tbody>

                            <tr>

                                <th>Purchase Order No:</th>

                                <td>{{ $data->po_number }}</td>

                            </tr>

                            <tr>

                                <th>Date:</th>

                                <td>{{ dateFormat($data->date) }}</td>

                            </tr>

                            <tr>

                                <th>Ref:</th>

                                <td>Stock</td>

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



                            <th style="text-align: left;" width="80px">Detail:</th>

                            <td>{{ $data->items_required }}</td>

                        </tr>

                        @endif

                        @if(isset($data->specification))

                  <tr>

                            <th style="text-align: left;" width="80px">Specification:</th>

                            <td>{{ $data->specification }}</td>

                        </tr> 

                        @endif

                    </tbody>

                </table>

            </tr>

        </tbody>

    </table>

    <div style="margin-top:100px;"><p><strong>If you are unable to fulfill this order, please advise by return mail</strong></p></div>

@endsection

