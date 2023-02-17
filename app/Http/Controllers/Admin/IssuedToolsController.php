<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Tool;
use App\Job;
use App\IssuedTool;

class IssuedToolsController extends Controller
{
    public function show_form()
    {
        $jobs = Job::all();
        $tools = Tool::all();
        return view('Admin.issued_tools.create',get_defined_vars());
    }


    public function store_issued_tools(Request $req,$id = null){

        $req->validate([
            'job_id' => 'required',
            'tool_id' => 'required',
            'date_allocated' => 'required',
            'allocated_by' => 'required',
            
            'location' => 'required',
            'issued_to' => 'required',
        ]);

        if(is_null($id))
        {
            IssuedTool::create($req->except('_token'));
        }
        else
        {
            $data = $req->except('_token');
            $data['is_returned'] = $req->is_returned ?? 0;
            IssuedTool::where('id', $id)
            ->update($data);
        }

        return redirect()->back()->with('message','Issued Tool Saved Successfully');
    }
    public function issued_tools_list()
    {
        $issued_tools = IssuedTool::all();
        return view('Admin.issued_tools.issued_tools_list',get_defined_vars());
    }
    public function edit($id){
        $jobs = Job::all();
        $tools = Tool::all();
        $issued_tools = IssuedTool::find($id);
        return view('Admin.issued_tools.create',get_defined_vars());
    }
    public function delete($id)
    {
        IssuedTool::find($id)->delete();
        return back()->with('message', 'Issued tool deleted successfully');
    }
    public function returned_tool($id){
        IssuedTool::where('id', $id)
            ->update(['is_returned' => 1]);
            return redirect()->back()->with('message','Tool Returned');    }

            public function returned_tools(){
             $returned_tools =    IssuedTool::where('is_returned', true)->get();
            return view('Admin.issued_tools.returned_tools',get_defined_vars());    }
}
