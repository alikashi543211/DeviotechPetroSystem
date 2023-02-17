<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />
    <title>Job Certificate</title>

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
        td{
            font-size:9px;
        }
        th{
            font-size:10px;
            font-weight: bold;
        }
        .gray {
            background-color: lightgray
        }
        body{
            background-image:url('{{ asset("images/certificate.png") }}');
            background-repeat: no-repeat;
            background-size: 82%;
            background-attachment: fixed;
            background-position: center;


        }
        tr.border_bottom th {
              border-bottom: 1px solid black;
              text-align:center;
        }
        .pump_data td{
            text-align:center;
        }
        .certifieds_table{
            border-collapse: collapse;
        }
    </style>


</head>
<body>
    <main>
    <table width="100%">
        <tbody>
            <tr>
                <td width="15%"></td>
                <td width="30%" align="left">
                    <p>Company Reg No. 336660</p>
                </td>
                <td width="31%"></td>
                <td width="18%" align="right">
                    <p>Certificate No. {{$certificate->id ?? ''}}</p>
                </td>
                <td width="12%"></td>
            </tr>
            
        </tbody>
    </table>

      <table width="100%">
        <tbody>
            <tr>
                <td style="text-align: center !important;"><h1 style="font-family:Cooper Black !important;font-size:28px;margin-right:4px;margin-top:38px !important;padding:6px;box-sizing:border-box !important;">CERTIFICATE OF VERIFICATION</h1></td>
            </tr>
        </tbody>
    </table> 

    <table width="100%">
        <tbody>
            <tr>
                <td style="text-align: center !important;font-size:15px;"><h3 style="font-family:Cooper Black !important;"><br>This is to certify that the liquid fuel dispensers in use at this filling station have been independently<br> verified on {{dateFormat($certificate->verification_date)}} in accordance with the Metrology Acts 1996-2008.</h3></td>
            </tr>
        </tbody>
    </table>
    
 <br>
    <table width="100%">   
        <tr>
            <td width="11%"></td>
            <td width="39%">
                <table width="100%">
                    <tbody>
                        <tr>
                            <td style="vertical-align: top;" width="30%">
                            <h2><span style="font-size:15px !important;">Awarded To:</span></h2>
                        </td>
                        <td width="70%">
                            <h2 style="font-size:15px !important;">{{strtoupper($certificate->name)}}
                                <br>
                                {{$job->customer->address1}}  <br>
                                {{$job->customer->address2}}  <br>
                                {{$job->customer->address3}}  <br>
                            </h2>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
            <td width="40%">
                <table class="certifieds_table">    
                    <thead>
                    <tr class="border_bottom">
                        <th>Pump No</th>
                        <th>Nozzles</th>
                        <th>Make</th>
                        <th>Serial No</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pump_certifieds as $item)
                    <tr class="pump_data">
                        <td>{{$item->pump_no}}</td>
                        <td>{{$item->nozzles}}</td>
                        <td>{{$item->make}}</td>
                        <td>{{$item->serial_no}}</td>
                    </tr>
                    @endforeach
                </tbody>
                </table>
            </td>
            <td width="10%"></td>
        </tr>
    </table>
    </main>
</body>
</html>
