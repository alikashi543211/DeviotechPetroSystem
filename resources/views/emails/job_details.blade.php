@extends('emails.layout')
@section('css')
  <style>
      *
      {
          font-family: Verdana, Arial, sans-serif;
          font-size:12px !important;
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
      .heading{
          border-bottom: 2px solid black;
      }
      .theading{
          font-weight:bold;
          width:140px;
          padding-bottom: 16px ;
      }
      .tcolumn{
      padding-bottom: 16px ;
      }
      .date-box{
          border-bottom:1px solid black;
          vertical-align: top;

          /*height:40px;*/
      }
      .address-box{
          border-bottom:1px solid black;
      }
      .date-td{
          /*border-bottom:1px solid black;*/
      }
      .labour-table,.date-table,.labour-data-table,.labour-data-inner-table
      {
          border-collapse: collapse;
      }

      .labour-table .labour-td{
          border-top: 4px solid black;
      }
      .labour-heading{
          vertical-align: top;
          font-size:20px;
          font-family: Arial;
          font-weight: bold;
          text-decoration: underline;
      }
      .labour-data-td{
          border-bottom: 1px solid black;
      }
      .total_title{
          font-weight: bold;

      }
  </style>
@endsection
@section('content')
    <div>
        <h1 align="center" style="color: #06090f;font-size:24px;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Job Details</h1>
    </div>
    <table width="100%">
        <tbody>
            <tr>
                <td width="3%"></td>
                <td width="94%" style="text-align: center !important;">
                    <table>
                        <tbody>
                            <tr>
                                <td class="theading">Job No</td>
                                <td class="tcolumn">{{$job->id}}</td>
                            </tr>
                            <tr>
                                <td class="theading">Date</td>
                                <td class="tcolumn">{{dateFormat($job->created_at)}}</td>
                            </tr>
                            <tr>
                                <td class="theading">AcCode</td>
                                <td class="tcolumn">{{$job->customer->code}}</td>
                            </tr>
                            <tr>
                                <td class="theading">Customer</td>
                                <td class="tcolumn">{{$job->customer->name}}</td>
                            </tr>
                            <tr>
                                <td class="theading">Contact Name</td>
                                <td class="tcolumn">{{ $contact_info->forename ?? '' }} {{ $contact_info->surname ?? '' }}</td>
                            </tr>
                            <tr>
                                <td class="theading">Actions Taken</td>
                                <td class="tcolumn">{{ $job->action }}</td>
                            </tr>
                            <tr>
                                <td class="theading">Job Details</td>
                                <td class="tcolumn">{{ $job->detail }}</td>
                            </tr>
                            <tr>
                                <td class="theading">Completed</td>
                                <td class="tcolumn"><input type="checkbox" @if($job->completed) checked @endif></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

    <br><br><br>
    <table width="100%" class="date-table">
        <tbody>
            @foreach($email_list as $item)
                <tr>
                    <td width="5%"></td>
                    <td width="18%" class="date-box date-td">{{ dateFormat($item->created_at) }}</td>
                    <td width="18%" class="date-box date-td">{{$item->receiver}}</td>
                    <td width="18%" class="date-box date-td">{{$item->receiver_name}}</td>
                    <td width="36%" class="address-box date-td">{{ $item->content }} </td>
                    <td width="5%"></td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <br>
    <table width="100%" class="labour-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="18%" class="labour-td labour-heading">Labour</td>
                <td width="18%" class="labour-td"></td>
                <td width="18%" class="labour-td"></td>
                <td width="38%" class="labour-td"></td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>
    <table width="100%" class="labour-data-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="92%" class="">
                    <table class="labour-data-inner-table">
                        <thead>
                            <tr class="border_bottom">
                                <th class="labour-data-td">Date</th>
                                <th class="labour-data-td">Staff</th>
                                <th class="labour-data-td">Job Sheet No.</th>
                                <th class="labour-data-td">From</th>
                                <th class="labour-data-td">To</th>
                                <th class="labour-data-td">Hrs.</th>
                                <th class="labour-data-td">€/Hr</th>
                                <th class="labour-data-td">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $total_hours=0;
                                $total_amount=0;
                            @endphp
                            @foreach($labour_list as $item)
                                <tr>
                                    @php
                                        $total_hours=$total_hours+$item->hours;
                                        $total_amount=$total_amount+$item->amount;
                                    @endphp
                                    <td>{{ $item->date }}</td>
                                    <td>{{ $contact_info->forename ?? '' }} {{ $contact_info->surname ?? '' }}</td>
                                    <td>{{ $item->job_sheet }}</td>
                                    <td>{{ $item->start }}</td>
                                    <td>{{ $item->end }}</td>
                                    <td>{{ $item->hours }}.00</td>
                                    <td>€{{number_format((float)$item->amount/$item->hours, 2, '.', '')}}</td>
                                    <td>€{{ $item->amount }}.00</td>
                                </tr>
                            @endforeach
                            <tr class="pump_data">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="labour-data-td"></td>
                                <td></td>
                                <td class="labour-data-td"></td>
                            </tr>
                            <tr class="pump_data">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><b>Total:</b></td>
                                <td><b>{{$total_hours}}.00</b></td>
                                <td></td>
                                <td><b>€{{$total_amount}}.00</b></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

    <table width="100%" class="labour-table">
            <tbody>
                <tr>
                    <td width="5%"></td>
                    <td width="18%" class="labour-td labour-heading"></td>
                    <td width="18%" class="labour-td"></td>
                    <td width="18%" class="labour-td"></td>
                    <td width="38%" class="labour-td"></td>
                    <td width="3%"></td>
                </tr>
            </tbody>
        </table>
        <br>
        <table width="100%" class="labour-table">
            <tbody>
                <tr>
                    <td width="5%"></td>
                    <td width="18%" class="labour-td labour-heading">Purchases</td>
                    <td width="18%" class="labour-td"></td>
                    <td width="18%" class="labour-td"></td>
                    <td width="38%" class="labour-td"></td>
                    <td width="3%"></td>
                </tr>
            </tbody>
        </table>

    <table width="100%" class="labour-data-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="92%" class="">
                    <table class="labour-data-inner-table">
                        <thead>
                            <tr class="border_bottom">
                                <th class="labour-data-td">Date</th>
                                <th class="labour-data-td">Supplier</th>
                                <th class="labour-data-td">Item</th>
                                <th class="labour-data-td">Value</th>

                            </tr>
                        </thead>
                        <tbody>
                        @php
                            $total_amount=0;
                        @endphp
                        @foreach($purchase_list as $item)
                            @php
                               $total_amount=$total_amount+$item->value;
                            @endphp
                            <tr>
                                <td class="labour-data-td">{{ $item->date }}</td>
                                <td class="labour-data-td">{{ $item->supplier->name }}</td>
                                <td class="labour-data-td">{{ $item->items_required }}</td>
                                <td class="labour-data-td">€{{ $item->value }}.00</td>
                            </tr>
                        @endforeach     
                        <tr class="pump_data">
                            <td></td>
                            <td></td>
                            <td class="total_title">Total:</td>
                            <td><b>€{{$total_amount}}</b>.00</td>

                        </tr>
                        </tbody>
                    </table>
                </td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

    <table width="100%" class="labour-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="18%" class="labour-td labour-heading"></td>
                <td width="18%" class="labour-td"></td>
                <td width="18%" class="labour-td"></td>
                <td width="38%" class="labour-td"></td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

    <br>
    <table width="100%" class="labour-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="18%" class="labour-td labour-heading">Stock Issued</td>
                <td width="18%" class="labour-td"></td>
                <td width="18%" class="labour-td"></td>
                <td width="38%" class="labour-td"></td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

    <table width="100%" class="labour-data-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="92%" class="">
                    <table class="labour-data-inner-table">
                        <thead>
                            <tr class="border_bottom">
                                <th class="labour-data-td">Date</th>
                                <th class="labour-data-td">Item</th>
                                <th class="labour-data-td">Details</th>
                                <th class="labour-data-td">Quantity</th>
                                <th class="labour-data-td">Unit Price</th>
                                <th class="labour-data-td">Value</th>

                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $total_amount=0;
                            @endphp
                            @foreach($stock_list as $item)
                                @php
                                    $total_amount=$total_amount+$item->total;
                                @endphp
                                <tr>
                                    <td>{{ $item->date }}</td>
                                    <td>{{ $item->stock->name ?? $item->material_used ?? '' }}</td>
                                    <td>{{ $item->serial_no }}</td>
                                    <td>{{ $item->qty }}</td>
                                    <td>€{{ $item->price }}</td>
                                    <td>€{{ $item->total }}</td>
                                </tr>
                            @endforeach
                            <tr class="pump_data">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="total_title">Total:</td>
                                <td><b>€{{$total_amount}}</b>.00</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

    <table width="100%" class="labour-table">
        <tbody>
            <tr>
                <td width="5%"></td>
                <td width="18%" class="labour-td labour-heading"></td>
                <td width="18%" class="labour-td"></td>
                <td width="18%" class="labour-td"></td>
                <td width="38%" class="labour-td"></td>
                <td width="3%"></td>
            </tr>
        </tbody>
    </table>

@endsection
