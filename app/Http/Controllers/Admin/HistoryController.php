<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Customer;
use App\PumpMakeAndModel;
use App\ServiceContract;
use Dcblogdev\Dropbox\Facades\Dropbox;

class HistoryController extends Controller
{
    public function index(Request $request, $id = null,$tab=null)
    {
        $customer = Customer::find($id);

        // $customers = Customer::all();
        $make_model = PumpMakeAndModel::all();
        $templates = Dropbox::files()->listContents("/Petro/Templates");
        $site_proc = Dropbox::files()->listContents("/Petro/Site Procedures");
        $quality = Dropbox::files()->listContents("/Petro/Quality");
        // dd($customer->service_contract->id,$make_model,$templates,$site_proc,$quality);
        return view('Admin.customer_history.history', get_defined_vars());
    }

    public function save_service_contracts(Request $req, $id = null)
    {
        if(is_null($id))
        {
            $service_contract = ServiceContract::create($req->except('_token'));
            $msg = 'Service Contract created';
        }
        else
        {
            $service_contract = ServiceContract::find($id);
            $service_contract->update($req->except('_token'));
            $msg = 'Service Contract updated';
        }

        return redirect()->back()
        ->with('message', $msg.', you can manage Service Contract\'s here');
    }
}
