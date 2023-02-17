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
        .text_center
        {
            text-align: center !important;
        }
        .font_weight_bold
        {
            font-weight: bold !important;
        }
        .white_bg
        {
            background: white !important;
        }
        table
        {
            border: 0px !important;
        }
        body
        {
            font-size: 12px !important;
            margin-top: 0px !important;
        }

    </style>
</head>
<body>
    <table width="100%">
        <h2 style="font-size:30px !important;text-align:center;">Job Card Summary</h2>
        <br><br><br><br>
    </table>
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="column_title text_center">Customer Name</td>
            <td width="70%" class="column_input text_center">{{ $eng_form->job->customer->name }}</td> 
        </tr>
        
    </table>

    <br>
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="30%" class="column_title text_center">Customer Address</td>
            <td width="70%" class="column_input text_center">
                {{ $eng_form->job->customer->address1 }} 
                {{ $eng_form->job->customer->address2 }} 
                {{ $eng_form->job->customer->address3 }}
                {{ $eng_form->job->customer->address4 }}
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
                        <td width="70%" class="column_input">{{ $eng_form->created_at->format('d/m/y') }}</td>
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
                        <td width="30%" class="column_title">Job Completed</td>
                        <td width="70%" class="column_input">{{ $eng_form->completed ? 'Yes' : 'No' }}</td>
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

        <!-- Order , Job , Job Type Table -->
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
                        <td width="30%" class="column_title">Van Reg</td>
                        <td width="70%" class="column_input">{{ $eng_form->van_no ?? '' }}</td>
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
    
    <!-- Job Comment Table -->
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="100%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Job Comment ( Engineer )</td>
                        <td width="70%" class="column_input">{{ $eng_form->job_completed_comment ??  $eng_form->not_completed_comment ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="100%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="30%" class="column_title">Office Comment</td>
                        <td width="70%" class="column_input">{{ $eng_form->comment ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <table width="100%" class="customer_col_table_1 mt_15 equipment_heading materials_equipments_table">
        <tr>
            <td width="100%" class="table_heading_col remove_border auto_height">
                <span class="table_heading">Summary</span>
            </td>
        </tr>
    </table>

    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Category</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Hours</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Travel cost / hr</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="25%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Cost ex VAT</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Travel</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">{{ $travel_hours ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">€{{ $cost_per_hour_travel ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="25%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">€{{ $total_cost_travel ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Site Labour</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">{{ $total_hours ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">€{{ $cost_per_hour_site ?? '' }}</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="25%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">€{{ nthDecimal($total_cost_site, 1) }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Materials</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="">
                
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="">
                
            </td>
            <td width="2%">
                
            </td>
            <td width="25%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">€{{ nthDecimal($total_material_cost, 1) ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table width="100%" class="logo_customer_table">
        <tr>
            <td width="23%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title font_weight_bold">Overall Cost Ex VAT</td>
                    </tr>
                </table>
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="">
                
            </td>
            <td width="2%">
                
            </td>
            <td width="23%" class="">
                
            </td>
            <td width="2%">
                
            </td>
            <td width="25%" class="customer_col">
                <table width="100%" class="customer_col_table_1">
                    <tr>
                        <td width="100%" class="column_title white_bg">€{{ nthDecimal($overall_ex_cost, 1) ?? '' }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</body>
</html>