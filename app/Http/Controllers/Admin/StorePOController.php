<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\StorePurchaseOrder;
use App\Supplier;
use PHPUnit\Framework\Constraint\Count;
use App\CcEmail;

class StorePOController extends Controller
{

    public function store_po_index()
    {
        $store_po = StorePurchaseOrder::all();
        $supplier = Supplier::all();
        $po_number = StorePurchaseOrder::count();
        return view('Admin.store_po.store_po_index',compact('store_po','supplier','po_number'));
    }
    public function store_po_add_form()
    {
        $supplier = Supplier::all();
        $po_number = StorePurchaseOrder::count();
        return view('Admin.store_po.store_po_add',compact('supplier','po_number'));
    }

    public function store_po(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'po_number' =>'required',
            'date'=>'required',
            'supplier_id'=> 'required',
            'items_required' => 'required',
            'purchased_by'=> 'required',
        ]);
        $store_po = StorePurchaseOrder::create([
            'po_number' => $request->po_number,
            'date' => $request->date,
            'supplier_id' => $request->supplier_id,
            'items_required' => $request->items_required,
            'specification' => $request->specification,
            'value' => $request->value,
            'extra_to_job' => $request->extra_to_job ?? 0,
            'purchased_by' => $request->purchased_by,
        ]);
        return redirect()->route('store_po_index')->with('message','store purchase order is created');
    }
    public function store_po_edit($id)
    {
        //$customer = Supplier::all();
        $store_po = StorePurchaseOrder::find($id);
        $supplier = Supplier::find($store_po->supplier_id);
        return view('Admin.store_po.store_po_edit',compact('store_po','supplier'));
    }


    public function store_po_update(Request $request, $id)
    {
        $request->validate([
            'date' => 'required',
            'supplier_id'=> 'required',
            'items_required' => 'required',
            'purchased_by'=> 'required',
        ]);
        $store_po = StorePurchaseOrder::find($id);
        $store_po->date = $request->date;
        $store_po->value = $request->value;
        $store_po->items_required = $request->items_required;
        $store_po->specification = $request->specification;
        $store_po->purchased_by = $request->purchased_by;
        $store_po->extra_to_job = $request->extra_to_job;
        $store_po->save();
        return redirect()->route('store_po_index')->with('message','store purchase order is updated');

    }


    public function store_po_delete($id)
    {
        $store_po = StorePurchaseOrder::find($id);
        $store_po->delete();
        return redirect()->route('store_po_index')->with('message','store purchase order is deleted');
    }

    public function store_po_email(Request $req)
    {
        $data = StorePurchaseOrder::find($req->id);
        sendMail([
                'view' => "emails.store_po_email",
                'to' => $data->supplier->email,
                'subject' => "Store Purchase Order",
                'data' => $data,
            ]);
        $cc_mail=CcEmail::pluck('email')->first();
            sendMail([
                'view' => "emails.store_po_email",
                'to' => $cc_mail,
                'subject' => "Store Purchase Order",
                'data' => $data,
            ]);
        return response()->json(['success' => 'Email successfully sent']);
    }
}