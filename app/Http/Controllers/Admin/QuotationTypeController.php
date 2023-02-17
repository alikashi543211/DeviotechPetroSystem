<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\QuotationType;

class QuotationTypeController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.quotation_type.add', get_defined_vars());
    }

    public function list()
    {
        $quotation_types = QuotationType::all();
        return view('ajax.quotation_type.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {
        $quotation_type = QuotationType::find($id);
        return view('ajax.quotation_type.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'type' => 'required',
            'cost_1st_nozzle' => 'required',
            'cost_other_nozzles' => 'required',
        ]);
        if (is_null($id)) {
            $quotation_type = QuotationType::create($req->except('_token'));
            $msg = 'Quotation Type created';
        } else {
            $quotation_type = QuotationType::find($id);
            $quotation_type->update($req->except('_token'));
            $msg = 'Quotation Type updated';
        }
        return response()->json('Quotation Type saved');
    }

    public function delete($id)
    {
        QuotationType::find($id)->delete();
        return response()->json('Quotation Type deleted');
    }
}
