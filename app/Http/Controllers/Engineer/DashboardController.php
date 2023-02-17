<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Job;

class DashboardController extends Controller
{
    public function Index()
    {
    	$forms_count=Job::where('contact_id',engineer()->id)
    		->count();
    	$submitted_count=Job::where('contact_id',engineer()->id)
    		->has("engineer_forms")
    		->count();
		$not_submitted_count=Job::where('contact_id',engineer()->id)
    		->DoesntHave("engineer_forms")
    		->count();
        return view('engineer.dashboard.dashboard',get_defined_vars());
    }
}
