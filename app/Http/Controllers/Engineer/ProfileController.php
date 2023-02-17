<?php



namespace App\Http\Controllers\Engineer;



use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use Session;

use Mail;

use Hash;

use Auth;



class ProfileController extends Controller

{

    public function profile()

    {
        return view('engineer.profile.profile');
    }



    public function resetEmail()

    {

    	$email=auth()->user()->email;

    	Session::put("reset_pin",random_number(4));

    	Mail::send('emails.engineer.reset_password',['data' => $email], function ($send) use($email)

        {

            $send->to($email)->subject('Reset Password');

        });

        Session::flash("success","Pin Code has been sent to your email");

        return response()->json("Pin Code has been sent to your email");

    }



    public function resetPassword(Request $req)

    {

        $this->validate($req, [

            'pin_code'          => 'required',

            'new_password'              => 'required|min:8',

            'confirmed_password' =>'required|same:new_password'

        ]);

        $user=auth()->user();

        if (Session::get('reset_pin')==$req->pin_code) {

            //add logic here

           

        $user->password = Hash::make($req->new_password);

        $user->save();

        // logout after changing password

        Auth::logout();

        return redirect('/login')->with('message','password changed successfully');

        }

        else{

            return redirect()->to('engineer/profile/#reset')->with('error','Incorrect Pin Code');

        }

    }

}

