<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
//namespace App\Http\Controllers;
use App\Customer;
use App\AccountType;
use Illuminate\Http\Request;
use App\Rules\CustomerNoteRule;
use App\Rules\CustomerContactEmailsRule;

class CustomerController extends Controller
{

  public function listcustomer()
  {
    $account_types = AccountType::all();
    $customer = Customer::all();
    return view('Admin.customer.list_customer', get_defined_vars());
  }
  public function addcustomer()
  {
    $account_types = AccountType::all();
    return view('Admin.customer.add_customer', get_defined_vars());
  }
  public function storecustomer(Request $request)
  {
    //dd($request->all());
    $request->validate([
      'notes'=>[new CustomerNoteRule($request)],
      'name' => 'required',
      'code' => 'required|unique:customers',
      'email' => 'required',
      'account_type_id'=>'required',
    ]);

    $customer = Customer::create([
      'code' => $request->code,
      'name' => $request->name,
      'email' => $request->email,
      'workphone' => $request->workphone,
      'address1' => $request->address1,
      'address2' => $request->address2,
      'address3' => $request->address3,
      'address4' => $request->address4,
      'eircode' => $request->eircode,
      'notes' => $request->notes,
      'status' => $request->status,
      'service_contract' => $request->service_contract,
      'account_type_id' => $request->account_type_id,
    ]);
    return redirect()->route('listcustomer')->with('message', 'Customer created successfully');
  }
  public function show($id)
  {
    //
  }
  public function editcustomer($id)
  {
    $customer = Customer::find($id);
    $account_types = AccountType::all();
    return view('Admin.customer.edit_customer', get_defined_vars());
  }
  public function updatecustomer(Request $request, $id)
  {
    //dd($request->all());
    $request->validate([
      'notes'=>[new CustomerNoteRule($request)],
      'name' => 'required',
      'code' => 'required',
      'email' => 'required',
      'account_type_id'=>'required',
      'cc_email_1'=>[new CustomerContactEmailsRule()],
      'cc_email_2'=>[new CustomerContactEmailsRule()],
      'cc_email_3'=>[new CustomerContactEmailsRule()],
      'cc_email_4'=>[new CustomerContactEmailsRule()],
      'cc_email_5'=>[new CustomerContactEmailsRule()],
    ]);

    $customer = Customer::find($id);
    $customer->code = $request->code;
    $customer->name = $request->name;
    $customer->email = $request->email;
    $customer->workphone = $request->workphone;
    $customer->address1 = $request->address1;
    $customer->address2 = $request->address2;
    $customer->address3 = $request->address3;
    $customer->address4 = $request->address4;
    $customer->status = $request->status;
    $customer->service_contract = $request->service_contract;
    $customer->eircode = $request->eircode;
    $customer->notes = $request->notes;
    $customer->account_type_id = $request->account_type_id;
    $customer->cc_email_1 = $request->cc_email_1;
    $customer->cc_email_2 = $request->cc_email_2;
    $customer->cc_email_3 = $request->cc_email_3;
    $customer->cc_email_4 = $request->cc_email_4;
    $customer->cc_email_5 = $request->cc_email_5;
    $customer->save();

    return redirect()->route('listcustomer')->with('message', 'Customer is updated successfully');
  }
  public function deletecustomer($id)
  {
    // dd($id);
    $customer = Customer::find($id);
    $customer->delete();
    return redirect()->route('listcustomer')->with('message', 'Customer deleted successfully');
  }

  public function getcustomer($id)
  {
    $customer = Customer::find($id);
    $data = array('name' => $customer->name, 'address' => $customer->address1 . ' ' . $customer->address2 . ' ' . $customer->address3 . ' ' . $customer->address4);
    return response()->json($data);
  }
  public function addSiteDetail(Request $request)
  {
    Customer::where('id', $request->id)
      ->update(['pos' => $request->pos, 'no_of_tanks' => $request->no_of_tanks]);
    return redirect()->back()->with('message', 'Successfully Updated');
  }

  public function setEmails($id)
  {
    $customer = Customer::find($id);
    return view('Admin.customer.set_emails', get_defined_vars());
  }

  public function updateEmails(Request $request, $id)
  {
    //dd($request->all());
    $request->validate([
      'cc_email_1'=>[new CustomerContactEmailsRule()],
      'cc_email_2'=>[new CustomerContactEmailsRule()],
      'cc_email_3'=>[new CustomerContactEmailsRule()],
      'cc_email_4'=>[new CustomerContactEmailsRule()],
      'cc_email_5'=>[new CustomerContactEmailsRule()],
    ]);

    $customer = Customer::find($id);
    $customer->cc_email_1 = $request->cc_email_1;
    $customer->cc_email_2 = $request->cc_email_2;
    $customer->cc_email_3 = $request->cc_email_3;
    $customer->cc_email_4 = $request->cc_email_4;
    $customer->cc_email_5 = $request->cc_email_5;
    $customer->save();

    return redirect()->route('listcustomer')->with('message', 'Customer Emails Updated Successfully');
  }
}
