<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    public function job()
    {
        return $this->belongsTo('App\Job');
    }
    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
    public function pump_certifieds()
    {
        return $this->hasMany('App\PumpCertified');
    }
}
