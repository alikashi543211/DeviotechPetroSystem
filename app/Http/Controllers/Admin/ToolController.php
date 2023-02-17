<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Tool;
use App\Job;
use App\IssueTool;
use App\Staff;

class ToolController extends Controller
{

    public function tool_index()
    {
        $tool = Tool::all();
        $jobs = Job::all();
        return view('Admin.tool.tool_index',get_defined_vars());
    }
    public function tool_add()
    {
        return view('Admin.tool.tool_add');
    }
    public function store_tool(Request $request)
    {
        //dd($request->all());
        $request->validate([
            'tool_code' => 'required',
            'description'=> 'required|max:80',
            'serial_no' => 'required',
            'date_purchased' => 'required',
            'purchase_price' => 'required',
            'notes'=> 'required|max:180',
        ]);
        $tool = Tool::create([
            'tool_code' => $request->tool_code,
            'description' => $request->description,
            'serial_no' => $request->serial_no,
            'date_purchased' => $request->date_purchased,
            'purchase_price' => $request->purchase_price,
            'notes' => $request->notes,
        ]);
        return redirect()->route('tool_index')->with('message','tool is created successfuly');
    }
    public function show($id)
    {
        //
    }
    public function tool_edit($id)
    {
        $tool = Tool::find($id);
        return view('Admin.tool.tool_edit',compact('tool'));
    }

    public function tool_update(Request $request, $id)
    {
        $tool = Tool::find($id);
        $tool->tool_code = $request->tool_code;
        $tool->description = $request->description;
        $tool->serial_no = $request->serial_no;
        $tool->date_purchased = $request->date_purchased;
        $tool->purchase_price = $request->purchase_price;
        $tool->notes =$request->notes;
        $tool->save();

        return redirect()->route('tool_index')->with('message','Tool is updated Successfuly');
    }


    public function tool_delete($id)
    {
        $tool = Tool::find($id);
        $tool->delete();
        return redirect()->route('tool_index')->with('message','tool is deleted successfully');
    }

    public function tool_issue()
    {
        $jobs = Job::all();
        $tools = Tool::all();
        $staff = Staff::all();
        return view('Admin.tool.tool_issue', get_defined_vars());
    }

    public function tool_issue_save(Request $req)
    {
        $req->validate([
            'tool_id' => 'required',
        ]);
        $issue_tool = IssueTool::create($req->except('_token'));
        $msg = 'Quotation Type created';
        return redirect()->route('tool_return')
        ->with('message', $msg.', you can manage Issued Tools\'s here');
    }

    public function get_tool($id)
    {
        $tool = Tool::find($id);
        $data = array('serial' => $tool->serial_no);
        return response()->json($data);
    }

    public function tool_return()
    {
        $tools = IssueTool::where('status', '=', 'Issued')->get();
        return view('Admin.tool.tool_return', get_defined_vars());
    }

    public function tool_return_save(Request $req)
    {
        if (isset($req->id)) {
            $tool = IssueTool::find($req->id);
            $tool->date_returned = $req->date_returned;
            $tool->status = "Returned";
            $tool->save();
        }

        return redirect()->route('tool_return');
    }
}
