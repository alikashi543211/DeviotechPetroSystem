<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Dcblogdev\Dropbox\Facades\Dropbox;
use Illuminate\Support\Facades\File;

class DocumentController extends Controller
{
    public function template()
    {
        $templates = Dropbox::files()->listContents("/Petro/Templates");
        return view('Admin.document.template', get_defined_vars());
    }

    public function template_upload(Request $req)
    {
        $extension = $req->file->getClientOriginalExtension();
        $fileName = rand().'.'.$extension;
        $uploadPath = "/Petro/Templates/".$fileName;

        if(!Dropbox::files()->listContents('/Petro/Templates/')['exist'])
            Dropbox::files()->createFolder('/Petro/Templates/');

        Dropbox::files()->upload($uploadPath,$req->file);
        return redirect()->back()->with('message','Template Uploaded Successfully');
    }

    public function site_procedure()
    {
        $site_proc = Dropbox::files()->listContents("/Petro/Site Procedures");
        return view('Admin.document.site_procedure', get_defined_vars());
    }

    public function site_procedure_upload(Request $req)
    {
        $extension = $req->file->getClientOriginalExtension();
        $fileName = rand().'.'.$extension;
        $uploadPath = "/Petro/Site Procedures/".$fileName;

        if(!Dropbox::files()->listContents('/Petro/Site Procedures/')['exist'])
            Dropbox::files()->createFolder('/Petro/Site Procedures/');

        Dropbox::files()->upload($uploadPath,$req->file);
        return redirect()->back()->with('message','Site Procedures Uploaded Successfully');
    }

    public function quality()
    {
        $quality = Dropbox::files()->listContents("/Petro/Quality");
        return view('Admin.document.quality', get_defined_vars());
    }

    public function quality_upload(Request $req)
    {
        $extension = $req->file->getClientOriginalExtension();
        $fileName = rand().'.'.$extension;
        $uploadPath = "/Petro/Quality/".$fileName;

        if(!Dropbox::files()->listContents('/Petro/Quality/')['exist'])
            Dropbox::files()->createFolder('/Petro/Quality/');

        Dropbox::files()->upload($uploadPath,$req->file);
        return redirect()->back()->with('message','Quality Uploaded Successfully');
    }

    public function delete_document(Request $req)
    {
        // dd($req->path);
        // dd($req->path);
        Dropbox::files()->delete($req->path);
        return redirect()->back()->with('message', 'Document Deleted Successfully');
    }
}
