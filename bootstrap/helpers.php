<?php

use App\Setting;
use Illuminate\Http\Request;
use Mail as Mail;
use App\Contact;
use App\JobStock;
use App\User;
use App\EngineerForm;
use App\Customer;
use App\CcEmail;
use App\SystemSetting;
use Carbon\Carbon;


function uploadFile($file, $path = 'audios'){
    $name = time().'_'.str_replace(' ', '-', $file->getClientOriginalName());
    $file->move($path,$name);
    return $path.'/'.$name;
}

function setting($key) {
    $setting = SystemSetting::pluck('value', 'name');
    return $setting[$key] ?? '';
}

function dateFormat($created_at)
{
    $date=explode(" ",$created_at);
    $date=$date[0];
    return $date;
}

function sendMail($data)
{
    Mail::send($data['view'], ['data' => $data['data']], function ($message) use ($data) {
        $message->to($data['to'])->subject($data['subject']);
        if(isset($data['cc_email']))
        {
        	$message->cc($data['cc_email'])->subject($data['subject']);
        }
    });
}

function random_number($digits)
{
	return rand(pow(10, $digits-1), pow(10, $digits)-1);
}

function updateVan()
{
	$list=Contact::all();
	foreach($list as $item)
	{
		$item->van=random_number(3);
		$item->save();
	}
	return true;
}

function engineer()
{
	return Contact::where("id",auth()->user()->contact_id)->first();
}


function getContactName($contact_id)
{
	$contact_name = "";
	$contact = Contact::find($contact_id);
	$contact_name = $contact_name.$contact->forename ?? '';
	$contact_name = $contact_name.$contact->surname ?? '';
	return $contact_name;
}	

function seq_number($number)
{
	$n=str_pad($number + 1, 3, "0", STR_PAD_LEFT);
	return $n;
}

function uploadSignature($imageBase64){
    $rand = Str::random(10);
    $img = $imageBase64;
    $imgName = $rand.'.'.'png';
    $path = 'uploads/signatures/'.$imgName;
    file_put_contents( public_path().'/'.$path, base64_decode($img));
    return $path;
}


function updateStockDates()
{
	$list=JobStock::where('form_id','!=',null)->get();
	foreach($list as $item)
	{
		$stock=JobStock::find($item->id);
		$stock->date=$stock->created_at->format('d/m/Y H:m a');
		$stock->save();
	}
	return true;
}

function is_form_submitted($job_id)
{
	if(EngineerForm::where('user_id',auth()->user()->id)
		->where('job_id', $job_id)
		->count()>0)
	{
		return true;
	}else
	{
		return false;
	}
}

function updateContactIds()
{
	$list=Contact::all();
	foreach($list as $item)
	{
		$user=User::where("email",$item->email)->first();
		if(!is_null($user))
		{
			$user->contact_id=$item->id;
			$user->save();
		}
	}
	return true;
}

function nthDecimal($value,$upto)
{
	return  number_format((float)$value, $upto, '.', '');  // Outputs -> 105.00
}

function getCustomerCcEmails($customer)
{
	$emails=[];
	

	$emails[]=getCcEmail();

	if(!is_null($customer->cc_email_1))
	{
		$emails[]=$customer->cc_email_1;
	}
	if(!is_null($customer->cc_email_2))
	{
		$emails[]=$customer->cc_email_2;
	}
	if(!is_null($customer->cc_email_3))
	{
		$emails[]=$customer->cc_email_3;
	}
	if(!is_null($customer->cc_email_4))
	{
		$emails[]=$customer->cc_email_4;
	}
	if(!is_null($customer->cc_email_5))
	{
		$emails[]=$customer->cc_email_5;
	}
	// dd($emails);
	return $emails;
	
}

function getCcEmail()
{
	return CcEmail::pluck('email')->first();
}

function getTimeFormat($val)
{
	$time = explode(".", $val);
	$min = "0.".end($time);
	$min = $min * 60;
	if(strlen(reset($time)) > 1)
	{
		if(strlen($min) > 1)
		{
			$time = reset($time).":".$min;
		}else
		{
			$time = reset($time).":0".$min;
		}
	}else
	{
		if(strlen($min) > 1)
		{
			$time = "0".reset($time).":".$min;
		}else
		{
			$time = "0".reset($time).":0".$min;
		}
	}
	return $time;
}

function compare_engineer_form_dates($eng_form)
{
	$eng_form = $job->engineer_forms->where('contact_id', engineer()->id)->first();
    $now = Carbon::now()->format("Y-m-d");
    $assign_from = Carbon::parse($eng_form->assign_from)->format('Y-m-d');
    $assign_from = Carbon::parse($eng_form->assign_from)->format('Y-m-d');
    $now = Carbon::parse($now);
    $assign_from = Carbon::parse($assign_from);
}

function my_date_format($date)
{
	$date = explode("/", $date);
	$date = implode("-", array_reverse($date));
	return $date;
	// dd($date);
}

function getFormId($job_id)
{
	$form = EngineerForm::where('job_id', $job_id)->where('date_of_submission', Carbon::now()->format('Y-m-d'))->first();
	return $form->id;
}

?>