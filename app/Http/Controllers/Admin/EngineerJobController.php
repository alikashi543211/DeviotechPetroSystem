<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Job;
use App\EngineerJob;

class EngineerJobController extends Controller
{
    public function list()
    {
        $job_list = Job::has("engineer_jobs")->get();
        return view('Admin.engineer_job.list', get_defined_vars());
    }
}
