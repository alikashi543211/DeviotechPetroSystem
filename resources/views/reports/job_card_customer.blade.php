<!DOCTYPE html>
<html>
<head>
    <link href="{{asset('admin_theme')}}/css/report.css" rel="stylesheet" />
    <link href="{{asset('admin_theme')}}/css/job_card.css" rel="stylesheet" />
    
    <title>Job Card Customer</title>
    <style>
        table
        {
            padding:0px;
            
        }
        .column_title,
        .column_input
        {
            height:50px !important;
        }
        .material_heading_table .column_input
        {
            height:20px !important;
        }
        .material_data_table .column_input
        {
            height:20px !important;
        }
        .table_heading_col
        {
            border:2px solid black;
        }
        .column_title,
        .table_heading_col
        {
            background-color: #f2f2f2 !important;
            color: black !important;
        }
        .signature_table
        {
            margin-bottom:340px !important;
        }
        .page_job_card_no
        {
            margin-bottom: 10px;
        }
        .mt_15
        {
            margin-top:15px !important;
        }
        .remove_border
        {
            border:0px !important;
        }
        .equipment_heading
        {
            height: 30px;
            margin-bottom: 15px;
        }
        .column_gap
        {
            border: 0px !important;
        }
        .material_table td
        {
            border:1px solid black;
        }
        .material_table
        {
            /*font-size: 13px !important;*/
        }
        .materials_equipments_table
        {
            background-color: white !important;
        }
        .material_data_table td
        {
            text-align: center;
            background: white !important;
            padding: 4px !important;
        }
        .column_title,
        .column_input,
        .table_heading_col
        {
            height: 32px !important;
            border: 1px solid !important;
        }

        .table_heading_col
        {
            background: #f2f2f2 !important;
        }
        .auto_height
        {
            height: auto !important;
        }
        .table_heading
        {
            font-weight: bold;
        }
        .material_data_table th {
            text-align: center;
            background: #f2f2f2 !important;
        }
        .signature-image
        {
            width : 70%;
            height : 30px;
        }
        table
        {
            border: 0px !important;
        }
        body
        {
            font-size: 12px !important;
        }

    </style>
</head>
<body>
    @include('reports.includes.job_card_header')
    <!-- Logo and Customer -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%">
                <img src="{{ asset('admin_theme') }}/nsai_smallest.png" alt="" width="101" height="59">
                <img src="{{ asset('admin_theme') }}/quality_nsai_large.jpg" alt="" width="50" height="69">
            </td>
            <td width="2%">
                
            </td>
            <td width="68%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Customer Name</td>
                        <td width="70%" class="column_input">{{ $eng_form->job->customer->name }}</td>
                    </tr>
                </table>

                <table width="100%" class="customer_col_table_2">
                    <tr>
                        <td width="30%" class="column_title">Customer Address</td>
                        <td width="70%" class="column_input">
                            {{ $eng_form->job->customer->address1 }} {{ $eng_form->job->customer->address2 }} {{ $eng_form->job->customer->address3 }} {{ $eng_form->job->customer->address4 }}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <!-- Order , Job , Job Type Table -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Date</td>
                        <td width="70%" class="column_input">{{ $eng_form->created_at->toFormattedDateString() }}</td>
                    </tr>
                </table>
            </td>
            <td width="3%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job No</td>
                        <td width="70%" class="column_input">{{ $job->id }}</td>
                    </tr>
                </table>
            </td>
            <td width="4%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Type</td>
                        <td width="70%" class="column_input">{{ $job->jobtype->name }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <!-- Order , Job , Job Type Table -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Order no</td>
                        <td width="70%" class="column_input">{{ $eng_form->order_no }}</td>
                    </tr>
                </table>
            </td>
            <td width="3%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Sheet No</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->job_sheet ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="4%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Site contact</td>
                        <td width="70%" class="column_input">{{ $eng_form->contact_site }}</td>
                    </tr>
                </table>
            </td>

        </tr>
    </table>

    <!-- Job Details table-->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="100%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Details</td>
                        <td width="70%" class="column_input">{{ $job->detail }}</td>
                    </tr>
                </table>
            </td> 
        </tr>
    </table>

    <!-- Work Carried out table -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="100%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Works Carried out</td>
                        <td width="70%" class="column_input">{{ $eng_form->work_carried_out }}</td>
                    </tr>
                </table>
            </td> 
        </tr>
    </table>
    
    <!-- Job Comment Table -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="100%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Comment</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_completed_comment ??  $eng_form->not_completed_comment ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <!-- Trave, Site , Engineer Table -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Travel From</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->travel_from ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="3%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Travel To</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->travel_to ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="4%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Travel Time</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->travel_time ?? '' }}</td>
                    </tr>
                </table>
            </td>

        </tr>
    </table>
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Site arrival time</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->start ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="3%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Site depart time</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->end ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="4%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Site time</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_labour->hours ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Engineer</td>
                        <td width="70%" class="column_input">{{ $eng_form->engineer->name }}</td>
                    </tr>
                </table>
            </td>
            <td width="3%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Van No</td>
                        <td width="70%" class="column_input">{{ $eng_form->van_no }}</td>
                    </tr>
                </table>
            </td>
            <td width="4%">
                
            </td>
            <td width="30%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Completed</td>
                        <td width="70%" class="column_input">{{ $eng_form->completed ? 'Yes' : 'No' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <!-- Customer Signature Table -->
    <table width="100%" class="logo_customer_table signature_table">
        <tr>
            <td width="50%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Customer Name</td>
                        <td width="70%" class="column_input">{{ $eng_form->job->customer->name }}</td>
                    </tr>
                </table>
            </td>
            <td width="50%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Customer Signature</td>
                        <td width="70%" class="column_input"><img src="{{ $eng_sign }}" class="signature-image" alt="Not Available"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table width="100%" class="logo_customer_table first_heading_page_2">
        <tr>
            <td width="30%" class="customer_col">
                
            </td>
            <td width="34%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job No</td>
                        <td width="70%" class="column_input">{{ $job->id ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="34%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Card No</td>
                        <td width="70%" class="column_input">{{ $eng_form->id }}</td>
                    </tr>
                </table>
            </td>

        </tr>
    </table>
    <table width="100%" class="customer_col_table_1 mt_15 equipment_heading materials_equipments_table">
        <tr>
            <td width="100%" class="table_heading_col remove_border auto_height">
                <span class="table_heading">Equipment Details</span>
            </td>
        </tr>
    </table>
    <table width="100%" class="customer_col_table_1 mt_zero material_table material_heading_table">
        <tr>
            <td width="47%" class="table_heading_col">

                <table width="100%" class="customer_col_table_1 mt_zero material_table material_data_table">
                    <tr>
                        <th class="table_heading_col">
                            <span class="table_heading">Make / Model</span>
                        </th>
                        <th class="table_heading_col">
                            <span class="table_heading">Equipment No</span>
                        </th>
                        <th class="table_heading_col">
                            <span class="table_heading">Serial no</span>
                        </th>
                        <th class="table_heading_col">
                            <span class="table_heading">W & M seals broken</span>
                        </th> 
                    </tr>
                    @foreach($equipments_first as $item)
                        <tr>
                            <td class="column_input">
                                <span>{{ $item->make ?? '' }}</span>
                            </td>
                            <td class="column_input">
                                <span>{{ $item->equipment ?? '' }}</span>
                            </td>
                            <td class="column_input">
                                <span>{{ $item->serial_no ?? '' }}</span>
                            </td>
                            <td class="column_input">
                                <span>{{ $item->w_m_seals==1 ? 'Yes' : 'No' }}</span>
                            </td>
                        </tr>
                    @endforeach
                    @php
                        $equipment_lenght = 8;
                        if(count($equipments_first) != 0 && count($equipments_first) <= $equipment_lenght):
                            $equipment_lenght = $equipment_lenght - count($equipments_first);
                        endif
                    @endphp
                    @for($i=0; $i<$equipment_lenght; $i++)
                        <tr>
                            <td class="column_input">
                            </td>
                            <td class="column_input">
                            </td>
                            <td class="column_input">
                            </td>
                            <td class="column_input">
                            </td>
                        </tr>
                    @endfor
                </table>
            </td>
            <td width="6%" class="column_gap"></td>
            <td width="47%" class="table_heading_col">

                <table width="100%" class="customer_col_table_1 mt_zero material_table material_data_table">
                    <tr>
                        <th class="table_heading_col">
                            <span class="table_heading">Make / Model</span>
                        </th>
                        <th class="table_heading_col">
                            <span class="table_heading">Equipment No</span>
                        </th>
                        <th class="table_heading_col">
                            <span class="table_heading">Serial no</span>
                        </th>
                        <th class="table_heading_col">
                            <span class="table_heading">W & M seals broken</span>
                        </th> 
                    </tr>
                    @foreach($equipments_second as $item)
                        <tr>
                            <td width="30%" class="column_input">
                                <span>{{ $item->make ?? '' }}</span>
                            </td>
                            <td width="30%" class="column_input">
                                <span>{{ $item->equipment ?? '' }}</span>
                            </td>
                            <td width="40%" class="column_input">
                                <span>{{ $item->serial_no ?? '' }}</span>
                            </td>
                            <td width="40%" class="column_input">
                                <span>{{ $item->w_m_seals==1 ? 'Yes' : 'No' }}</span>
                            </td>
                        </tr>
                    @endforeach
                    @php
                        $equipment_lenght = 8;
                        if(count($equipments_second) != 0 && count($equipments_second) <= $equipment_lenght):
                            $equipment_lenght = $equipment_lenght - count($equipments_second);
                        endif
                    @endphp
                    @for($i=0; $i<$equipment_lenght; $i++)
                        <tr>
                            <td class="column_input">
                            </td>
                            <td class="column_input">
                            </td>
                            <td class="column_input">
                            </td>
                            <td class="column_input">
                            </td>
                        </tr>
                    @endfor
                </table>
            </td>
        </tr>
    </table>

    <!-- New Design Materials Used -->
    <table width="100%" class="customer_col_table_1 mt_15 materials_equipments_table equipment_heading">
        <tr>
            <td width="100%" class="table_heading_col remove_border auto_height">
                <span class="table_heading">Materials Used</span>
            </td>
        </tr>
    </table>
    <table width="100%" class="customer_col_table_1 mt_zero material_table material_heading_table">
        <tr>
            <td width="47%" class="table_heading_col">
                <table width="100%" class="customer_col_table_1 mt_zero material_table material_data_table">
                    <tr>
                        <th width="80%" class="table_heading_col">
                            <span class="table_heading">Material</span>
                        </td>
                        <th width="20%" class="table_heading_col">
                            <span class="table_heading">Qty</span>
                        </td>
                    </tr>
                    @foreach($materials_first as $item)
                        <tr>
                            <td width="80%" class="column_input">
                                <span class="">{{ $item->material_used ?? '' }}</span>
                            </td>
                            <td width="20%" class="column_input">
                                <span class="">{{ $item->qty ?? '' }}</span>
                            </td>
                        </tr>
                    @endforeach
                    @php
                        $materials_lenght=12;
                        if(count($materials_first)!=0 && count($materials_first)<=$materials_lenght):
                            $materials_lenght=$materials_lenght-count($materials_first);
                        endif;
                    @endphp
                    @for($i=0; $i<$materials_lenght; $i++)
                        <tr>
                            <td width="80%" class="column_input">
                                <span class=""></span>
                            </td>
                            <td width="20%" class="column_input">
                                <span class=""></span>
                            </td>
                        </tr>
                    @endfor
                </table>
            </td>
            <td width="6%" class="column_gap"></td>
            <td width="47%" class="table_heading_col">
                <table width="100%" class="customer_col_table_1 mt_zero material_table material_data_table">
                    <tr>
                        <th width="80%" class="table_heading_col">
                            <span class="table_heading">Material</span>
                        </td>
                        <th width="20%" class="table_heading_col">
                            <span class="table_heading">Qty</span>
                        </td>
                    </tr>
                    @foreach($materials_second as $item)
                        <tr>
                            <td width="80%" class="column_input">
                                <span class="">{{ $item->material_used ?? '' }}</span>
                            </td>
                            <td width="20%" class="column_input">
                                <span class="">{{ $item->qty ?? '' }}</span>
                            </td>
                        </tr>
                    @endforeach
                    @php
                        $materials_lenght=12;
                        if(count($materials_second)!=0 && count($materials_second)<=$materials_lenght):
                            $materials_lenght=$materials_lenght-count($materials_second);
                        endif;
                    @endphp
                    @for($i=0; $i<$materials_lenght; $i++)
                        <tr>
                            <td width="80%" class="column_input">
                                <span class=""></span>
                            </td>
                            <td width="20%" class="column_input">
                                <span class=""></span>
                            </td>
                        </tr>
                    @endfor
                </table>
            </td>
        </tr>
    </table>
    
</body>
</html>