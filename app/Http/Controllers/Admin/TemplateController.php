<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Template;
use Dcblogdev\Dropbox\Facades\Dropbox;
use Illuminate\Support\Facades\File;

class TemplateController extends Controller
{
    public function show_form()
    {
       
        return view('Admin.templates.create');
    }
    public function store(Request $req,$id = null){
        //dd($req->all());
        if(is_null($id))
        $req->validate([
            'role' => 'required',
        ]);
        else
        $req->validate([
            'role' => 'required',
        ]);
    
        if(is_null($id))
        {
            $extension = $req->path->getClientOriginalExtension();
            $fileName = rand().'.'.$extension;
            // // dd($fileName);
            // $folder = "/Templates";
            // $response = Dropbox::files()->createFolder($folder);
            // dd($response['path_display']);
            // $f->job_folder = $response['path_display'];
            
            // $uploadPath = "/Templates/5/".$fileName;
            //             //  dd($uploadPath);
            // // $job->job_folder."/".$fileName
    
            // $res = Dropbox::files()->upload($uploadPath,$req->path);
            // dd($res);
            $document_path =  uploadFile($req->path,'uploads/templates');
            $create_data = $req->except('_token');
            $create_data['path'] = $document_path;
            Template::create($create_data);
        }
        else
        {
            
            if($req->path)
            $data = ['path' => uploadFile($req->path,'uploads/templates'), 'name' => $req->name, 'role' => $req->role];
            else
            $data = ['name' => $req->name, 'role' => $req->role];
            
            Template::where('id', $id)
            ->update($data);
        }

        return redirect()->back()->with('message','Template Saved Successfully');
    }
    public function list()
    {
        $templates = Template::all();
        return view('Admin.templates.templates_list',get_defined_vars());
    }
    public function edit($id){
        
        $template = Template::find($id);
        return view('Admin.templates.create',get_defined_vars());
    }
    public function delete($id)
    {
        Template::find($id)->delete();
        return back()->with('message', 'Template deleted successfully');
    }
}
