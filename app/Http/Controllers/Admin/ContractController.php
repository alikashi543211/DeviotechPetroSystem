<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Contract;
use App\Customer;

class ContractController extends Controller
{
    public function add(Request $req)
    {
        if($req->customer_id){
            $customer = Customer::find($req->customer_id);
        }else{
            $customer = Customer::all();
        }
        return view('Admin.contract.add', get_defined_vars());
    }

    public function list(Request $req)
    {
        $customer = Customer::all();
        $contract = Contract::all();
        return view('Admin.contract.index', get_defined_vars());
    }

    public function edit(Request $req, $id,$tab=null)
    {
        $contract = Contract::find($id);
        $customer = Customer::find($contract->customer_id);
        return view('Admin.contract.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'customer_id'=> 'required'
        ]);
        if (is_null($id)) {
            $contract = Contract::create($req->except('_token'));
            $msg = 'Contract created';
        } else {
            $contract = Contract::find($id);
            $contract->update($req->except('_token'));
            $msg = 'Contract updated';
        }
        return redirect($req->direction)->with('message', $msg);
        //return redirect($req->direction)->with('message', $msg);
        //return redirect()->route('contract.list')->with('message', $msg);
    }

    public function delete($id,$tab=null)
    {
        Contract::find($id)->delete();
        return back()->with('message', 'Contract deleted successfully');
    }
}
