<?php

namespace App\Http\Controllers\supplier;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class supplierController extends Controller
{
    public function user_Profile(){
        
        if (View::exists('supplier.user_profile.user_profile')) {
            return view('supplier.user_profile.user_profile');
        }
        }
}
