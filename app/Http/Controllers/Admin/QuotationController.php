<?php

namespace App\Http\Controllers\Admin;

use App\Block;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Quotation;
use App\Customer;
use App\Job;
use App\Signatory;
use App\QuotationItem;
use App\QuotationPayment;
use App\QuotationDocument;
use Illuminate\Support\Facades\Auth;
use App\Vat;
use App\Availbility;
use App\Warranty;
use App\PaymentTerm;
use App\Rules\MarginRule;
use Dcblogdev\Dropbox\Facades\Dropbox;
use Illuminate\Support\Facades\File;

class QuotationController extends Controller
{
    public function add(Request $req)
    {
         $warranties = Warranty::all();
        $customer = Customer::all();
        $signatories = Signatory::all();
        $warranties = Warranty::all();
        $availbilities = Availbility::all();
        $payment_terms = PaymentTerm::all();
        $vats = Vat::all();
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        return view('Admin.quotation.add', get_defined_vars());
    }

    public function list(Request $req)
    {
        $vats = Vat::all();
        $availbilities = Availbility::all();
        $warranties = Warranty::all();
        $payment_terms = PaymentTerm::all();
        $customer = Customer::all();
        $signatories = Signatory::all();
        $block = Block::all();
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        // dd($block2);

        if (auth()->user()->role == 'admin')
            $quotations = Quotation::where('job_id','=',null)->where('status','!=','lost_archieve')->get();
        else
            $quotations = Quotation::whereUserId(auth()->user()->id)->where('job_id','=',null)->where('status','!=','lost_archieve')->get();

        return view('Admin.quotation.index', get_defined_vars());
    }

    public function edit(Request $req, $id, $tab=null)
    {
        $vats = Vat::all();
        $availbilities = Availbility::all();
        $warranties = Warranty::all();
        $payment_terms = PaymentTerm::all();
        $quotation = Quotation::find($id);
        $customer = Customer::all();
        $signatories = Signatory::all();
        $block = Block::all();
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        $dropbox = Dropbox::files()->listContents($quotation->quotation_folder);
        return view('Admin.quotation.edit', get_defined_vars());
    }

    public function save(Request $request, $id = null)
    {
        $request->validate([
            'customer_id' => 'required',
            'signatory_id' => 'required',
        ]);
        if (is_null($id)) {
            $quotation = Quotation::create($request->except('_token'));
            for ($i=0; $i < count($request->item); $i++) {
                if(isset($request->extra_to_job[$i]))
                {
                    $extra_to_job=1;
                }else
                {
                    $extra_to_job=0;
                }
                QuotationItem::create([
                    'quotation_id' => $quotation->id,
                    'item' => $request->item[$i],
                    'qty' => $request->qty[$i],
                    'sale_price' => $request->sale_price[$i],
                    'cost_price' => $request->cost_price[$i],
                    'extra_to_job'=>$extra_to_job,
                ]);
            }
            $msg = 'Quotation created';

            //return redirect($request->direction)->with('message', $msg);
        } else {
            $quotation = Quotation::find($id);
            $quotation->update($request->except('_token'));
            QuotationItem::where('quotation_id',$id)->delete();
            for ($i=0; $i < count($request->item); $i++) {
                if(isset($request->extra_to_job[$i]))
                {
                    $extra_to_job=1;
                }else
                {
                    $extra_to_job=0;
                }
                QuotationItem::create([
                    'quotation_id' => $id,
                    'item' => $request->item[$i],
                    'qty' => $request->qty[$i],
                    'sale_price' => $request->sale_price[$i],
                    'cost_price' => $request->cost_price[$i],
                    'extra_to_job'=>$extra_to_job,
                ]);
            }

            $msg = 'Quotation updated';
        }
        if ($quotation) {
            $f = Quotation::find($quotation->id);

            if(!Dropbox::files()->listContents('/Petro/Quotations/')['exist'])
                Dropbox::files()->createFolder('/Petro/Quotations/');

            $folder = "/Petro/Quotations/".$quotation->id;

            if(!Dropbox::files()->listContents($folder)['exist']){
                $response = Dropbox::files()->createFolder($folder);
                $f->quotation_folder = $response['path_display'];
                $f->save();
            }
        }

        return redirect($request->direction)->with('message', $msg);
    }

    public function delete($id)
    {
        Quotation::find($id)->delete();
        return back()->with('message', 'Quotation deleted successfully');
    }

    /* QUOTATION ITEM */
    public function saveQuotationItem(Request $req, $id = null)
    {
        $req->validate([
            'quotation_id' => 'required',
            'item' => 'required',
            'sale_price' => 'required',
            'margin' => 'required',
        ]);

        if (is_null($id)) {
            QuotationItem::create($req->except('_token'));
        } else {
            QuotationItem::where('id', $id)
                ->update($req->except('_token'));
        }

        return response()->json('Quotation item saved');
    }
    public function editQuotationItem($id)
    {
        $item = QuotationItem::find($id);
        return view('ajax.quotation.edit_item', get_defined_vars());
    }
    public function getQuotationItems($quotation_id)
    {
        $list = QuotationItem::where('quotation_id', $quotation_id)->get();
        return view('ajax.quotation.items', get_defined_vars());
    }
    public function deleteQuotationItem($id)
    {
        QuotationItem::find($id)->delete();
        return response()->json('Quotation item deleted');
    }
    ///quotation document
    public function get_Q_Document($quotation_id)
    {
        $quotation = Quotation::find($quotation_id);
        $dropbox = Dropbox::files()->listContents($quotation->quotation_folder);
        return view('ajax.quotation.quotation_document', get_defined_vars());
    }
    public function save_Q_Document(Request $req)
    {
        $quotation = Quotation::find($req->quotation_id);
        $extension = $req->file->getClientOriginalExtension();
        $fileName = rand().'.'.$extension;
        $uploadPath = $quotation->quotation_folder."/".$fileName;

        if(!Dropbox::files()->listContents($quotation->quotation_folder)['exist'])
            Dropbox::files()->createFolder($quotation->quotation_folder);

        $res = Dropbox::files()->upload($uploadPath,$req->file);

        return response()->json('Document Uploaded');
    }
    public function delete_Q_document($q_id,$id)
    {
        $quotation = Quotation::find($q_id);
        $path = $quotation->quotation_folder."/".$id;
        Dropbox::files()->delete($path);
        return redirect()->back();
    }

    //convert to job
    public function move_to_job($id)
    {
        $quotation = Quotation::find($id);
        $customer_id =$quotation->customer_id;
        $warranty_id=$quotation->warranty_id;
        $warranty=Warranty::where("id",$warranty_id)->pluck("title")->first();
        $job = new Job();
        $newjob= $job::create([
            'customer_id'=>$customer_id,
            'user_id'=> Auth::user()->id,
            'warranty'=>$warranty,
        ]);
        $quotation->job_id = $newjob->id;
        $quotation->status="Won";
        $quotation->save();

        if ($newjob) {
            $mj = Job::find($newjob->id);

            if(!Dropbox::files()->listContents('/Petro/Jobs/')['exist'])
                Dropbox::files()->createFolder('/Petro/Jobs/');

            $folder = "/Petro/Jobs/".$newjob->id;
            $response = Dropbox::files()->createFolder($folder);
            $mj->job_folder = $response['path_display'];
            $mj->save();
        }

        return redirect()->route('job.edit',['id'=>$newjob->id])->with('message','The Quotation has been converted to job');
    }
    /* QUOTATION PAYMENT */
    public function saveQuotationPayment(Request $req, $id = null)
    {
        $req->validate([
            'quotation_id' => 'required',
            'date' => 'required',
            'invoice_no' => 'required',
            'details' => 'required',
            'amount_received' => 'required'
        ]);

        if (is_null($id)) {
            $data=QuotationPayment::create($req->except('_token'));

        } else {
            QuotationPayment::where('id', $id)
                ->update($req->except('_token'));
                $payment=QuotationPayment::find($id);
                $payment->date=strtolower($req->date);
                $payment->save();
        }

        return response()->json('Quotation payment saved');
    }
    public function editQuotationPayment($id)
    {
        $item = QuotationPayment::find($id);
        return view('ajax.quotation.edit_payment', get_defined_vars());
    }
    public function getQuotationPayments($quotation_id)
    {
        $list = QuotationPayment::where('quotation_id', $quotation_id)->get();
        return view('ajax.quotation.payments', get_defined_vars());
    }
    public function deleteQuotationPayment($id)
    {
        QuotationPayment::find($id)->delete();
        return response()->json('Quotation payment deleted');
    }

    public function lostList(Request $req)
    {
        if(isset($req->lost))
        {
            // dd("Test");
            Quotation::where('id',$req->lost)->update(['status' => "lost_archieve"]);
        }
        $vats = Vat::all();
        $availbilities = Availbility::all();
        $warranties = Warranty::all();
        $payment_terms = PaymentTerm::all();
        $customer = Customer::all();
        $signatories = Signatory::all();
        $block = Block::all();
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        // dd($block2);

        if (auth()->user()->role == 'admin')
            $quotations = Quotation::where('job_id','=',null)->where('status','lost_archieve')->get();
        else
            $quotations = Quotation::whereUserId(auth()->user()->id)->where('job_id','=',null)->where('status','lost_archieve')->get();

        return view('Admin.quotation.lost', get_defined_vars());
    }
}