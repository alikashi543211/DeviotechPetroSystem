<?php

namespace App\Http\Controllers\employee;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class employeeController extends Controller
{
    public function user_Profile(){
        if (View::exists('employee.user_profile.user_profile')) {
            return view('employee.user_profile.user_profile');
        }
        }
}
