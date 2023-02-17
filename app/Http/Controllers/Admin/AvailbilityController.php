<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Availbility;

class AvailbilityController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.availbility.add', get_defined_vars());
    }

    public function list()
    {
        $availbilities = Availbility::all();
        return view('ajax.availbility.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {

        $availbility = Availbility::find($id);
        return view('ajax.availbility.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'title' => 'required',
        ]);
        if (is_null($id)) {
            
            $payment_term=new Availbility();
            $payment_term->title=$req->title;
            $payment_term->save();
            $msg = 'Availbility created';
        } else {
            $payment_term = Availbility::find($id);
            $payment_term->title=$req->title;
            $payment_term->save();
            $msg = 'Availbility updated';
        }
        return response()->json('Availbility saved');
    }

    public function delete($id)
    {
        Availbility::find($id)->delete();
        return response()->json('Availbility deleted');
    }
}
