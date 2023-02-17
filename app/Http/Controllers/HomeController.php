<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Dcblogdev\Dropbox\Facades\Dropbox;
use PDF;
use DB;
use Carbon\Carbon;
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except("verify_engineer");
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function verify_engineer($id)
    {
        $user=User::find(base64_decode($id));
        $user->email_verified_at=Carbon::now();
        $user->save();
        return redirect()->route('login');
    }

    public function index()
    {
        return view('home');
    }
    public function check_user()
    {
        // dd("Loggin in");
        if (!Auth::check())
            return redirect('login');

        $user = Auth::user();
        if($user->role === "admin"){
            return redirect()->route('admin.dashboard');
        }
        if($user->role === "subadmin"){
            return redirect()->route('job.add');
        }
        if($user->role === "supplier"){
            return redirect('supplier/user_profile');
        }
        if($user->role === "engineer"){
            return redirect('engineer/profile');
        }
    }

    public function dropboxConnection()
    {
        if (!Dropbox::files()->listContents('/Petro')['exist']) {
            Dropbox::files()->createFolder('/Petro');
        }

        if (!Dropbox::files()->listContents('/Petro/Jobs')['exist']) {
            Dropbox::files()->createFolder('/Petro/Jobs');
        }

        if (!Dropbox::files()->listContents('/Petro/Verification Quotations')['exist']) {
            Dropbox::files()->createFolder('/Petro/Verification Quotations');
        }

        if (!Dropbox::files()->listContents('/Petro/Quotations')['exist']) {
            Dropbox::files()->createFolder('/Petro/Quotations');
        }

        if (!Dropbox::files()->listContents('/Petro/Templates')['exist']) {
            Dropbox::files()->createFolder('/Petro/Templates');
        }

        if (!Dropbox::files()->listContents('/Petro/Site Procedures')['exist']) {
            Dropbox::files()->createFolder('/Petro/Site Procedures');
        }

        if (!Dropbox::files()->listContents('/Petro/Quality')['exist']) {
            Dropbox::files()->createFolder('/Petro/Quality');
        }

        return view('Admin.dropbox_landing');
    }

    public function dropboxDisconnect()
    {
        DB::table('dropbox_tokens')->delete();
        return redirect()->back();
    }

}
