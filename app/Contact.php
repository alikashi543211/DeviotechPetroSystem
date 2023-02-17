<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    //
    protected $fillable = [
        'surname',
        'forename',
        'mobilephone',
        'homephone',
        'workphone',
        'email',
        'address1',
        'address2',
        'address3',
        'charge',
        'van',
    ];

    public function jobs()
    {
        return $this->hasMany('App\Job');
    }
    public function job_labours()
    {
        return $this->hasMany('App\JobLabour');
    }

}
