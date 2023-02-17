<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\PumpMakeAndModel;
use Illuminate\Support\Facades\View;

class PumpAndModelController extends Controller
{

    // Staff crud
    public function pump_make_and_model($id = null){
       
        if (View::exists('ajax.pump_make_and_model.add')) {
            return view('ajax.pump_make_and_model.add');
        }
    }
    public function add_pump_make_and_model(Request $request){
        
       request()->validate([
                    'make_model' => 'required|max:190',
                    
                        ]);
                        $id =  $request->id;
                        
                        if($id == 0){
                       
                        $pump_make_and_model = new PumpMakeAndModel();
                        }else{
                       
                        $pump_make_and_model =  PumpMakeAndModel::find($id);
                        }
                        $pump_make_and_model->make_model = $request->make_model;
                        $pump_make_and_model->save();
                        
                    
                if($request->ajax()){
                    return response()->json('Success');
                }
               
    
                if($id == 0){
                                    return redirect()->route('pump_make_and_model_list')->with('message','Make & Model saved successfully');
                                    }else{
                                return redirect()->route('pump_make_and_model_list')->with('message','Make & Model updated successfully');
                                    }
    }
    
    public function pump_make(){
        $data = PumpMakeAndModel::all();
            if (View::exists('Admin.pump_make_model.pump_make_and_model_list')) {
                return view('Admin.pump_make_model.pump_make_and_model_list')->with('make_models',$data);
            }
    }
    public function remove_pump_make_and_model(Request $request,$id=null){
        // $id = $request->input('id');
        PumpMakeAndModel::destroy($id);
        return response()->json('Pump make deleted');
    }
    public function Edit($id = null){
        $data = PumpMakeAndModel::find($id);
        return view('ajax.pump_make_and_model.edit', get_defined_vars());
        
    }
    public function pumpList(){
        $data = PumpMakeAndModel::all();
        return view('ajax.pump_make_and_model.list')->with('make_models',$data);
    }

}
