<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Block;

class BlockController extends Controller
{
    public function list()
    {
        $block = Block::all();
        return view('ajax.block.index', get_defined_vars());
    }
    public function add()
    {
        return view('ajax.block.add',get_defined_vars());
    } 
    public function save(Request $req, $id = null)
    {
        $req->validate([
            'type' => 'required',
            'detail' => 'required',
        ]);
        if (is_null($id)) {
            $block = Block::create($req->except('_token'));
            $msg = 'Block created';
        } else {
            $block = Block::find($id);
            $block->update($req->except('_token'));
            $msg = 'Quotation Type updated';
        }
        return response()->json('Block saved');
    }
    public function edit($id)
    {
        $block = Block::find($id);
        return view('ajax.block.edit', get_defined_vars());
    }
    public function delete($id)
    {
        $block = Block::find($id);
        $block->delete();
        return response()->json('Block deleted');
    }

}
