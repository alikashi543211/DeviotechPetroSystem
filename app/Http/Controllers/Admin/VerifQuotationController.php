<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Customer;
use App\Signatory;
use App\QuotationType;
use App\VerifQuotation;
use App\VerifQuotationItem;
use App\Job;
use App\Vat;
use App\Warranty;
use Auth;
use App\Block;
use Dcblogdev\Dropbox\Facades\Dropbox;
use Illuminate\Support\Facades\File;

class VerifQuotationController extends Controller
{
    public function add(Request $req)
    {
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        $customer = Customer::all();
        $vats = Vat::all();
        $warranties = Warranty::all();
        $signatories = Signatory::all();
        $quotation_type = QuotationType::all();
        $customer_id = Job::find($req->job_id);

        return view('Admin.verif_quotation.add', get_defined_vars());
    }

    public function list(Request $req)
    {
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        $customer = Customer::all();
        $vats = Vat::all();
        $warranties = Warranty::all();
        $signatories = Signatory::all();
        $quotation_type = QuotationType::all();
        if(auth()->user()->role == 'admin')
            $quotations = VerifQuotation::where('job_id','=',null)->orderBy('id', 'desc')->get();
        else
            $quotations = VerifQuotation::whereUserId(auth()->user()->id)->where('job_id','=',null)->orderBy('id', 'desc')->get();

        return view('Admin.verif_quotation.index', get_defined_vars());
    }

    public function edit(Request $req, $id)
    {
        $block1=Block::where("type",'Block 1')->get();
        $block2=Block::where("type",'Block 2')->get();
        $quotation = VerifQuotation::find($id);
        $customer = Customer::all();
        $signatories = Signatory::all();
        $quotation_type = QuotationType::all();
        $vats = Vat::all();
        $warranties = Warranty::all();
        $dropbox = Dropbox::files()->listContents($quotation->verif_quotations_folder);

        return view('Admin.verif_quotation.edit', get_defined_vars());
    }

    public function save(Request $request, $id = null)
    {
        $request->validate([
            'customer_id' => 'required',
            'signatory_id' => 'required',
        ]);

        if(is_null($id))
        {
            $quotation = VerifQuotation::create($request->except('_token'));
            for ($i=0; $i < count($request->number) ; $i++) {
                VerifQuotationItem::create([
                    'verif_quotation_id' => $quotation->id,
                    'number' => $request->number[$i],
                    'nozzles' => $request->nozzles[$i],
                    'cost_1st_nozzle' => $request->cost_1st_nozzle[$i],
                    'cost_other_nozzles' => $request->cost_other_nozzles[$i],
                    'cost_all_nozzles' => $request->cost_all_nozzles[$i],
                    'type' => $request->type[$i],
                ]);
            }
            $msg = 'Verification Quotation created';

            if ($quotation) {
                $f = VerifQuotation::find($quotation->id);

                if(!Dropbox::files()->listContents('/Petro/Verification Quotations/')['exist'])
                    Dropbox::files()->createFolder('/Petro/Verification Quotations/');

                $folder = "/Petro/Verification Quotations/".$quotation->id;
                $response = Dropbox::files()->createFolder($folder);
                $f->verif_quotations_folder = $response['path_display'];
                $f->save();
            }
        }
        else
        {
            $quotation = VerifQuotation::find($id);
            $quotation->update($request->except('_token'));
            VerifQuotationItem::where('verif_quotation_id',$id)->delete();
            for ($i=0; $i < count($request->number) ; $i++) {
                $verif = new VerifQuotationItem();
                $verif->verif_quotation_id = $id;
                $verif->number = $request->number[$i];
                $verif->nozzles = $request->nozzles[$i];
                $verif->cost_1st_nozzle = $request->cost_1st_nozzle[$i];
                $verif->cost_other_nozzles = $request->cost_other_nozzles[$i];
                $verif->cost_all_nozzles = $request->cost_all_nozzles[$i];
                $verif->type = $request->type[$i];
                $verif->save();
            }
            $msg = 'Verification Quotation updated';
        }
        if($request->redirect == 0){
            return redirect()->route('verif_quotation.list')
            ->with('message', $msg . ', you can manage Quotation\'s items and payments here');
            }
            else{
                return redirect()->route('job.edit',$request->redirect."/".'verif_quotations')
            ->with('message', $msg . ', you can manage Quotation\'s items and payments here');
            }



        // return redirect()->route('verif_quotation.edit', $quotation->id)
        // ->with('message', $msg.', you can manage Verification Quotation\'s items and payments here');
    }

    public function delete($id)
    {
        VerifQuotation::find($id)->delete();
        return back()->with('message', 'Verification Quotation deleted successfully');
    }

    /* QUOTATION ITEM */
    public function saveQuotationItem(Request $req, $id = null)
    {
        $req->validate([
            'verif_quotation_id' => 'required',
            'number' => 'required',
            'nozzles' => 'required',
            'cost_1st_nozzle' => 'required',
            'cost_other_nozzles' => 'required',
            'cost_all_nozzles' => 'required',
        ]);

        if(is_null($id))
        {
            VerifQuotationItem::create($req->except('_token'));
        }
        else
        {
            VerifQuotationItem::where('id', $id)
            ->update($req->except('_token'));
        }

        return response()->json('Verification Quotation item saved');
    }
    public function editQuotationItem($id)
    {
        $item = VerifQuotationItem::find($id);
        return view('ajax.verif_quotation.edit_item', get_defined_vars());
    }
    public function getQuotationItems($quotation_id)
    {
        $list = VerifQuotationItem::where('verif_quotation_id', $quotation_id)->get();
        return view('ajax.verif_quotation.items', get_defined_vars());
    }
    public function deleteQuotationItem($id)
    {
        VerifQuotationItem::find($id)->delete();
        return response()->json('Quotation item deleted');
    }

    //convert to job
    public function move_to_job($id)
    {
        $quotation = VerifQuotation::find($id);
        $customer_id =$quotation->customer_id;
        $job = new Job();
        $newjob = $job::create([
            'customer_id'=>$customer_id,
            'user_id'=> Auth::user()->id,
        ]);
        $quotation->job_id = $newjob->id;
        $quotation->save();
        return redirect()->route('job.edit',['id'=>$newjob->id])->with('message','The Verfication Quotation has been converted to job');
    }

    ///quotation document
    public function get_Q_Document($quotation_id)
    {
        $quotation = VerifQuotation::find($quotation_id);
        $dropbox = Dropbox::files()->listContents($quotation->verif_quotations_folder);
        return view('ajax.quotation.verif_quotation_document', get_defined_vars());
    }

    public function save_Q_Document(Request $req)
    {
        $quotation = VerifQuotation::find($req->quotation_id);
        $extension = $req->file->getClientOriginalExtension();
        $fileName = rand().'.'.$extension;
        $uploadPath = $quotation->verif_quotations_folder."/".$fileName;

        if(!Dropbox::files()->listContents($quotation->verif_quotations_folder)['exist'])
            Dropbox::files()->createFolder($quotation->verif_quotations_folder);

        $res = Dropbox::files()->upload($uploadPath,$req->file);

        return response()->json('File saved successfully');
    }

    public function delete_Q_document($q_id,$id)
    {
        $quotation = VerifQuotation::find($q_id);
        $path = $quotation->verif_quotations_folder."/".$id;
        Dropbox::files()->delete($path);
        return redirect()->back();
    }
}

