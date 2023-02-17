@extends('emails.layout')
@section('css')
  <style type="text/css">
    *
    {
        font-family: Verdana, Arial, sans-serif;
        font-size:12px !important;
    }
    table
    {
        width: 100% !important;
        font-size: x-small;
        text-align: left !important;
    }
    tfoot tr td
    {
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
        border:1px solid black;

    }
    .verification_items_table
    {
        border-collapse: collapse;
    }
    .labour-data-td{
        border-bottom: 2px solid black;
    }
    .vat_table 
    {
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
  </style>
@endsection
@section('content')
<div>
  <h1 align="center" style="color: #06090f;font-size:24px !important;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Verification Quotation </h1>
</div>

<main>
  <table width="100%">
      <tbody>
          <tr>
              <td width="5%"></td>
              <td width="98%" style="text-align: center !important;">
                  <table>
                      <tbody>
                          <tr>
                              <td class="theading">
                                  <p> {{strtoupper($customer->name)}} <br>
                                      {{strtoupper($customer->address1)}} <br>
                                      {{strtoupper($customer->address2)}} <br>
                                      {{strtoupper($customer->address3)}} <br>
                                      {{strtoupper($customer->address4)}} <br>
                                  </p>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </td>
              <td width="5%"></td>
          </tr>
      </tbody>
  </table>

  <table width="100%">
          <tbody>
              <tr>
                  <td width="8%"></td>
                  <td width="50%" class="labour-heading" valign="top">{{$quotation_type->type}}</td>
                   <td width="13%" class="quotation_no_td" valign="top">Quotation No</td>
                  <td width="5%" valign="top">{{$verify_quotation->id}}</td>
                  <td width="22%"></td>
              </tr>
              <tr>
                  <td width="8%"></td>
                  <td width="50%" class="labour-heading" valign="top"></td>
                   <td width="10%" class="quotation_no_td" valign="top">Date</td>
                  <td width="15%" valign="top">{{dateFormat($verify_quotation->created_at)}}</td>
                  <td width="15%"></td>
              </tr>
          </tbody>
  </table>

  <table width="100%" class="labour-data-table">
    <tbody>
      <tr>
        <td width="5%"></td>
        <td width="92%" class="">
          <table class="labour-data-inner-table verification_items_table">
            <thead>
              <tr class="border_bottom">
                  <th class="labour-data-td">Pump</th>
                  <th class="labour-data-td">Type</th>
                  <th class="labour-data-td">Details</th>
                  <th class="labour-data-td">Cost</th>
              </tr>
            </thead>
            <tbody>
              @foreach($verify_quotation_items as $item)
                <tr>
                  <td>{{ $item->number }}</td>
                  <td>{{ $item->type }}</td>
                  <td>1 Nozzle @ €{{$item->cost_1st_nozzle}}.00 @if($item->nozzles-1 > 0) and {{$item->nozzles-1}} Nozzle(s) @
                    €{{$item->cost_other_nozzles}}.00 @endif </td>
                  <td>€{{ $item->cost_all_nozzles }}</td>
                </tr>
              @endforeach
              <tr class="pump_data">
                <td></td>
                <td style="text-align:right;"></td>
                <td colspan="2" style="text-align:right;"><b >Total:  €{{$total_amount}}.00</b></td>
              </tr>
            </tbody>
          </table>
        </td>
        <td width="3%"></td>
      </tr>
    </tbody>
  </table>

  <table width="100%" class="labour-data-table">
    <tbody>
      <tr>
        <td width="5%"></td>
        <td width="45%" class="">
            <table class="labour-data-inner-table">
              <thead>
                <tr class="border_bottom">
                    <td>Cost</td>
                    <td>€{{$total_amount}}.00</td>
                </tr>
                <tr class="border_bottom">
                    <td>LESS Discount at {{$verify_quotation->discount}}%</td>
                    <td>€{{$discount_amount}}.00</td>
                </tr>
               <tr class="border_bottom">
                    <td>Travel Cost</td>
                    <td>€{{$verify_quotation->travel_total_cost}}.00</td>
                </tr>
                <tr class="border_bottom">
                    <td>Total</td>
                    <td>€{{$net_amount}}.00</td>
                </tr>
              </thead>
            </table>
        </td>
        <td width="48%" class="">
        <td width="3%"></td>
      </tr>
    </tbody>
  </table>


  @if($verify_quotation->sign_off==3)
    
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
          <td width="65%" valign="top" style="text-align: justify !important;">
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
          <td width="65%" valign="top" style="text-align: justify !important;">
              Fuel Dispensers that are found to be out of order or out of fuel, on a
              scheduled verification will result in an extra call out fee of €130.00.
          </td>
          <td width="18%"></td>
        </tr>
        <tr>
          <td width="15%"></td>
          <td width="2%" valign="top">3. </td>
          <td width="65%" valign="top" style="text-align: justify !important;">
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
          <td width="65%" valign="top" style="text-align: justify !important;">
            The trader must confirm that a data plate is in place on all instruments to
            be verified. Failure to do so will result in a failed verification notice being
            issued.
          </td>
          <td width="18%"></td>
        </tr>
        <tr>
          <td width="15%"></td>
          <td width="2%" valign="top">5. </td>
          <td width="65%" valign="top" style="text-align: justify !important;">
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
          <td width="84%" valign="top" style="text-align: justify !important;">
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
          <td width="12%" valign="top" class="show_underline" style="text-align: justify !important;"></td>
          <td width="3%">Date:</td>
          <td width="12%" valign="top" class="show_underline" style="text-align: justify !important;"></td>
          <td width="72%"></td>
        </tr>
        <tr>
          <td width="8%"></td>
          <td width="5%"></td>
          <td width="30%" valign="top" style="text-align: justify !important;">(On behalf of the Retailer)</td>
          <td width="3%"></td>
          <td width="10%" valign="top" style="text-align: justify !important;"></td>
          <td width="54%"></td>
        </tr>
        <tr>
          <td width="8%"></td>
          <td width="5%"></td>
          <td width="30%" valign="top" style="text-align: justify !important;">Signing indicates acceptance of the above.</td>
          <td width="3%"></td>
          <td width="10%" valign="top" style="text-align: justify !important;"></td>
          <td width="54%"></td>
        </tr>
      </tbody>
    </table>

  @endif


  @if($verify_quotation->sign_off==1)
    
    <table width="100%">
      <tbody>
        <tr>
          <td width="11%"></td>
          <td width="78%">
            <ul>
                <li>P reliminaries, to include for all insurances</li>
                <li>H ealth and safety file, small tools,</li>
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
          <td width="12%" valign="top" class="show_underline" style="text-align: justify !important;"></td>
          <td width="3%">Date:</td>
          <td width="12%" valign="top" class="show_underline" style="text-align: justify !important;"></td>
          <td width="72%"></td>
        </tr>
      </tbody>
    </table>

    <table width="100%">
      <tbody>
        <tr>
          <td width="8%"></td>
          <td width="84%" valign="top">Signing indicates acceptance of the above.</td>
          <td width="8%" valign="top" style="text-align: justify !important;"></td>
        </tr>
      </tbody>
    </table>

  @endif

  @if($verify_quotation->sign_off==2)

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
            <td width="12%" valign="top" class="show_underline" style="text-align: justify !important;"></td>
            <td width="3%">Date:</td>
            <td width="12%" valign="top" class="show_underline" style="text-align: justify !important;"></td>
            <td width="72%"></td>
          </tr>
        </tbody>
    </table>

    <table width="100%">
      <tbody>
        <tr>
            <td width="8%"></td>
            <td width="84%" valign="top">Signing indicates acceptance of the above.</td>
            <td width="8%" valign="top" style="text-align: justify !important;"></td>
        </tr>
      </tbody>
    </table>

  @endif

  <table width="100%" class="vat_table">
    <tbody>
      <tr>
        <td width="25%"></td>
        <td width="50%" class="vat_column" class="middle_box" style="text-align: justify !important;">
          <table class="vat_table">
            <tbody>
                <!-- <tr>
                    <td align="right">Availability-</td>
                    <td class="four-crud" align="left">Availability</td>
                </tr>
                <tr>
                    <td align="right">Terms of Payment-</td>
                    <td class="four-crud" align="left">Terms of Payment</td>
                </tr> -->
                <tr>
                    <td align="right">VAT-</td>
                    <td class="four-crud" align="left">{{$verify_quotation->vat}}</td>
                </tr>
               <!--  <tr>
                    <td align="right">Warranty-</td>
                    <td class="four-crud" align="left">Warranty</td>
                </tr> -->
            </tbody>
          </table>
        <td width="25%"></td>
      </tr>
    </tbody>
  </table>

  <table width="100%" class="signature_table">
    <tbody>
        <tr>
            <td width="8%"></td>
            <td valign="top" width="2%" class="middle_box">
              Regards,
              </td>
              <td valign="top" width="15%" class="middle_box">
              <span class="show_underline_span">{{$verify_quotation->signatory->signatory}}</span><br>
              <span class="signature_title">{{$verify_quotation->signatory->title}}</span>
              </td>
            <td width="75%"></td>
        </tr>
    </tbody>
  </table>
</main>
@endsection
