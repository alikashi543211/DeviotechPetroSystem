<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Staff;
use Illuminate\Support\Facades\View;


class StaffController extends Controller
{
    // Staff crud
    public function staff($id = null){
        $staff =  Staff::find($id);
        
        $data = [
        'staff'=>$staff,
                ];
        if (View::exists('ajax.staff.add')) {
            return view('ajax.staff.add')->with($data);
        }
    }
    public function add_staff(Request $request){
        
        request()->validate([
            'staff' => 'required|max:190',
            'status' => 'required|max:190',
            
                ]);
                $id =  $request->id;
                
                if($id == 0){
                    $staff = new Staff();
                }else{
                    $staff =  Staff::find($id);
                }
                $staff->staff_name = $request->staff;
                $staff->status = $request->status;
                $staff->save();
                    
                if($request->ajax()){
                    return response()->json('Success');
                }
               
                if($id == 0){
                    return redirect()->route('staff_list')->with('message','Staff saved successfully');
                }else{
                    return redirect()->route('staff_list')->with('message','Staff updated successfully');
                }
    }
    
    public function staff_list($id = null){
        $staff =  Staff::find($id);
        
        $data = [
        'staff'=>$staff,
                ];
        $staffs = Staff::all();
        if (View::exists('Admin.staff.staff_list')) {
            return view('Admin.staff.staff_list',get_defined_vars());
        }
    }
    public function remove_staff(Request $request,$id=null){
        // $id = $request->input('id');
        Staff::destroy($id);
        return response()->json(' Staff Deleted');
    }
    public function Edit($id = null){
        $staff = Staff::find($id);
        return view('ajax.staff.edit', get_defined_vars());
        
    }
    public function list(){
        $staffs = Staff::all();
        return view('ajax.staff.list', get_defined_vars());
    }

}