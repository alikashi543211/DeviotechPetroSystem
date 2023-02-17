<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\SystemSetting;
use App\AccountType;
use App\QuotationType;
use App\Vat;
use App\Availbility;
use App\Block;
use App\Warranty;
use App\PaymentTerm;
use App\Communication;
use App\CcEmail;
use DB;

class SystemSettingController extends Controller
{
    public function settings()
    {
        $settings = SystemSetting::pluck('value', 'name')->toArray();
        $account_types = AccountType::all();
        $vats = Vat::all();
        $availbilities = Availbility::all();
        $warranties = Warranty::all();
        $payment_terms = PaymentTerm::all();
        $quotation_types = QuotationType::all();
        $block = Block::all();
        $communication = Communication::all();
        $cc = CcEmail::all();
        

        $dropbox = DB::table('dropbox_tokens')->where('user_id',auth()->user()->id)->first();
        return view('Admin.system_settings.settings', get_defined_vars());
    }

    public function general(Request $req)
    {
        $req->validate([
            'contract_template' => 'max:2000',
            'standing_order_template' => 'max:2000',
            'maintenance_contract' => 'max:2000',

        ]);

        $setting = $req->except('_token');
        foreach ($setting as $key => $value) {
            if(empty($value))
                continue;
            $set = SystemSetting::where('name', $key)->first() ?: new SystemSetting();
            $set->name = $key;

            if($req->hasFile($key))
            {
              $document_path = uploadFile($value, 'uploads/setting_files');
              $set->value = $document_path;
            }
            else{
            $set->value = $value;
            }
            $set->save();


    }

     return redirect()->back()->with('message','Settings Saved Successfully');
    }
}
