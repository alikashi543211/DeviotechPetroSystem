<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Vat;

class VatController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.vat.add', get_defined_vars());
    }

    public function list()
    {
        $vats = Vat::all();
        return view('ajax.vat.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {

        $vat = Vat::find($id);
        return view('ajax.vat.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'vat' => 'required',
        ]);
        if (is_null($id)) {
            
            $vat=new Vat();
            $vat->vat=$req->vat;
            $vat->save();
            $msg = 'Vat created';
        } else {
            $vat = Vat::find($id);
            $vat->vat=$req->vat;
            $vat->save();
            $msg = 'Vat updated';
        }
        return response()->json('Vat saved');
    }

    public function delete($id)
    {
        Vat::find($id)->delete();
        return response()->json('Vat deleted');
    }
}
