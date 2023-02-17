<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Signatory;
use Illuminate\Support\Facades\View;

class SignatoryController extends Controller
{
        // Signatory crud
        public function signatory($id = null){
            $signatory =  Signatory::find($id);

            $data = [
            'signatory'=>$signatory,
                    ];
            if (View::exists('Admin.signatory.create')) {
                return view('Admin.signatory.create')->with($data);
            }
        }
        public function add_signatory(Request $request){
            $id =  $request->id;

            if($id == 0){

            $signatory = new Signatory();
            }else{

            $signatory =  Signatory::find($id);
            }
            $signatory->signatory = $request->signatory;
            $signatory->title = $request->title;
            $signatory->save();

            if($id == 0){
                return redirect()->route('signatory_list')->with('message','Signatory saved successfully');
                }else{
            return redirect()->route('signatory_list')->with('message','Signatory updated successfully');
                }
        }
        public function signatory_list(){
            $data = Signatory::all();
            if (View::exists('Admin.signatory.signatory_list')) {
                return view('Admin.signatory.signatory_list')->with('signatories',$data);
            }
        }
        public function remove_signatory(Request $request){
            $id = $request->input('id');
            Signatory::destroy($id);
            return redirect()->route('signatory_list')->with('message','Signatory removed');
        }
}
