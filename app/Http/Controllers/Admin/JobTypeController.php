<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\JobType;

class JobTypeController extends Controller
{
    public function addjobtype()
    {
        return view('Admin/jobtype/add_jobtype');
    }
    
    public function createjobtype(Request $request)
    {
        $request->validate([
            'name'=> 'required',
        ]);

       $jobtype = JobType::create([
            'name' => $request->name,
        ]);
        return redirect()->route('listjobtype')->with('message','jobtype created successfully');

    }

    public function listjobtype()
    {
        $jobtype = JobType::all();
        return view('Admin/jobtype/list_jobtype',compact('jobtype'));
    }


    public function editjobtype($id)
    {
        $jobtype = JobType::find($id);
        return view('Admin/jobtype/edit_jobtype',compact('jobtype'));
    }

    
    public function updatejobtype(Request $request, $id)
    {
         $request->validate([
             'name' => 'required',
         ]);

        $jobtype = JobType::find($id);
        $jobtype->name = $request->name;
        $jobtype->save();

        if($id == 0){
            return redirect()->route('listjobtype')->with('message','jobtype saved successfully');
            }else{
        return redirect()->route('listjobtype')->with('message','jobtype updated successfully');
            }
       // return redirect()->route('listcategory');
    }

    
    public function deletejobtype($id)
    {
        $jobtype = JobType::find($id);
        $jobtype->delete();
        return redirect()->route('listjobtype')->with('message','jobtype deleted successfully');
    }
}
