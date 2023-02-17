<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\PaymentTerm;

class PaymentTermController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.payment_term.add', get_defined_vars());
    }

    public function list()
    {
        $payment_terms = PaymentTerm::all();
        return view('ajax.payment_term.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {

        $payment_term = PaymentTerm::find($id);
        return view('ajax.payment_term.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'title' => 'required',
        ]);
        if (is_null($id)) {
            
            $payment_term=new PaymentTerm();
            $payment_term->title=$req->title;
            $payment_term->save();
            $msg = 'Payment Term created';
        } else {
            $payment_term = PaymentTerm::find($id);
            $payment_term->title=$req->title;
            $payment_term->save();
            $msg = 'Payment Term updated';
        }
        return response()->json('Payment Term saved');
    }

    public function delete($id)
    {
        PaymentTerm::find($id)->delete();
        return response()->json('Payment Term deleted');
    }
}
