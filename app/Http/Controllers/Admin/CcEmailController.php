<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CcEmail;

class CcEmailController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.cc.add', get_defined_vars());
    }

    public function list()
    {
        $vats = CcEmail::all();
        return view('ajax.cc.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {

        $vat = CcEmail::find($id);
        return view('ajax.cc.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        if (is_null($id)) {
            $req->validate([
            'email' => 'required|email|unique:cc_emails'
            ]);
            $vat=new CcEmail();
            $vat->email=$req->email;
            $vat->save();
            $msg = 'CC created';
        } else {
            $req->validate([
            'email' => 'required|email'
        ]);
            $vat = CcEmail::find($id);
            $vat->email=$req->email;
            $vat->save();
            $msg = 'CC updated';
        }
        return response()->json('CC saved');
    }
}
