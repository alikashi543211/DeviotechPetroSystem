<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Contact;
use Illuminate\Http\Request;
use Mail;
use App\User;
use Str;
use Session;
use App\CcEmail;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function list()
    {
        //
       $contact =  Contact::all();
        return view('Admin/contact/contactlist',compact('contact'))->with('message','contact saved successfully');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function add_newcontact()
    {
        //
        return view('Admin/contact/addcontact');
        //dd(Contact::all());
    }

    /**
     * Store a newly creatased resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function createcontact(Request $request)
    {

       $request->validate([
            'surname'=> 'required',
            'forename'=> 'required',
            'mobilephone' => 'required',
            'email' => 'required|email|unique:contacts',
            'address1' => 'required'
        ]);
        $contact=Contact::create($request->except('_token'));
        // dd($contact->id);
        $contact->save();
        $password=Str::random(8);
        $user=User::create(['email'=>$request->email,
            'password'=>bcrypt($password),
            'role'=>'engineer',
            'name'=>$request->surname.' '.$request->forename,
            'contact_id'=>$contact->id]);
        $contact_email=$request->email;
        Mail::send('emails.engineer_credentials',['user'=>$user,'request'=>$request,'password'=>$password], function ($send) use($contact_email)
        { 
            $send->to($contact_email)->subject('Engineer Account');
            $send->cc(getCcEmail())->subject('Engineer Account');
        });
        
        return redirect()->route('contactlist')->with('message','contact created successfully');
    }

    public function editcontact($id)
    {
        //dd($id);
        $contact = Contact::find($id);
       // dd($contact);
        return view('Admin/contact/editcontact' , compact('contact'));
    }


    public function allocateVan(Request $req)
    {
        $contact = Contact::findOrFail($req->id);
        $contact->van = $req->van;
        $contact->save();
        return back()->with("message", "Van Number Allocated Successfully");
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updatecontact(Request $request, $id)
    {
        
       $request->validate([
            'surname'=> 'required',
            'mobilephone' => 'required',
            'email' => 'required|email',
            'address1' => 'required'
        ]);
        $id =  $request->id;
        $contact = Contact::find($id);
        if(User::where('email',$contact->email)->count() > 0)
        {
            $user=User::where('email',$request->email)
                ->update(['email'=>$request->email,
                'name'=>$request->surname.' '.$request->forename]);
        }

        $contact->surname = $request->surname;
        $contact->forename = $request->forename;
        $contact->workphone = $request->workphone;
        $contact->mobilephone = $request->mobilephone;
        $contact->homephone = $request->homephone;
        $contact->email = $request->email;
        $contact->address1 = $request->address1;
        $contact->address2  = $request->address2;
        $contact->address3 = $request->address3;
        $contact->charge = $request->charge;
        $contact->save();

        if($id == 0){
            return redirect()->route('contactlist')->with('message','contact saved successfully');
            }else{
        return redirect()->route('contactlist')->with('message','contact updated successfully');
            }


        //return redirect()->route('contactlist');
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function deletecontact($id)
    {
        //
        $contact = Contact::find($id);
        if(User::where('email',$contact->email)->count() > 0)
        {
           User::where('email',$contact->email)->delete(); 
        }
        $contact->delete();
        return redirect()->route('contactlist')->with('message','contact Deleted successfully');
    }
}
