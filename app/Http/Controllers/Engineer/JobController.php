<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\EngineerJob;
use App\Contact;
use  Carbon\Carbon;

class JobController extends Controller
{
    public function List()
    {
        $engineer_jobs = EngineerJob::where('contact_id', engineer()->id)
            ->where('status', 'open')->get();   
 		return view('engineer.jobs.index',get_defined_vars());
    }
}