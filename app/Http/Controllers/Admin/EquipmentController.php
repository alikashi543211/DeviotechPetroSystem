<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Equipment;
use App\Customer;
use App\PumpMakeAndModel;


class EquipmentController extends Controller
{
    public function add(Request $req)
    {
        $req->customer_id;
        $customers = Customer::all();
        $make_model = PumpMakeAndModel::all();
        return view('ajax.equipment.add', get_defined_vars());
    }

    public function list(Request $req)
    {
        
        $customer = Customer::find($req->customer_id);
        $make_model = PumpMakeAndModel::all();
        $equipment = Equipment::all();
        return view('ajax.equipment.index', get_defined_vars());
    }

    public function edit(Request $req,$id)
    {
        $equipment = Equipment::find($id);
        $customers = Customer::all();
        $make_model = PumpMakeAndModel::all();
       
        return view('ajax.equipment.edit', get_defined_vars());
        
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'customer_id' => 'required',
            'pump_make_and_model_id' => 'required',
            'serial'=> 'required',
        ]);

        if(is_null($id))
        {
            $equipment = Equipment::create($req->except('_token'));
            $msg = 'Equipment created';
        }
        else
        {
            $equipment = Equipment::find($id);
            $equipment->update($req->except('_token'));
            $msg = 'Equipment updated';
        }

        if($req->ajax()){
            return response()->json([$msg." Successfully"]);
        }
    }

    public function delete($id)
    {
        Equipment::find($id)->delete();
        return response()->json(['Equipment deleted successfully']);
        
    }
}
