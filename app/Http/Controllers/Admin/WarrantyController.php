<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Warranty;

class WarrantyController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.warranty.add', get_defined_vars());
    }

    public function list()
    {
        $warranties = Warranty::all();
        return view('ajax.warranty.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {

        $warranty = Warranty::find($id);
        return view('ajax.warranty.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'title' => 'required',
        ]);
        if (is_null($id)) {
            
            $payment_term=new Warranty();
            $payment_term->title=$req->title;
            $payment_term->save();
            $msg = 'Warranty created';
        } else {
            $payment_term = Warranty::find($id);
            $payment_term->title=$req->title;
            $payment_term->save();
            $msg = 'Warranty updated';
        }
        return response()->json('Warranty saved');
    }

    public function delete($id)
    {
        Warranty::find($id)->delete();
        return response()->json('Warranty deleted');
    }
}
