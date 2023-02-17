<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Communication;
class CommunicationController extends Controller
{
    public function list()
    {
        $communication = Communication::all();
        return view('ajax.communication.index', get_defined_vars());
    }
    public function add()
    {
        return view('ajax.communication.add',get_defined_vars());
    } 
    public function save(Request $req, $id = null)
    {
        $req->validate([
            
            'action_taken' => 'required',
        ]);
        if (is_null($id)) {
            $communication = Communication::create($req->except('_token'));
            $msg = 'communication created';
        } else {
            $communication = Communication::find($id);
            $communication->update($req->except('_token'));
            $msg = 'Communication Type updated';
        }
        return response()->json('communication saved');
    }
    public function edit($id)
    {
        $communication = Communication::find($id);
        return view('ajax.communication.edit', get_defined_vars());
    }
    public function delete($id)
    {
        $communication = Communication::find($id);
        $communication->delete();
        return response()->json('communication deleted');
    }

}
