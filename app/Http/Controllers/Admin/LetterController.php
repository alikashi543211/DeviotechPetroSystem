<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Letter;
use App\Customer;
use App\Signatory;
use Mail;

class LetterController extends Controller
{
    public function add(Request $req)
    {
        $customer = Customer::find($req->customer_id);
        $signatory = Signatory::all();
        return view('Admin.letter.add', get_defined_vars());
    }

    public function list(Request $req)
    {
        $customer = Customer::all();
        $signatory = Signatory::all();
        $letter = Letter::all();
        return view('Admin.letter.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {
        $letter = Letter::find($id);
        $customer = Customer::find($letter->customer_id);
        $signatory = Signatory::all();
        return view('Admin.letter.edit', get_defined_vars());
    }

    public function save(Request $req, $id = null)
    {

        $tab="emails";
        $req->validate([
            'customer_id' => 'required',
            'signatory_id' => 'required'
        ]);

        if(is_null($id))
        {
            $letter = Letter::create($req->except('_token'));
            $msg = 'Email created';
        }
        else
        {
            $letter = Letter::find($id);
            if(isset($req->customer_id))
            {
                $letter->update($req->except('_token','customer_id'));
            }else
            {
                $letter->update($req->except('_token'));
            }            
            $msg = 'Email updated';
        }
        if($req->save_option=="save-email")
        {
            $customer=Customer::where("id",$req->customer_id)->first();
            $sig=Signatory::where("id",$letter->signatory_id)->first();
            $data=['email'=>$customer->email,'code'=>$customer->code,'signatory'=>$sig->signatory,'datee'=>$letter->created_at,'title'=>$letter->title,'address'=>$letter->address,'salutation'=>$letter->salutation,'internal_notes'=>$letter->internal_notes,'body'=>$letter->body];
            Mail::send('emails.letter',['data' => $data], function ($send) use($data){
            $send->to($data['email'])->subject('Customer Letter');
            });
        }
        if($req->ajax())
        {
            return response()->json("Email Created");
        }else
        {
            if(isset($req->customer_id))
            {
                return redirect()->to('admin/customer_history/history/'.$req->customer_id.'/emails');
            }else
            {
                return redirect()->route('letter.index');
            }
        }
        return redirect()->route('customer_history.history', ['id'=>$req->customer_id,'tab'=>$tab])
        ->with('message', $msg.', you can manage Letter\'s here');
    }

    public function delete($id)
    {
        $tab = "emails";
        $letter = Letter::find($id);
        $customer_id = $letter->customer_id;
        $letter->delete();
        return redirect()->route('customer_history.history', ['id'=>$customer_id ,'tab'=>$tab])
        ->with('message', 'Email deleted successfully');
    }
}
