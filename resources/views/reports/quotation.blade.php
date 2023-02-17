    <!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />

        <title>Quotation</title>



        <style type="text/css">

            header 

                {

                    height: 3cm !important;

                }

            * {

                font-family: Verdana, Arial, sans-serif;

                font-size:15px;

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

                /*border-bottom: 2px solid black;*/

            }

            .theading{

                font-weight:normal;

                width:140px;

                padding-bottom: 16px ;

                font-family: CIDFont+F2 !important;

                font-size:12px;

            }

            .labour-td{

                /*border-top: 4px solid black;*/

            }

            .labour-heading{

                vertical-align: top;

                font-size:15px;

                font-family: CIDFont+F2 !important;

                font-weight: bold;

                text-decoration: underline;



            }

            .quotation_no_table{

                /*margin-top:25px;*/

            }

            .vat_column{

                /*border-left:2px solid black;

                border-top:2px solid black;

                border-right:2px solid black;

                border-bottom:2px solid black;*/

                border:1px solid black;



            }

            .vat_table {

                  table-layout: fixed;

                  width: 100%;

            }

            .four-crud{

                margin-left:25px;

            }

            .show_underline{

            border-bottom:1px solid black;

            }

            .show_underline_span{

                /*border-bottom:1px solid black;

                width:40px;*/

            }

            .signature_title{

                border-top:1px solid black;

            }

            .av-box-col

            {

                position:relative;

            }

            .av-hyphen

            {

                /*position: absolute;

                left:85%;*/

            }

            /*.av-label

            {

                position: absolute;

                left:30%;

            }*/

        </style>



    </head>

    <body>

        @include('reports.includes.report_header',['title'=>'QUOTATION'])

        @include('reports.includes.report_footer')

        <main>

            <br>

            <table width="100%">

                <tbody>

                    <tr>

                        <td width="5%"></td>

                        <td width="98%" style="text-align: center !important;">

                            <table>

                                <tbody>

                                    <tr>

                                        <td class="theading">

                                        <p> {{strtoupper($quotation->customer->name)}} <br>

                                            {{strtoupper($quotation->customer->address1)}} <br>

                                            {{strtoupper($quotation->customer->address2)}} <br>

                                            {{strtoupper($quotation->customer->address3)}} <br>

                                            {{strtoupper($quotation->customer->address4)}} <br>

                                        </p>

                                    </td>

                                    </tr>



                                </tbody>

                            </table>

                        <td width="5%"></td>

                    </tr>

                </tbody>

            </table>



            <table width="100%">

                <tbody>

                    <tr>

                        <td width="50%" class="labour-heading" valign="top">{{$quotation->title}}</td>

                        <td width="25%" class="quotation_no_td" valign="top"><b>Quotation No </b><span>{{$quotation->id}}</span></td>

                        <td width="25%" valign="top"><b>Date </b><span>{{date("d-M-y", strtotime(dateFormat($quotation->created_at)))}}</td>

                    </tr>

                    {{--<tr>

                        <td width="8%"></td>

                        <td width="50%" class="labour-heading" valign="top"></td>

                        <td style="position: relative;" width="37%" class="quotation_no_td" valign="top"><b>Date </b><span style="position:absolute;left:55%;">{{date("d-M-y", strtotime(dateFormat($quotation->created_at)))}}</span></td>

                        <td width="5%"></td>

                    </tr>--}}



                </tbody>

            </table>



            <table width="100%">

                <tbody>

                    <tr>

                        <td width="80%" valign="top">{!! str_replace(" | ", "</d></tr><tr><td width='80%' valign='top'>", $quotation->block1) !!}</td>

                    </tr>

                </tbody>

            </table>



            <table width="100%">

                <tbody>

                    @php

                        $total_amount=0;

                        $total_cost_amount=0;

                        $iteration = 0;

                    @endphp

                    @foreach($item_list as $item)

                        @php
                            if($item->qty==0)
                            {
                                $total_amount=$total_amount+$item->cost_price;
                            }else
                            {
                                $total_amount=$total_amount+($item->qty*$item->cost_price);
                            }

                            $total_cost_amount=$total_cost_amount+$item->qty*$item->cost_price;

                            $qty = $item->qty ?? "";

                            $price = $item->cost_price ?? "0";

                            $v = $qty." €".$price;

                            $itemsDetails = explode("\n",$item->item);

                            $iteration=$loop->iteration+1;

                        @endphp

                        <tr>

                            <td width="7%" valign="top"> {{ $loop->iteration }} : </td>

                            @foreach($itemsDetails as $items)

                                <td width="78%" valign="top">{{ $items }}</td><td width="15%" valign="top">@if($loop->iteration === 1) <span @if($item->qty==0) style="visibility:hidden;margin-right:10px;" @endif> {{$item->qty}} </span> <span>&nbsp;&nbsp;€{{$price}}</span> @endif</td></tr><tr><td width="7%" valign="top"></td>

                            @endforeach

                        </tr>

                    @endforeach

                    @if(sizeof($extra_item_list)!=0)

                        <tr>

                            <td width="7%" valign="top"> <strong>Extra</strong> </td>

                            <td width="78%" valign="top"></td><td width="15%" valign="top"></td></tr><tr><td width="7%" valign="top"></td>

                        </tr>

                        @foreach($extra_item_list as $item)

                            @php

                                if($item->qty==0)
                                {
                                    $total_amount=$total_amount+$item->cost_price;
                                }else
                                {
                                    $total_amount=$total_amount+($item->qty*$item->cost_price);
                                }

                                $total_cost_amount=$total_cost_amount+$item->qty*$item->cost_price;

                                $qty = $item->qty ?? "";

                                $price = $item->cost_price ?? "0";

                                $v = $qty."     €".$price;

                                $itemsDetails = explode("\n",$item->item);

                            @endphp

                            <tr>

                                <td width="7%" valign="top"> {{ $iteration++ }} : </td>

                                @foreach($itemsDetails as $items)

                                    <td width="78%" valign="top">{{ $items }}</td><td width="15%" valign="top">@if($loop->iteration === 1) <span @if($item->qty==0) style="visibility:hidden;margin-right:10px;" @endif> {{$item->qty}} </span> <span>&nbsp;&nbsp;€{{$price}}</span> @endif</td></tr><tr><td width="7%" valign="top"></td>

                                @endforeach

                            </tr>

                        @endforeach

                    @endif

                </tbody>

            </table>

            

            <table width="100%">

                <tbody>

                    <tr>

                        <td width="80%"></td>

                        <td width="20%" valign="top"><b>Total: €{{$total_amount}}</b></td>

                    </tr>

                </tbody>

            </table>

            

            <table width="100%">

                <tbody>

                    <tr>

                        <td width="76%"></td>

                        <td width="30%" align="right" valign="top"><b>Travel Cost: €{{$quotation->travel}}</b></td>

                    </tr>

                </tbody>

            </table>



            <table width="100%">

                <tbody>

                   <tr>

                        <td width="80%" valign="top">{!! str_replace(" | ", "</d></tr><tr><td width='80%' valign='top'>", $quotation->block2) !!}</td>

                    </tr>



                </tbody>

            </table>



            <table width="100%" class="vat_table">

                <tbody>

                    <tr>

                        <td width="15%"></td>

                        <td width="75%" class="vat_column" class="middle_box" style="text-align: center !important;">

                        <table class="vat_table">

                            <tbody>

                                <tr>

                                    <td align="right" class="av-box-col"><span>Availability</span><span class="av-hyphen">-</span></td>

                                    <td class="four-crud" align="left">{{$quotation->availablity_id ?? ''}}</td>

                                </tr>

                                <tr>

                                    <td align="right" class="av-box-col"><span class="av-label">Terms of Payment</span> <span class="av-hyphen">-</span></td>

                                    <td class="four-crud" align="left">{{$quotation->payment_term_id ?? ''}}</td>

                                </tr>

                                <tr>

                                    <td align="right" class="av-box-col"><span class="av-label">VAT</span> <span class="av-hyphen">-</span></td>

                                    <td class="four-crud" align="left">{{$quotation->vat_id ?? '0'}}%</td>

                                </tr>

                                <tr>

                                    <td align="right" class="av-box-col"><span class="av-label">Warranty</span> <span class="av-hyphen">-</span></td>

                                    <td class="four-crud" align="left">{{$warranty->title ?? '0'}} @if($warranty->title>1) Months @else Month @endif</td>

                                </tr>

                    

                            </tbody>

                        </table>

                        <td width="15%"></td>

                    </tr>

                </tbody>

            </table>



            <table width="100%" class="signature_table">

                <tbody>

                    <tr>

                        <td width="10%"></td>

                        <td valign="top" width="2%" class="middle_box">

                          Regards,

                          </td>

                          <td valign="top" width="40%" class="middle_box">

                          <span style="font-family:Blackadder ITC;" class="show_underline_span">{{ $quotation->signatory->signatory ?? ''}}</span><br>

                          <span class="signature_title">{{ $quotation->signatory->title ?? '' }}</span>

                          </td>

                        <td width="62%"></td>

                    </tr>

                </tbody>

            </table>



            <br><br>

            

            @if($quotation->sign_off==3)

                <table width="100%">

                        <tbody>

                                <tr>

                                    <td width="8%"></td>

                                        <td width="82%" valign="top">

                                        <table>

                                            <tbody>

                                                <tr>

                                                    <td class="labour-td labour-heading">Please note the following :</td>

                                                </tr>

                                            </tbody>

                                        </table>

                                    </td>

                                <td width="10%"></td>

                                </tr>

                        </tbody>

                </table>



                <table width="100%">

                        <tbody>

                            <tr>

                                <td width="15%"></td>

                                <td width="2%" valign="top">1. </td>

                                <td width="65%" valign="top" style="text-align: center !important;">

                                    A failed Verification notice will be issued if the retailer fails to keep an

                                    appointment for verifications, or when it is not possible to gain access

                                    for a scheduled verification. Missed or failed verifications will be charged

                                    at €100.00.

                                </td>

                                <td width="18%"></td>

                            </tr>

                            <tr>

                                <td width="15%"></td>

                                <td width="2%" valign="top">2. </td>

                                <td width="65%" valign="top" style="text-align: center !important;">

                                    Fuel Dispensers that are found to be out of order or out of fuel, on a

                                    scheduled verification will result in an extra call out fee of €130.00.

                                </td>

                                <td width="18%"></td>

                            </tr>

                            <tr>

                                <td width="15%"></td>

                                <td width="2%" valign="top">3. </td>

                                <td width="65%" valign="top" style="text-align: center !important;">

                                    During Verification process, large quantities of fuel may be pumped

                                    through each nozzle, please inform your staff to monitor and record this

                                    usage, and also inform them that the product pumped is returned to

                                    stock.

                                </td>

                                <td width="18%"></td>

                            </tr>

                            <tr>

                                <td width="15%"></td>

                                <td width="2%" valign="top">4. </td>

                                <td width="65%" valign="top" style="text-align: center !important;">

                                    The trader must confirm that a data plate is in place on all instruments to

                                    be verified. Failure to do so will result in a failed verification notice being

                                    issued.



                                </td>

                                <td width="18%"></td>

                            </tr>

                            <tr>

                                <td width="15%"></td>

                                <td width="2%" valign="top">5. </td>

                                <td width="65%" valign="top" style="text-align: center !important;">

                                    Cancellations with 24 hours prior notice will incur no cancellation fee. If

                                    personnel have been dispatched to site a €100 cancellation fee will

                                    apply.



                                </td>

                                <td width="18%"></td>

                            </tr>

                        </tbody>

                </table>



                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="8%"></td>

                            <td width="84%" valign="top" style="text-align: center !important;">

                                <table>

                                    <tbody>

                                        <tr>

                                            <td class="labour-td labour-heading">VAT is chargeable at the current standard rate.</td>

                                        </tr>

                                    </tbody>

                                </table>

                            </td>

                            <td width="8%"></td>

                        </tr>

                    </tbody>

                </table>



                <table width="100%">

                        <tbody>

                            <tr>

                                <td width="11%"></td>

                                <td width="3%">Signed:</td>

                                <td width="12%" valign="top" class="show_underline" style="text-align: center !important;"></td>

                                <td width="3%">Date:</td>

                                <td width="12%" valign="top" class="show_underline" style="text-align: center !important;"></td>

                                <td width="72%"></td>

                            </tr>

                            <tr>

                                <td width="8%"></td>

                                <td width="5%"></td>

                                <td width="30%" valign="top" style="text-align: center !important;">(On behalf of the Retailer)</td>

                                <td width="3%"></td>

                                <td width="10%" valign="top" style="text-align: center !important;"></td>

                                <td width="54%"></td>

                            </tr>

                            <tr>

                                <td width="8%"></td>

                                <td width="5%"></td>

                                <td width="30%" valign="top" style="text-align: center !important;">Signing indicates acceptance of the above.</td>

                                <td width="3%"></td>

                                <td width="10%" valign="top" style="text-align: center !important;"></td>

                                <td width="54%"></td>

                            </tr>

                        </tbody>

                </table>

            @endif





            @if($quotation->sign_off==1)



                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="11%"></td>

                            <td width="78%">

                                <ul>

                                    <li>Preliminaries, to include for all insurances</li>

                                    <li>Health and safety file, small tools,</li>

                                    <li>Plant and equipment as necessary</li>

                                    <li>All work will be undertaken in accordance with the requirements of SI

                                    No 630 of 2019 Dangerous Substances (Retail Stores) Regulations 2019

                                    and SI No 631 of 2019 Dangerous Substances (Commercial Supply

                                    Stores) Regulations 2019.</li>

                                </ul>

                            </td>

                            <td width="11%"></td>

                        </tr>

                    </tbody>

                </table>

                

                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="11%"></td>

                            <td width="3%">Signed:</td>

                            <td width="12%" valign="top" class="show_underline" style="text-align: center !important;"></td>

                            <td width="3%">Date:</td>

                            <td width="12%" valign="top" class="show_underline" style="text-align: center !important;"></td>

                            <td width="72%"></td>

                        </tr>

                    </tbody>

                </table>



                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="10%"></td>

                            <td width="80%" valign="top">&nbsp;Signing indicates acceptance of the above.</td>

                            <td width="8%" valign="top" style="text-align: center !important;"></td>

                        </tr>

                    </tbody>

                </table>



            @endif



            @if($quotation->sign_off==2)

                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="11%"></td>

                            <td width="78%">

                                <ul>

                                    <li>In accordance with the safety health and welfare at work regulation 2013

                                        S.I.No. 291 of 2013 a PSDP(Project Supervisor Design Process) and a

                                    PSCS(Project Supervisor Construction Stage) has to be appointed for this job.</li>

                                    <li> A ll work will be undertaken in accordance with the requirements of SI No 630

                                    of 2019 Dangerous Substances (Retail Stores) Regulations 2019 and SI No

                                    631 of 2019 Dangerous Substances (Commercial Supply Stores) Regulations

                                    2019</li>

                                </ul>

                            </td>

                            <td width="11%"></td>

                        </tr>

                    </tbody>

                </table>

                

                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="11%"></td>

                            <td width="3%">Signed:</td>

                            <td width="12%" valign="top" class="show_underline" style="text-align: center !important;"></td>

                            <td width="3%">Date:</td>

                            <td width="12%" valign="top" class="show_underline" style="text-align: center !important;"></td>

                            <td width="72%"></td>

                        </tr>

                    </tbody>

                </table>



                <table width="100%">

                    <tbody>

                        <tr>

                            <td width="8%"></td>

                            <td width="84%" valign="top">&nbsp;Signing indicates acceptance of the above.</td>

                            <td width="8%" valign="top" style="text-align: center !important;"></td>

                        </tr>

                    </tbody>

                </table>



            @endif

        </main>

    </body>

</html>

