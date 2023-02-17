<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use Mail;
use App\Staff;
use App\Supplier;
use App\Stock_item;
use App\JobType;
use App\Job;
use App\Category;
use App\Contact;
use App\Customer;
use App\JobCommunication;
use App\JobDocument;
use App\JobEmail;
use App\JobPurchase;
use App\JobLabour;
use App\JobStock;
use App\Quotation;
use App\QuotationDocument;
use App\PumpCertified;
use App\User;
use App\Certificate;
use PDF;
use App\Warranty;
use App\QuotationType;
use App\Signatory;
use App\VerifQuotation;
use App\Communication;
use Dcblogdev\Dropbox\Facades\Dropbox;
use Illuminate\Support\Facades\File;
use App\CcEmail;
use App\EngineerForm;
use App\EngineerJob;
use App\PumpNumber;
use App\EngineerEquipment;
use Carbon\Carbon;
use Session;

class JobController extends Controller
{

    public function add(Request $req)
    {
        $jobtype = JobType::all();
        $category = Category::all();
        $contact = Contact::all();
        $customer = Customer::all();
        $staff = Staff::all();
        return view('Admin.job.add_job_form', get_defined_vars());
    }

    public function list(Request $req,$id=null)
    {
        $customer_job = Customer::find($id);
       // dd($customer_job);
        $jobtype = JobType::all();
        $category = Category::all();
        $contact = Contact::orderBy('forename','asc')->get();
        // dd($contact);
        $customer = Customer::all();
        $staff = Staff::all();
        $warranties = Warranty::all();
        $filters = [];
        if (auth()->user()->role == 'admin'){
            $jobs = Job::orderBy('id','desc')->get();

            // $jobs = Job::all();

        }else{
            $jobs = Job::whereUserId(auth()->user()->id)->orderBy('id','desc')->get();
        }

        if ($req->daily_installs) {
            array_push($filters, $req->daily_installs);
        }
        if ($req->contract) {
            array_push($filters, $req->contract);
        }
        if ($req->calibration) {
            array_push($filters, $req->callibration);
        }
        if ($req->non_contract) {
            array_push($filters, $req->non_contract);
        }
        if ($req->donal) {
            array_push($filters, $req->donal);
        }
        if ($req->installations) {
            array_push($filters, $req->installations);
        }
        if ($req->niall) {
            array_push($filters, $req->niall);
        }

        if (count($filters) > 0) {
            $jobs = $jobs->whereIn('jobtype_id',$filters);
        }

        if ($req->incomplete) {
            $jobs = $jobs->where('completed',0);
        }

        if ($req->sub_cateogry) {
            $jobs = $jobs->where('category_id',$req->sub_cateogry);
        }

        return view('Admin.job.job_list', get_defined_vars());
    }



    public function edit(Request $req,$id,$tab=null)
    {
        if(isset($req->form))
        {
            $eng_form = EngineerForm::find($req->form);
            $first_eng_eq = $eng_form->engineer_equipments->first()->w_m_seals;
        }
        $job = Job::find($id);
        $customer = Customer::find($id);
        $contact = Contact::all();
        $contact_forename = Contact::orderBy('forename','asc')->get();
        $contact_surname = Contact::orderBy('surname','asc')->get();
        $category = Category::all();
        $jobtype = JobType::all();
        $staff = Staff::all();
        $supplier = Supplier::all();
        $stock_item = Stock_item::orderBy('name','asc')->get();
        $warranties = Warranty::all();
        $quotation_type=QuotationType::all();
        $signatories =Signatory::all();
        $action =Communication::all();
        $action=JobCommunication::where('job_id',$id)
            ->get() ;
        $action_count=sizeof($action);
        $po_number=JobPurchase::latest()->pluck('id')->first()+1;
        $dropbox = Dropbox::files()->listContents($job->job_folder);
        return view('Admin.job.edit_job', get_defined_vars());
    }

    public function checkEditPassword(Request $req)
    {
        if($req->edit_job_card_password == setting("edit_job_card_password"))
        {
            return response()->json(['result' => true, 'message' => 'Password Matched Successfully']);
        }else
        {
            return response()->json(['result' => false, 'message' => 'Password Is Incorrect']);
        }
    }

    public function changeEngineer(Request $req)
    {
        $job=Job::where("id",$req->job_id)->update(['contact_id'=>$req->contact_id]);
        return response()->json("Engineer updated successfully");
    }

    public function worksCompleted(Request $req)
    {
        $job=Job::where("id",$req->job_id)->update(['completed'=>$req->completed]);
        return response()->json("Work Status Updated Successfully");
    }

    public function save(Request $request, $id = null)
    {
        if (is_null($id)) {
            $request->validate([
                'customer_id' => 'required',
                'contact' => 'required',
                'jobtype_id' => 'required',
                'detail' => 'required',
                'credit_status_reviewed'=>'required',
                'contract_status'=>'required',
            ]);
            $job = Job::create($request->except('_token','action'));
            $msg = 'Job created';
        } else {
            $request->validate([
                'customer_id' => 'required',
                'contact' => 'required',
                'jobtype_id' => 'required',
                'detail' => 'required',
            ]);
            $job = Job::find($id);
            $job->update($request->except('_token','action'));
            $job->status=$request->status;
            $job->completed=$request->completed;
            $job->save();
            // dd($job);

            if(isset($request->assign_from))
            {
                $count_assign = count($request->assign_from);
                for($i = 0; $i < $count_assign; $i++)
                {
                    // dd(my_date_format($request->assign_from[$i]));
                    $assign_from = my_date_format($request->assign_from[$i]);
                    $assign_to = my_date_format($request->assign_to[$i]);

                    $num_of_days = Carbon::parse($assign_from)->diffInDays(Carbon::parse($assign_to));
                    // dd($assign_from, $assign_to, $num_of_days, Carbon::parse($assign_from), Carbon::parse($assign_to));
                    if(isset($request->engineer_form_id[$i]))
                    {
                        // EngineerForm::where('id', $request->engineer_form_id[$i])->update([
                        //     'assign_from' => $request->assign_from[$i],
                        //     'assign_to' => $request->assign_to[$i],
                        //     'contact_id' => $request->contact_id[$i],
                        //     'job_id' => $job->id,
                        //     'num_of_days' => $num_of_days,
                        // ]);
                    }else{
                        for($j = 0; $j < $num_of_days; $j++)
                        {
                            EngineerForm::create([
                                'assign_from' => $request->assign_from[$i],
                                'assign_to' => $request->assign_to[$i],
                                'contact_id' => $request->contact_id[$i],
                                'job_id' => $job->id,
                                'num_of_days' => $num_of_days,
                                'date_of_submission' => Carbon::parse($assign_from)->addDays($j)->format('Y-m-d'),
                            ]);  
                        }
                    }
                    
                }
            }
            $msg = 'Job updated';
            return redirect()->route('job.list')
            ->with('message', $msg . ', you can manage job\'s quotations, communications etc here');
        }

        if ($job) {
            $f = Job::find($job->id);

            if(!Dropbox::files()->listContents('/Petro/Jobs/')['exist'])
                Dropbox::files()->createFolder('/Petro/Jobs/');

            $folder = "/Petro/Jobs/".$job->id;
            $response = Dropbox::files()->createFolder($folder);
            $f->job_folder = $response['path_display'];
            $f->save();
        }

        return redirect()->route('job.edit', $job->id)
        ->with('message', $msg . ', you can manage job\'s quotations, communications etc here');
    }



    public function delete($id)
    {
        Job::find($id)->delete();
        return back()->with('message','Job deleted successfully');
    }

    /* JOB COMMUNICATION */
    public function saveJobCommunication(Request $req, $id = null)
    {
        $req->validate([
            'job_id' => 'required',
            'details' => 'required',
            'date' => 'required',
            'com_type'=>'required',
        ]);

        if (is_null($id)) {
            JobCommunication::create($req->except('_token'));
        } else {
            JobCommunication::where('id', $id)
            ->update($req->except('_token'));
        }

        return response()->json('Job communication saved');
    }
    public function editJobCommunication($id)
    {
        $item = JobCommunication::find($id);
        return view('ajax.job.edit_communication', get_defined_vars());
    }
    public function getJobCommunications($job_id)
    {
        $list = JobCommunication::where('job_id', $job_id)->get();
        return view('ajax.job.communications', get_defined_vars());
    }
    public function deleteJobCommunication($id)
    {
        JobCommunication::find($id)->delete();
        return response()->json('Job communication deleted');
    }

    /* JOB EMAIL */
    public function saveJobEmail(Request $req, $id = null)
    {

        if ($req->send_mail_type == 1)
        {
            if (is_null($id)) {
                if(!empty($req->cc)){
                    $data = implode(",", $req->cc);
                }else{
                    $data = "";
                }
                JobEmail::create([
                    'job_id' => $req->job_id,
                    'receiver' => $req->receiver,
                    'cc' => $data,
                    'subject' => $req->subject,
                    'content' => $req->content,
                    'mail_type' => $req->mail_type,
                    'receiver_name' => $req->receiver_name,
                    'other_email_address' => $req->other_email_address,
                ]);
            } else {
                //JobEmail::where('id', $id)->update($req->except('_token'));
                if(isset($req->cc)){
                    $data = implode(",", $req->cc);
                }else{
                    $data = "";
                }
                $jobmail = JobEmail::where('id', $id)->first();
                $jobmail->receiver = $req->receiver;
                $jobmail->other_email_address = $req->other_email_address;
                $jobmail->cc = $data;
                $jobmail->subject = $req->subject;
                $jobmail->content = $req->content;
                $jobmail->save();
                return response()->json('Job mail updated');
            }
            return response()->json('Job email created');
        }
        else
        {
            if (is_null($id)) {
                if(isset($req->cc)){
                    $data = implode(",", $req->cc);
                }else{
                    $data = "";
                }
                JobEmail::create([
                    'job_id' => $req->job_id,
                    'receiver' => $req->receiver,
                    'cc' => $data,
                    'subject' => $req->subject,
                    'content' => $req->content,
                    'mail_type' => $req->mail_type,
                    'receiver_name' => $req->receiver_name,
                    'other_email_address' => $req->other_email_address,
                ]);
            } else {
                JobEmail::where('id', $id)
                ->update($req->except('_token'));
            }
            if($req->mail_type=='customer')
            {
                $view="emails.send_to_customer";
            }else
            {
                $view="emails.send_to_staff";
            }

            // send_all_email_with_username_to_hi();
            sendMail([
                'view' => $view,
                'to' => $req->receiver,
                'subject' => $req->subject,
                'data' => [
                    'detail' => $req->content,
                    'cc_email'=>getCcEmail(),
                ]
            ]);

            if($req->other_email_address)
            {
                sendMail([
                    'view' => 'emails.send_to_customer',
                    'to' => $req->other_email_address,
                    'subject' => $req->subject,
                    'data' => [
                        'detail' => $req->content,
                        'cc_email'=>getCcEmail(),
                    ]
                ]);
            }
            return response()->json('Job email saved and send');
        }

    }
    public function editJobEmail($id)
    {
        // $contact = Contact::pluck('email')->toArray();
        $contact=Contact::all();
        $item = JobEmail::find($id);
        return view('ajax.job.edit_email', get_defined_vars());
    }
    public function editJobEmail_staff($id)
    {
        $contact = Contact::all();
        $item = JobEmail::find($id);
        return view('ajax.job.edit_staff_email', get_defined_vars());
    }
    public function getJobEmails($job_id)
    {
        $list = JobEmail::where('job_id', $job_id)->get();
        return view('ajax.job.emails', get_defined_vars());
    }
    public function deleteJobEmail($id)
    {
        JobEmail::find($id)->delete();
        return response()->json('Job Email deleted');
    }
    //job documemts
    public function getJobDocument($job_id)
    {
        $job = Job::find($job_id);
        $dropbox = Dropbox::files()->listContents($job->job_folder);
        return view('ajax.job.job_document', get_defined_vars());
    }
    public function saveJobDocument(Request $req)
    {
        $job = Job::find($req->job_id);
        $extension = $req->file->getClientOriginalExtension();
        $fileName = rand().'.'.$extension;
        $uploadPath = $job->job_folder."/".$fileName;

        if(!Dropbox::files()->listContents($job->job_folder)['exist'])
            Dropbox::files()->createFolder($job->job_folder);



        if(!Dropbox::files()->listContents($job->job_folder)['exist'])
            Dropbox::files()->createFolder($job->job_folder);


        $res = Dropbox::files()->upload($uploadPath,$req->file);
        return response()->json('File saved successfully');
    }
    public function deletedocument(Request $req,$job_id=null,$id=null)
    {
        $job = Job::find($req->job_id);
        $path = $job->job_folder."/".$req->id;
        Dropbox::files()->delete($path);
        return redirect()->back();
    }


    /* JOB LABOUR */
    public function saveJobLabour(Request $req, $id = null)
    {
        $req->validate([
            'job_id' => 'required',
            'date' => 'required',
            'start' => 'required',
            'hours' => 'required',
            'contact_id'=> 'required',
            'cost_per_hour_site'=>'required',
            'cost_per_hour_travel'=>'required',
            'total_cost_site'=>'required',
            'total_cost_travel'=>'required',
        ]);
        if (is_null($id)) {
            $job_labour=JobLabour::create($req->except('_token'));
            JobLabour::where('id',$job_labour['id'])->update(['user_id'=>auth()->user()->id]);
        } else {
            JobLabour::where('id', $id)
            ->update($req->except('_token'));
        }

        return response()->json('Job Labour saved');
    }
    public function editJobLabour($id)
    {
        $item = JobLabour::find($id);
        if(!is_null($item->form_id))
        {
            $eng_contact = Contact::find($item->engineer_form->engineer->contact_id);
        }
        $contact = Contact::all();
        return view('ajax.job.edit_labour', get_defined_vars());
    }
    public function getJobLabours($job_id)
    {
        $list = JobLabour::where('job_id', $job_id)->get();
        return view('ajax.job.labours', get_defined_vars());
    }
    public function deleteJobLabour($id)
    {
        JobLabour::find($id)->delete();
        return response()->json('Job Labours deleted');
    }

    /* JOB PURCHASE */
    public function saveJobPurchase(Request $req, $id = null)
    {
        $req->validate([
            'job_id' => 'required',
            'date' => 'required',
            'supplier_id' => 'required',
            'items_required' => 'required',
            'purchased_by' => 'required'
        ]);

        if (is_null($id)) {
            JobPurchase::create($req->except('_token','po_number','supplier_email'));
        } else {
            JobPurchase::where('id', $id)
            ->update($req->except('_token','po_number','supplier_email', 'extra_to_job_edit'));
            $purchase=JobPurchase::find($id);
            $purchase->extra_to_job=$req->extra_to_job_edit ?? 0;
            $purchase->save();
        }

        return response()->json('Job Purchase saved');
    }
    public function editJobPurchase($id)
    {
        $item = JobPurchase::find($id);
        $supplier = Supplier::all();
        return view('ajax.job.edit_purchase', get_defined_vars());
    }
    public function getJobPurchases($job_id)
    {
        $list = JobPurchase::where('job_id', $job_id)->get();
        return view('ajax.job.purchases', get_defined_vars());
    }
    public function deleteJobPurchase($id)
    {
        JobPurchase::find($id)->delete();
        return response()->json('Job Purchase deleted');
        // return response()->json('Job Purchase deleted');
    }

    /* JOB STOCK */
    public function saveJobStock(Request $req, $id = null)
    {
        if(!is_null($id))
        {
            $stock=JobStock::find($id);
        }
        $req->validate([
            'job_id' => 'required',
            'date' => 'required',
            'qty' => 'required',
        ]);
        if(isset($stock) && is_null($stock->form_id))
        {
            $req->validate([
                'stock_item_id' => 'required',
            ]);
        }
        if(isset($stock) && !is_null($stock->form_id))
        {
            $req->validate([
                'material_used' => 'required',
            ]);
        }
        

        if (is_null($id)) {
            //$date = strtr($req->date, '/', '-');
            //$formatted_date = date('Y-m-d', strtotime($date));

            // dd($formatted_date);
            $data = $req->except('_token');
            //$data['date'] = $formatted_date;
            JobStock::create($data);
        } else {
            if(is_null($stock->form_id))
            {
                $data = $req->except('_token');
            }else
            {
                $data = $req->except('_token','material_used','stock_item_id');
            }
            JobStock::where('id', $id)
            ->update($data);
        }

        return response()->json('Job Stock saved');
    }
    public function editJobStock($id)
    {
        $item = JobStock::find($id);
        $stock_item = Stock_item::all();
        return view('ajax.job.edit_stock', get_defined_vars());
    }
    public function getJobStocks($job_id)
    {
        $list = JobStock::where('job_id', $job_id)->get();
        return view('ajax.job.stocks', get_defined_vars());
    }
    public function deleteJobStock($id)
    {
        JobStock::find($id)->delete();
        return response()->json('Job Stock deleted');
    }

    /* QUOTATIONS */
    public function quotations($job_id)
    {
        $list = Quotation::where('job_id', $job_id)->get();
        return view('ajax.job.quotations', get_defined_vars());
    }

    public function job_engineers($job_id)
    {
        $list = EngineerJob::where('job_id', $job_id)->get();
        return view('ajax.job.job_engineers', get_defined_vars());
    }


    public function lostQuotations($job_id)
    {
        $list = Quotation::where('job_id', $job_id)->where('status','lost_archieve')->get();
        return view('ajax.job.lost_quotations', get_defined_vars());
    }

    /* JOB CERTIFICATE */
    public function certificate_form($job_id)
    {
        $job = Job::find($job_id);
        return view('ajax.job.certificate_form', get_defined_vars());
    }

    public function saveJobCertificate(Request $request)
    {
        $request->validate([
            'job_id' => 'required',
            'address' => 'required',
            'customer_id' => 'required',
            'name' => 'required',
            'verification_date' => 'required',
            'enteredBy' => 'required',
        ]);
        $chk = Certificate::where("job_id", $request->job_id)->count();
        if ($chk > 0) {
            $c = Certificate::where("job_id", $request->job_id)->first();
        } else {
            $c = new Certificate();
        }
        $c->job_id = $request->job_id;
        $c->customer_id = $request->customer_id;
        $c->address = $request->address;
        $c->name = $request->name;
        $c->verification_date = $request->verification_date;
        $c->enteredBy = $request->enteredBy;
        $c->save();
        $message = array(
            'success' => 'Certificate successfully saved',
            'verification_date' => $c->verification_date,
            'name' => $c->name,
            'address' => $c->address,
            'enteredBy' => $c->enteredBy,

        );
        return response()->json($message);
    }

    public function pump_certifieds($job_id)
    {
        $list = PumpCertified::where('job_id', $job_id)->get();
        return view('ajax.job.pump_certifieds', get_defined_vars());
    }

    public function save_pump_certified(Request $request)
    {
        $request->validate([
            'job_id' => 'required',
            'nozzles' => 'required',
            'pump_no' => 'required',
            'make' => 'required',
            'serial_no' => 'required',
        ]);
        $chk = Certificate::where("job_id", $request->job_id)->count();
            $c = new PumpCertified();
            $c->job_id = $request->job_id;
            $c->certificate_id = $request->certificate_id ?? null;
            $c->nozzles = $request->nozzles;
            $c->pump_no = $request->pump_no;
            $c->make = $request->make;
            $c->serial_no = $request->serial_no;
            $c->save();
            return response()->json('Pump certified saved successfully');
    }

    public function edit_pump_certified($id)
    {
        $item = PumpCertified::find($id);
        return view('ajax.job.edit_pump_certified', get_defined_vars());
    }

    public function update_pump_certified(Request $request, $id)
    {
        $request->validate([
            'nozzles' => 'required',
            'pump_no' => 'required',
            'make' => 'required',
            'serial_no' => 'required',
        ]);

        $c = PumpCertified::find($id);
        $c->nozzles = $request->nozzles;
        $c->pump_no = $request->pump_no;
        $c->make = $request->make;
        $c->serial_no = $request->serial_no;
        $c->save();
        return response()->json('Pump certified saved successfully');
    }
    public function delete_pump_certified($id)
    {
        PumpCertified::find($id)->delete();
        return response()->json('Pump certified deleted');
    }
    public function getVerifQuotation($job_id)
    {
        $list = VerifQuotation::where('job_id', $job_id)->get();
        return view('ajax.job.verif_quotations', get_defined_vars());
    }
    public function saveVerifQuotation($id,Request $request)
    {
        $request->validate([
            'customer_id' => 'required',
            'signatory_id' => 'required',
        ]);

        if(is_null($id))
        {
            $quotation = VerifQuotation::create($request->except('_token'));
            $msg = 'Verification Quotation created';
        }
        else
        {
            $quotation = VerifQuotation::find($id);
            $quotation->update($request->except('_token'));
            $msg = 'Verification Quotation updated';
        }

        return response()->json(['success'=>'Created successfully']);
    }

    public function job_purchase_email(Request $request)
    {
        $data = JobPurchase::find($request->id);
        Mail::send('emails.job_purchase',['data' => $data], function ($send) use($data){
            $send->to($data->supplier->email)->subject('Purchase Order');
            $send->cc(getCcEmail())->subject('Purchase Order'); 
        });

        return response()->json(['success' => 'Email successfully sent']);
    }

    public function getJobCardCustomer($id)
    {
        $form=EngineerForm::where('job_id',$id)->first();
        if(!is_null($form))
        {
            $form_list = EngineerForm::where('job_id',$id)->where('status', '2')->get();
        }
        $job=Job::find($id);
        return view('ajax.job.job_card_customer', get_defined_vars());
    }

    public function getJobCardInternal($id)
    {
        $form=EngineerForm::where('job_id',$id)->first();
        if(!is_null($form))
        {
            $form_list=EngineerForm::where('job_id',$id)->where('status', '2')->get();
            $engr=User::find($form->user_id); 
        }
        $job=Job::find($id);
        return view('ajax.job.job_card_internal', get_defined_vars());
    }

    public function editJobCardInternal(Request $req)
    {
        $form = EngineerForm::find($req->id);
        return view('ajax.job.edit_job_card_internal', get_defined_vars());
    }
    
    public function saveJobCardInternal(Request $req)
    {
        $eng_form = EngineerForm::find($req->form_id);
        $eng_form->order_no = $req->order_no ?? '';
        $eng_form->contact_site = $req->contact_site;
        $eng_form->work_carried_out = $req->work_carried_out;
        $eng_form->completed = $req->completed;
        if($req->completed == 1)
        {
            $eng_form->not_completed_comment = null;
            $eng_form->job_completed_comment = $req->job_completed_comment;
        }else{
            $eng_form->not_completed_comment = $req->not_completed_comment;
            $eng_form->job_completed_comment = null; 
        }
        
        $eng_form->comment = $req->comment;
        $eng_form->eng_name = $req->eng_name;
        $eng_form->van_no = $req->van_no;
        $eng_form->save();
        $count_material = sizeof($req->material_used);

        $travel_from = explode(":",$req->travel_from)[0].":".explode(":",$req->travel_from)[1];
        $travel_to = explode(":",$req->travel_to)[0].":".explode(":",$req->travel_to)[1];
        $start_time = explode(":",$req->site_arrival_time)[0].":".explode(":",$req->site_arrival_time)[1];
        $end_time = explode(":",$req->site_departure_time)[0].":".explode(":",$req->site_departure_time)[1];
        $travel_time = explode(":",$req->travel_time)[0].":".explode(":",$req->travel_time)[1];
        $time_on_site = explode(":",$req->time_on_site)[0]+explode(":",$req->time_on_site)[1]/60;


        JobLabour::where("form_id", $req->form_id)
            ->update(['job_id' => $req->job_id,
            'job_sheet' => $req->job_sheet_no,
            'start' => $start_time,
            'end' => $end_time,
            'hours' => $time_on_site,
            'travel_from' => $travel_from,
            'travel_to' => $travel_to,
            'travel_time' => $travel_time,
            'form_id' => $eng_form->id,
        ]);

        $eng_form->materials()->delete();
        for($i = 0; $i < $count_material; $i++)
        {
            JobStock::create(['form_id' => $eng_form->id,
                'material_used' => $req->material_used[$i],
                'qty' => $req->quantity_used[$i],
                'job_id' => $req->job_id,
                'engineer_id' => $eng_form->user_id,
                'date' => Carbon::now()->format('d/m/Y H:m a'),
                'form_id' => $eng_form->id,
            ]);
        }

        $eng_form->engineer_equipments()->delete();
        $count_equipment = sizeof($req->equipment);
        for($i = 0; $i < $count_equipment; $i++)
        {
            EngineerEquipment::create(['form_id' => $eng_form->id,
                'equipment' => $req->equipment[$i],
                'make' => $req->make[$i],
                'serial_no' => $req->serial_no_2[$i],
                'w_m_seals' => $req->w_m_seals[$i]]);
        }

        Session::flash("message", "Saved Successfully");
        return redirect()->route("job.edit", [$req->job_id, "job_card_internal"]);
    }


    public function saveJobEngineer(Request $req)
    {
        $req->validate([
            'job_id' => 'required',
            'assign_job_interval' => 'required',
            'assign_engineer_id' => 'required',
        ]);

        if($req->assign_job_interval == 1)
        {
            $assign_one_date = my_date_format($req->assign_one_date);
            EngineerJob::create([
                'job_id' => $req->job_id,
                'contact_id' => $req->assign_engineer_id,
                'date' => Carbon::parse($assign_one_date)->format("Y-m-d"),
                'status' => "open",
            ]);
        }

        if($req->assign_job_interval == 2)
        {
            $assign_from = my_date_format($req->assign_from_date);
            $assign_to = my_date_format($req->assign_to_date);

            $num_of_days = Carbon::parse($assign_from)->diffInDays(Carbon::parse($assign_to));

            if($num_of_days > 0)
            {
                for($j = 0; $j < $num_of_days+1; $j++)
                {
                    EngineerJob::create([
                        'job_id' => $req->job_id,
                        'contact_id' => $req->assign_engineer_id,
                        'date' => Carbon::parse($assign_from)->addDays($j)->format('Y-m-d'),
                        'status' => "open",
                    ]);
                }  
            }
            
            if($num_of_days == 0)
            {
                $assign_one_date = my_date_format($req->assign_one_date);
                EngineerJob::create([
                    'job_id' => $req->job_id,
                    'contact_id' => $req->assign_engineer_id,
                    'date' => Carbon::parse($assign_one_date)->format("Y-m-d"),
                    'status' => "open",
                ]);
            }
        }
        
        return response()->json('Job Assigned Successfully');
    }
}