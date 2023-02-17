<?php

namespace App\Http\Controllers\Admin;



use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\StorePurchaseOrder;

use App\Tool;

use App\IssueTool;

use DB;

use App\Stock_receipt;

use Carbon\Carbon;

use App\Supplier;

use App\Stock_item;

use App\Job;

use PDF;

use App\Category;

use App\Customer;

use App\Certificate;

use App\JobLabour;

use App\JobPurchase;

use App\JobStock;

use App\JobEmail;

use App\Quotation;

use App\QuotationItem;

use App\Signatory;

use App\VerifQuotation;

use App\VerifQuotationItem;

use App\QuotationType;

use Maatwebsite\Excel\Facades\Excel;

use App\Exports\QuotationDetailExport;

use App\Exports\JobDetailsLabour;

use App\Exports\JobDetailsPurchase;

use App\Exports\JobDetailStocksFromStore;

use App\Exports\JobExport;

use App\Exports\VerifQuotationExport;

use App\Warranty;

use Mail;

use App\CcEmail;

use App\EngineerForm;

use App\EngineerEquipment;

use App\User;

use App\Contact;

class ReportsController extends Controller

{

    public function jobs()

    {

        $categories = Category::all();

        return view('Admin.Reports.jobs', get_defined_vars());

    }



    public function purchase_order($id,Request $request)

    {

        $data = StorePurchaseOrder::find($id);

        $pdf = PDF::loadView('reports.purchase_order', get_defined_vars());

        if(isset($request->email))

        {
            $cc_email=getCcEmail();
            $supplier_email=$data->supplier->email;

            if(empty($supplier_email))
            {
                return back()->with("error","Email does not exist");
            }

            Mail::send('emails.store_po_email',['data' => $data], function ($send) use($supplier_email,$pdf,$data,$cc_email)

            {

                $send->to($supplier_email)->subject('Purchase Order');

                $send->cc($cc_email)->subject('Purchase Order');

                $send->attachData($pdf->output(), "Purchase-Order-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf");

            });

            return back()->with("message","Email sent successfully");

        }else if(isset($request->download))

        {

            return $pdf->download("Purchase-Order-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf");

        }else

        {

            return $pdf->stream("Purchase-Order-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }

    }



    public function tools_list()

    {

        $data = Tool::all();

        $pdf = PDF::loadView('reports.tools_list', get_defined_vars());

        return $pdf->stream("Tools-list-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        // return $pdf->download('tools_list.pdf');

    }



    public function tools_issued_list($id)

    {

        $data = IssueTool::where('job_id', '=', $id)->where('status', '=', 'Issued')

            ->get();

        $pdf = PDF::loadView('reports.issue_tools_list', get_defined_vars());

        return $pdf->stream("Issued-tools-list-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        // return $pdf->download('issue_tools_list.pdf');

    }



    public function tools_returned_list($id)

    {

        $data = IssueTool::where('job_id', '=', $id)->where('status', '=', 'Returned')

            ->get();

        $pdf = PDF::loadView('reports.return_tools_list', get_defined_vars());

        return $pdf->stream("Returned-tools-list-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        // return $pdf->download('return_tools_list.pdf');

    }



    public function all_jobs(Request $request)

    {

        $jobs = Job::where('id', '>=', 1);

        if ($request->job_start_date && $request->job_end_date)

        {

            $from = date($request->job_start_date);

            $to = date($request->job_end_date);

            $jobs = $jobs->whereBetween('date', [$from, $to]);



        }

        if ($request->category_id)

        {

            $jobs = $jobs->whereHas('category', function ($query) use ($request)

            {

                return $query->where('id', '=', $request->category_id);

            });



        }

        if ($request->job_completion_date)

        {

            $date = date($request->job_completion_date);



            $jobs = $jobs->where('datecomplete', $request->job_completion_date);



        }



        if ($request->warranty)

        {



            $jobs = $jobs->where('warranty', 1);



        }

        if ($request->status_jobs)

        {



            $jobs = $jobs->where('status', $request->status_jobs);



        }

        if (empty($request->input('job_start_date')) && empty($request->input('job_completion_date')) && empty($request->input('job_end_date')) && empty($request->input('warranty')) && empty($request->input('status_jobs')) && empty($request->input('category')))

        {

            $jobs = job::all();



        }

        else

        {

            $jobs = $jobs->get();



        }



        $customers = Customer::all();

        // return view('reports.all_jobs', get_defined_vars());

        $pdf = PDF::loadView('reports.all_jobs', get_defined_vars());

        if(isset($request->download))

        {

            return $pdf->download("All-Jobs-".now()->format('d-m-Y-H:i:s').".pdf");

        }else

        {

            return $pdf->stream("All-Jobs-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }

        // return $pdf->download('all_jobs.pdf');

    }

    public function stocks()

    {

        $suppliers = Supplier::all();

        return view('Admin.Reports.stocks', get_defined_vars());

    }

    public function filter_stock(Request $request)

    {



        $stock_purchase = Stock_receipt::where('id', '>=', 1);

        if ($request->from_date && $request->to_date)

        {

            $date1 = strtr($request->to_date, '/', '-');

            $date_to = date('Y-m-d', strtotime($date1));



            $date2 = strtr($request->from_date, '/', '-');

            $date_from =  date('Y-m-d', strtotime($date2));

            $stock_purchase = $stock_purchase->whereDate('created_at', '>=', $date_from)->whereDate('created_at', '<=', $date_to);





        }

        if (!empty($request->input('supplier')))

        {

            $stock_purchase = $stock_purchase->whereHas('receipt_supplier', function ($query) use ($request)

            {

                return $query->where('id', '=', $request->supplier);

            });



        }



        if (empty($request->input('from_date')) && empty($request->input('to_date')) && empty($request->input('supplier')))

        {

            $stock_purchase = Stock_receipt::all();



        }

        else

        {

            $stock_purchase = $stock_purchase->get();



        }



        $suppliers = Supplier::all();

        // return view('reports.filtered_stocks', get_defined_vars());

        $pdf = PDF::loadView('reports.filtered_stocks', get_defined_vars());

        return $pdf->stream("Stock-Purchase-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        // return $pdf->download('Stock_Purches.pdf');



    }

    public function stocks_movement()

    {

        $stock_codes = Stock_item::all();

        return view('Admin.Reports.stock_movements', get_defined_vars());

    }

    public function filter_stock_movement(Request $request)

    {

        $stock_items = Stock_item::where('id', '>=', 1);

        if ($request->from_date && $request->to_date)

        {

            $stock_items = $stock_items->whereHas('job_stocks', function ($query) use ($request)

            {



            $date1 = strtr($request->to_date, '/', '-');

            $date_to = date('Y-m-d', strtotime($date1));



            $date2 = strtr($request->from_date, '/', '-');

            $date_from =  date('Y-m-d', strtotime($date2));

            return $query->whereDate('date', '>=', $date_from)->whereDate('date', '<=', $date_to);



            });

            // dd($stock_items->get());

        }

        if ($request->stock_code)

        {



            $stock_items = $stock_items->whereHas('job_stocks', function ($query) use ($request)

            {

                return $query->where('stock_item_id', '=', $request->stock_code);

            });



        }

        if (empty($request->input('from_date')) && empty($request->input('to_date')) && empty($request->input('stock_code')))

        {

            $stock_items = Stock_item::where('id', '>=', 1);



        }

        else

        {

            $stock_items = $stock_items->with(['job_stocks', 'stock_receipt'])

                ->get();



        }



        // return view('reports.filtered_stocks_movement', get_defined_vars());

        $pdf = PDF::loadView('reports.filtered_stocks_movement', get_defined_vars());

        $pdf->setPaper('A4', 'landscape');

        return $pdf->stream("Stock-Movement-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        // return $pdf->download('Stock_Movement.pdf');



    }



    public function stock_balance(Request $request)

    {

        $stock_items = Stock_item::all();
        // dd($stock_items);

        // return view('reports.stock_balance', get_defined_vars());
        // dd($stock_items);
        $pdf = PDF::loadView('reports.stock_balance', get_defined_vars());

        if(isset($request->download))

        {

            return $pdf->download("Stock-Balance-".now()->format('d-m-Y-H:i:s').".pdf");

        }else
        {

            return $pdf->stream("Stock-Balance-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }
    }



    public function job_purchase_order(Request $request)

    {

        $data = JobPurchase::find($request->id);
        $pdf = PDF::loadView('reports.job_purchase_order', get_defined_vars());

        if(isset($request->email))

        {
            $cc_email=getCcEmail();
            $supplier_email=$data->supplier->email;

            if(empty($supplier_email))
            {
                return back()->with("error","Email does not exist");
            }

            Mail::send('emails.job_purchase',['data' => $data], function ($send) use($supplier_email,$pdf,$data,$cc_email)

            {

                $send->to($supplier_email)->subject('Job Purchase Order');

                $send->cc($cc_email)->subject('Job Purchase Order');

                $send->attachData($pdf->output(), "Job-Purchase-Order-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf");

            });



            return back()->with("message","Email sent successfully");

        }

        if(isset($request->download))

        {

            return $pdf->download("Job-Purchase-Order-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf");

        }

        else

        {

            return $pdf->stream("Job-Purchase-Order-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }

    }

    public function job_email(Request $request)

    {

        $data = JobEmail::find($request->id);

        $pdf = PDF::loadView('reports.job_purchase_order', get_defined_vars());

        return $pdf->stream("Job-Email-".$data->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        // return $pdf->download('job_email.pdf');

    }



    public function quotation_xls($id)

    {

        return Excel::download(new QuotationDetailExport($id), 'quotation_detail.xlsx');

    }



    public function quotation($id,Request $request)

    {

        $quotation = Quotation::find($id);

        $extra_item_list = QuotationItem::where('quotation_id', $id)->where('extra_to_job',1)->get();

        $item_list = QuotationItem::where('quotation_id', $id)->where('extra_to_job',0)->get();

        $warranty = Warranty::where('id', $quotation->warranty_id)->first();
        // return view('reports.quotation', get_defined_vars());

        $pdf = PDF::loadView('reports.quotation', get_defined_vars());



        if(isset($request->download))

        {

            return $pdf->download("Quotation-".$quotation->id."-".now()->format('d-m-Y-H:i:s').".pdf");

        }else

        {

            return $pdf->stream("Quotation-".$quotation->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }

    }

    public function job_certificate($job_id,Request $request)

    {

        $job = Job::find($job_id);

        $certificate=Certificate::where("job_id",$job_id)->first();

        $pump_certifieds=$job->pump_certifieds;

        // return view('reports.job_certificate', get_defined_vars());

        $pdf = PDF::loadView('reports.job_certificate', get_defined_vars());

        $pdf->setPaper('A4', 'landscape');

        if(isset($request->download))

        {

            return $pdf->download("Job-Certificate-".$certificate->id."-".now()->format('d-m-Y-H:i:s').".pdf");

        }else

        {

            return $pdf->stream("Job-Certificate-".$certificate->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }



        // return $pdf->download('job_certificate.pdf');

    }

    public function job_details($job_id,Request $request)

    {

        $job = Job::find($job_id);

        $contact_info = Contact::where('id', $job->contact_id)->first();

        $labour_list = JobLabour::where('job_id', $job_id)->get();

        $purchase_list = JobPurchase::where('job_id', $job_id)->get();

        $stock_list = JobStock::where('job_id', $job_id)->get();

        $email_list = JobEmail::where('job_id', $job_id)->get();
        // dd(get_defined_vars());

        // return view('reports.job_details', get_defined_vars());

        $pdf = PDF::loadView('reports.job_details', get_defined_vars());

        if(isset($request->download))
        {
            return $pdf->download("job-".$job->id."-".now()->format('d-m-Y-H:i:s').".pdf");
        }

        elseif(isset($request->email))

        {
            // dd("Emailing");
            $cc_email=getCcEmail();

            $customer_email=$job->customer->email;
            // dd($customer_email);
            if(empty($customer_email))
            {
                return back()->with("error","Email does not exist");
            }
                Mail::send('emails.job_details',['job'=>$job,'contact_info'=>$contact_info,'labour_list'=>$labour_list,'purchase_list'=>$purchase_list,'stock_list'=>$stock_list,'email_list'=>$email_list], function ($send) use($customer_email,$pdf,$job,$cc_email)

            {

                $send->to($customer_email)->subject('Job Detail');

                $send->cc($cc_email)->subject('Job Detail');

                $send->attachData($pdf->output(), "job-".$job->id."-".now()->format('d-m-Y-H:i:s').".pdf");

            });
            return back()->with("message","Email sent successfully");

        }else

        {

            return $pdf->stream("job-".$job->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }

    }

    public function callibri_quotation($id,Request $request)

    {



        $verify_quotation = VerifQuotation::find($id);

        $customer=Customer::find($verify_quotation->customer_id);

        $verify_quotation_items = VerifQuotationItem::where("verif_quotation_id",$id)->get();

        $total_amount = VerifQuotationItem::where("verif_quotation_id",$id)->sum('cost_all_nozzles');

        $discount_amount=($total_amount*$verify_quotation->discount)/100;

        $net_amount=$total_amount-$discount_amount+$verify_quotation->travel_total_cost;

        $quotation_type=QuotationType::where("id",$verify_quotation->quotation_type_id)->first();

        $pdf = PDF::loadView('reports.calibration_quotation', get_defined_vars());

        if(isset($request->download))

        {

            return $pdf->download("Callibration-Quotation-".$verify_quotation->id."-".now()->format('d-m-Y-H:i:s').".pdf");

        }elseif(isset($request->email))

        {
            $cc_email=getCcEmail();

            $job=Job::find($request->job_id);

            $customer_email=$job->customer->email;
            if(empty($customer_email))
            {
                return back()->with("error","Email does not exist");
            }
            Mail::send('emails.verification_quotation',['verify_quotation'=>$verify_quotation,'customer'=>$customer,'verify_quotation_items'=>$verify_quotation_items,'total_amount'=>$total_amount,'discount_amount'=>$discount_amount,'net_amount'=>$net_amount,'quotation_type'=>$quotation_type], function ($send) use($customer_email,$pdf,$verify_quotation,$cc_email)

            {

                $send->to($customer_email)->subject('Verification Quotation');
                $send->cc($cc_email)->subject('Verification Quotation');
                $send->attachData($pdf->output(), "Callibration-Quotation-".$verify_quotation->id."-".now()->format('d-m-Y-H:i:s').".pdf");

            });

            return back()->with("message","Email sent successfully");

        }else

        {

            return $pdf->stream("Callibration-Quotation-".$verify_quotation->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);

        }

        // return $pdf->download('calibration_quotation.pdf');

    }

    public function verif_quotation_xls($id)

    {

        return (new VerifQuotationExport($id))->download('Verification-Quotation-'.$id.'-'.now()->format('d-m-Y-H:i:s').'.xlsx');

    }

     public function job_detail_xls($id)

    {

        return (new JobExport($id))->download('Job-'.$id.'-'.now()->format('d-m-Y-H:i:s').'.xlsx');

    }


    public function job_card_customer(Request $request,$id=null)
    {
        $eng_form = EngineerForm::findOrFail($id);
        if(!isset($eng_form->signature))
        {
          $eng_sign = '';
        }else
        {
            $eng_sign = "https://demo.deviotech.com/petro_backend/public/".$eng_form->signature;
        }
        $job=Job::find($eng_form->job_id);
        $materials_first = JobStock::where("form_id", $eng_form->id)
            ->take(12)
            ->get();
        $materials_second = JobStock::where("form_id", $eng_form->id)
            ->skip(12)
            ->take(12)
            ->get();
        $materials = $eng_form->materials;
        $equipments = $eng_form->engineer_equipments;
        $equipments_first = EngineerEquipment::where("form_id", $eng_form->id)
            ->take(8)
            ->get();
        $equipments_second = EngineerEquipment::where("form_id", $eng_form->id)
            ->skip(8)
            ->take(8)
            ->get();
        $pump_numbers=$eng_form->pump_numbers;
        $eng_user=User::find($eng_form->user_id);
        $eng_contact=Contact::where('email',$eng_user->email)->first();

        $pdf = PDF::loadView('reports.job_card_customer', get_defined_vars());

        if(isset($request->email))

        {
            $cc_emails=getCustomerCcEmails($job->customer);
            $customer_email=$job->customer->email;
            if(empty($customer_email))
            {
                return back()->with("error","Email does not exist");
            }
                Mail::send('emails.job_card_customer',get_defined_vars(), function ($send) use($customer_email,$pdf,$job,$eng_form,$cc_emails)

            {

                $send->to($customer_email)->subject('Job Card Customer');

                $send->cc($cc_emails)->subject('Job Card Customer');

                $send->attachData($pdf->output(), "job-".$eng_form->id."-".now()->format('d-m-Y-H:i:s').".pdf");

            });
            $eng_form->email_date=Carbon::now();
            $eng_form->save();
            return redirect()->route("job.edit", [$job->id, "job_card_customer"])->with("message", "Email Sent Successfully");
        }else if(isset($request->download))

        {
            return $pdf->download("Job Card Customer-".$eng_form->id."-".now()->format('d-m-Y-H:i:s').".pdf");

        }else
        {
            return $pdf->stream("Job Card Customer-".$eng_form->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);
        }

    }

    public function job_card_internal(Request $request,$id=null)
    {
        $eng_form=EngineerForm::where('job_id',$id)
            ->first();

        $eng_user=User::find($eng_form->user_id);
        $eng_contact=Contact::where('email',$eng_user->email)
            ->first();
        $job=Job::find($id);
        $cost_per_hour_site=JobLabour::where('form_id',$eng_form->id)
            ->sum('cost_per_hour_site');
        $cost_per_hour_travel=JobLabour::where('form_id',$eng_form->id)
            ->sum('cost_per_hour_travel');
        $total_cost_site=JobLabour::where('form_id',$eng_form->id)
            ->sum('total_cost_site');
        $total_cost_travel=JobLabour::where('form_id',$eng_form->id)
            ->sum('total_cost_travel');
        $total_hours=JobLabour::where('form_id',$eng_form->id)
            ->sum('hours');

        $records = JobLabour::where('form_id',$eng_form->id)
            ->get(['travel_time']);
        $travel_hours = 0;
        foreach($records as $r)
        {
            if(is_null($r->travel_time))
            {
                continue;
            }
            // echo "Time = ".$r->travel_time."<br>";
            $min = explode(":", $r->travel_time)[1]/60;
            $hours = explode(":", $r->travel_time)[0];
            $cal_hours = $hours + $min;
            $travel_hours = $travel_hours + $cal_hours;
            // echo $travel_time."<br>";
        }
        $materials=$eng_form->materials;
        $total_material_cost = $materials->sum('total');
        $overall_ex_cost = $total_material_cost + $total_cost_travel + $total_cost_site;
        // dd($cost_per_hour_travel, $travel_hours, $total_cost_travel);
        $pdf = PDF::loadView('reports.job_card_internal', get_defined_vars());


        if(isset($request->email))
        {
            dd("Email Pdf");
        }else if(isset($request->download))
        {
            return $pdf->download("Job Card Internal-".$eng_form->id."-".now()->format('d-m-Y-H:i:s').".pdf");
        }else
        {
            return $pdf->stream("Job Card Internal-".$eng_form->id."-".now()->format('d-m-Y-H:i:s').".pdf", array("Attachment" => false));exit(0);
        }

    }


}
