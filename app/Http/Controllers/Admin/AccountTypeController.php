<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\AccountType;

class AccountTypeController extends Controller
{
    public function add(Request $req)
    {
        return view('ajax.account_type.add', get_defined_vars());
    }

    public function list()
    {
        $account_types = AccountType::all();
        return view('ajax.account_type.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {
        $account_type = AccountType::find($id);
        return view('ajax.account_type.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {
        $req->validate([
            'code' => 'required',
            'account_type' => 'required',
        ]);
        if (is_null($id)) {
            $account_type = AccountType::create($req->except('_token'));
            $msg = 'Account Type created';
        } else {
            $account_type = AccountType::find($id);
            $account_type->update($req->except('_token'));
            $msg = 'Account Type updated';
        }
        return response()->json('Account Type saved');
    }

    public function delete($id)
    {
        AccountType::find($id)->delete();
        return response()->json('Account Type deleted');
    }
}
