<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

use App\Supplier;
use App\Stock_item;
use App\Stock_receipt;
use App\Customer;
use App\StorePurchaseOrder;
use Dcblogdev\Dropbox\Facades\Dropbox;

class AdminController extends Controller
{
    public function Admin()
    {
        if (View::exists('Admin.admin')) {
            return view('Admin.admin')->with($data);
        }
    }
    public function user_Profile()
    {
        if (View::exists('Admin.user_profile.user_profile')) {
            return view('Admin.user_profile.user_profile');
        }
    }
    public function dashboard()
    {
        $customer_count = Customer::count();
        $supplier_count = Supplier::count();
        $stock_count = Stock_item::count();
        $store_po_count = StorePurchaseOrder::count();
        $customer = Customer::all();
        $stock = Stock_item::all();
        if (View::exists('Admin.dashboard.dashboard')) {
            return view('Admin.dashboard.dashboard', compact('customer', 'stock', 'customer_count', 'supplier_count', 'stock_count', 'store_po_count'));
        }
    }
    public function table_list()
    {
        if (View::exists('Admin.table_list.table_list')) {
            return view('Admin..table_list.table_list');
        }
    }
    public function typography()
    {
        if (View::exists('Admin.typography.typography')) {
            return view('Admin.typography.typography');
        }
    }
    public function icons()
    {
        if (View::exists('Admin.icons.icons')) {
            return view('Admin.icons.icons');
        }
    }
    public function maps()
    {
        if (View::exists('Admin.maps.maps')) {
            return view('Admin.maps.maps');
        }
    }
    public function notifications()
    {
        if (View::exists('Admin.notifications.notifications')) {
            return view('Admin.notifications.notifications');
        }
    }
    public function supplier($id = null)
    {
        $supplier =  Supplier::find($id);
        if (View::exists('Admin.supplier.create')) {
            return view('Admin.supplier.create')->with('supplier', $supplier);
        }
    }
    public function add_supplier(Request $request)
    {
        request()->validate([
            'supplier_code' => 'required|max:190',
            'name' => 'required',
            'email' => 'required|email',
            'work_phone' => 'required',
        ]);
        $id =  $request->id;
        if ($id == 0) {
            $supplier = new Supplier();
        } else {
            $supplier =  Supplier::find($id);
        }
        $supplier->name = $request->name;
        $supplier->supplier_code = $request->supplier_code;
        $supplier->work_phone = $request->work_phone;
        $supplier->email = $request->email;
        $supplier->address_1 = $request->address_1;
        $supplier->address_2 = $request->address_2;
        $supplier->address_3 = $request->address_3;
        $supplier->address_4 = $request->address_4;
        $supplier->notes = $request->notes;
        $supplier->save();
        if ($id == 0) {
            return redirect()->route('supplier_list')->with('message', 'Supplier saved successfully');
        } else {
            return redirect()->route('supplier_list')->with('message', 'Supplier updated successfully');
        }
    }
    public function supplier_list()
    {
        $data = Supplier::all();
        if (View::exists('Admin.supplier.supplier_list')) {
            return view('Admin.supplier.supplier_list')->with('suppliers', $data);
        }
    }
    public function remove_supplier(Request $request)
    {
        $id = $request->input('id');
        Supplier::destroy($id);
        return redirect()->route('supplier_list')->with('message', 'Supplier removed');
    }
    // stock item crud
    public function stock($id = null)
    {
        $stock =  Stock_item::find($id);
        if (View::exists('Admin.stock.create')) {
            return view('Admin.stock.create')->with('stock', $stock);
        }
    }
    public function add_stock(Request $request)
    {
        request()->validate([
            'stock_code' => 'required|max:190',
            'name' => 'required|max:190',
            'unit_of_measure' => 'required|max:190',
        ]);
        $id =  $request->id;
        if ($id == 0) {
            $stock = new Stock_item();
        } else {
            $stock =  Stock_item::find($id);
        }
        $stock->name = $request->name;
        $stock->stock_code = $request->stock_code;
        $stock->name = $request->name;
        $stock->unit_of_measure = $request->unit_of_measure;
        $stock->unit_cost = $request->unit_cost;
        $stock->margin = $request->margin;

        $stock->save();
        if ($id == 0) {
            return redirect()->route('stock_list')->with('message', 'Stock saved successfully');
        } else {
            return redirect()->route('stock_list')->with('message', 'Stock updated successfully');
        }
    }
    public function stock_list()
    {
        $data = Stock_item::all();
        if (View::exists('Admin.stock.stock_list')) {
            return view('Admin.stock.stock_list')->with('stocks', $data);
        }
    }
    public function remove_stock(Request $request)
    {
        $id = $request->input('id');
        Stock_item::destroy($id);
        return redirect()->route('stock_list')->with('message', 'Stock removed');
    }
    // Stock receipt crud
    public function receipt($id = null)
    {
        $receipt =  Stock_receipt::find($id);
        // dd($receipt);
        $stock =   Stock_item::all();
        $supplier =  Supplier::all();
        $data = [
            'receipt' => $receipt,
            'suppliers' => $supplier,
            'stocks' => $stock,

        ];
        if (View::exists('Admin.receipt.create')) {
            return view('Admin.receipt.create')->with($data);
        }
    }
    public function add_receipt(Request $request)
    {
        request()->validate([
            'date' => 'required',
            'supplier' => 'required',
            'stock_item' => 'required',
            'serial_number' => 'required',
            'quantity' => 'required|numeric',
            'unitprice' => 'required|numeric',
        ]);

        if(isset($request->receipt_id))
        {
            Stock_receipt::where('id',$request->id)
                ->update([
                'date'=> $request->date,
                'supplier' => $request->supplier,
                'stock_item' => $request->stock_item,
                'serial_number' => $request->serial_number,
                'quantity' => $request->quantity,
                'unitprice'=> $request->unitprice,
            ]);
        }else
        {
            $stock = Stock_receipt::create([
                'date'=> $request->date,
                'supplier' => $request->supplier,
                'stock_item' => $request->stock_item,
                'serial_number' => $request->serial_number,
                'quantity' => $request->quantity,
                'unitprice'=> $request->unitprice,
            ]);
        }
        // dd($stock);
        

        //dd($request->all());
/*
        $id =  $request->id;
        $supplier_id = $request->supplier;
        $stock_item_id =  $request->stock_item;
        if ($id == 0) {

            $supplier = Supplier::find($supplier_id);
            $stock = Stock_item::find($stock_item_id);
            $receipt = new Stock_receipt();
        } else {
            $supplier = Supplier::find($supplier_id);
            $stock = Stock_item::find($stock_item_id);
            $receipt =  Stock_receipt::find($id);
        }
        $receipt->supplier_id = $request->supplier;
        $receipt->date = $request->date;
        $receipt->stock_item_id = $request->stock_item;
        $receipt->serial_number = $request->serial_number;
        $receipt->quantity = $request->quantity;
        $receipt->unitprice = $request->unitprice;
        $receipt->save();
        */
        // $supplier->stock_receipt()->save($receipt);
        // $stock->stock_receipt()->save($receipt);
        return redirect()->route('receipt_list')->with('message', 'receipt updated successfully');
    }

    public function receipt_list($id = null)
    {
        $receipt =  Stock_receipt::find($id);
        $stocks =   Stock_item::all();
        $suppliers =  Supplier::all();
        $data = [
            'receipt' => $receipt,
            'suppliers' => $suppliers,
            'stocks' => $stocks,

        ];
        $receipts = Stock_receipt::all();
        if (View::exists('Admin.receipt.receipt_list')) {
            return view('Admin.receipt.receipt_list', get_defined_vars());
        }
    }
    public function remove_receipt(Request $request)
    {
        $id = $request->input('id');
        Stock_receipt::destroy($id);
        return redirect()->route('receipt_list')->with('message', 'Receipt removed');
    }
}
