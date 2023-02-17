<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Job;
use App\JobStock;
use App\EngineerForm;
use App\EngineerEquipment;
use App\PumpNumber;
use App\JobLabour;
use App\EngineerImage;
use App\EngineerJob;
use App\Stock_item as StockItem;
use Dcblogdev\Dropbox\Facades\Dropbox;
use Session;
use Carbon\Carbon;

class FormController extends Controller
{
    public function Form(Request $req)
    {
        $stock_list = StockItem::all();
        $engineer_job = EngineerJob::where('id',$req->id)->first();
        $job = $engineer_job->job;
        return view('engineer.form.form', get_defined_vars());
    }

    public function saveForm(Request $req)
    {
        $signature = "";
        if(isset($req->Signatur_Data))
        {
            $signature = uploadSignature($req->Signatur_Data);
        }
        // $eng_form = new EngineerForm();
        $eng_form = new EngineerForm();
        $eng_form->date = $req->date;
        $eng_form->job_id = $req->job_id;
        $eng_form->order_no = $req->order_no ?? '';
        $eng_form->contact_site = $req->contact_site;
        $eng_form->work_carried_out = $req->work_carried_out;
        $eng_form->completed = $req->completed;
        if($req->completed == '0')
        {
            $eng_form->not_completed_comment = $req->result_description;
        }else
        {
            $eng_form->job_completed_comment = $req->result_description;
        }
        $eng_form->eng_name = $req->eng_name;
        $eng_form->van_no = $req->van_no;
        $eng_form->user_id = auth()->user()->id;
        $eng_form->signature = $signature;
        $eng_form->status = "2";
        $eng_form->save();
        
        // dd($req->w_m_seals);
        if(isset($req->travel_time) && isset($req->time_on_site))
        {
            $travel_from = explode(":",$req->travel_from)[0].":".explode(":",$req->travel_from)[1];
            $travel_to = explode(":",$req->travel_to)[0].":".explode(":",$req->travel_to)[1];
            $start_time = explode(":",$req->site_arrival_time)[0].":".explode(":",$req->site_arrival_time)[1];
            $end_time = explode(":",$req->site_departure_time)[0].":".explode(":",$req->site_departure_time)[1];
            $travel_time = explode(":",$req->travel_time)[0].":".explode(":",$req->travel_time)[1];
            $time_on_site = explode(":",$req->time_on_site)[0]+explode(":",$req->time_on_site)[1]/60;
    
            // dd($req->travel_time,$travel_time);
            JobLabour::create(['date' => Carbon::now()->format('d/m/Y H:m a'),
                'job_id' => $req->job_id,
                'job_sheet' => $req->job_sheet_no,
                'start' => $start_time,
                'end' => $end_time,
                'hours' => $time_on_site,
                'travel_from' => $travel_from,
                'travel_to' => $travel_to,
                'travel_time' => $travel_time,
                'user_id' => auth()->user()->id,
                'form_id' => $eng_form->id,
                'contact_id' => auth()->user()->contact_id,
            ]);   
        }
        $count_material = sizeof($req->material_used);
        if($count_material > 0)
        {
            for($i = 0; $i < $count_material; $i++)
            {
                JobStock::create(['form_id' => $eng_form->id,
                    'material_used' => $req->material_used[$i] ?? '',
                    'qty' => $req->quantity_used[$i] ?? '',
                    'job_id' => $req->job_id,
                    'engineer_id' => auth()->user()->id,
                    'date' => Carbon::now()->format('d/m/Y H:m a'),
                    'form_id' => $eng_form->id,
                ]);
            }
        }
        

        $count_equipment = sizeof($req->equipment);
        if($count_equipment > 0)
        {
            for($i = 0; $i < $count_equipment; $i++)
            {
                EngineerEquipment::create(['form_id' => $eng_form->id,
                    'equipment' => $req->equipment[$i] ?? '',
                    'make' => $req->make[$i] ?? '',
                    'serial_no' => $req->serial_no_2[$i] ?? '',
                    'w_m_seals' => $req->w_m_seals[$i]]);
            }
        }
        
        if(isset($req->images))
        {
            $images_count = count($req->images);
            if($images_count > 0)
            {
                
                foreach($req->images as $image)
                {
                    $path = uploadFile($image, "engineer/form-".$eng_form->id);
                    EngineerImage::create(['form_id' => $eng_form->id,
                        'path' => $path]);
                }  
            } 
        }

        EngineerJob::find($req->eng_job_id)->update(['status' => 'closed', 'engineer_form_id' => $eng_form->id]);
        
        Session::flash("message", "Form Submitted Successfully");
        return response()->json("saved");
        
    }

    public function testDropbBox()
    {
        $images_count = count($req->images);
        if($images_count > 0)
        {
            foreach($req->images as $file)
            {

                $extension = $file->getClientOriginalExtension();
                $fileName = rand().'.'.$extension;
                $folder = "/Petro/Engineer/Jobcard-".$eng_form->id;
                $uploadPath = $folder."/".$fileName;

                $response = Dropbox::files()->createFolder($folder);
                $res = Dropbox::files()->upload($uploadPath, $file);

                EngineerImage::create(['form_id' => $eng_form->id,
                    'path' => $uploadPath]);
            }  
        }
    }

}