<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Contact;


class profileController extends Controller
{
    public function logOut(){
        Auth::logout();
        
        return redirect('/login');
    }
    public function resetPassword(Request $request){
       
        $user = Auth::user();
        $id = Auth::id();
        $password = DB::table('users')->where('id', $id)->value('password');

        $this->validate($request, [
            'oldpassword'          => 'required',
            'newpassword'              => 'required|min:8',
            'confirm_password' =>'required|same:newpassword'
        ]);
        
        if (Hash::check($request->oldpassword, $password)) {
            //add logic here
           
            $user->password = Hash::make($request->newpassword);
            $user->save();
            // logout after changing password
            Auth::logout();
        return redirect('/login')->with('message','password changed successfully');
        }
        else{
            return redirect()->back()->with('message','Incorrect Old Password');
        }
    }
    public function update_Profile(Request $request){
       
        $user = Auth::user();
        $id = Auth::id();
        // $password = DB::table('users')->where('id', $id)->value('password');

        $user =  User::find($id);
        $old_email=$user->email;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->save();
        $contact=Contact::where("email",$old_email)->first();
        $contact->email=$request->email;
        $contact->save();
        // logout after changing name/email
        Auth::logout();
        return redirect('/login')->with('message','Credentials changed successfully,please use new credentials to SignIn');
        
    }
}
