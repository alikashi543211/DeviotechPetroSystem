<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    Protected $fillable = [
        'code','name','email','workphone','address1',
        'address2','address3','address4','eircode',
        'notes','status','account_type_id','pos','no_of_tanks','service_contract',
        'cc_email_1','cc_email_2','cc_email_3','cc_email_4','cc_email_5',
    ];

    public function jobs()
    {
        return $this->hasMany('App\Job');
    }

    public function equipment()
    {
        return $this->hasMany('App\Equipment');
    }

    public function quotation()
    {
        return $this->hasMany('App\Quotation');
    }

    public function verif_quotations()
    {
        return $this->hasMany('App\VerifQuotation');
    }

    public function contract()
    {
        return $this->hasMany('App\Contract');
    }

    public function letters()
    {
        return $this->hasMany('App\Letter');
    }

    public function serviceContract()
    {
        return $this->hasOne('App\ServiceContract','customer_id');
    }

    public function account_type()
    {
        return $this->belongsTo('App\AccountType');
    }
    public function certificates()
    {
        return $this->hasMany('App\Certificate');
    }
}
