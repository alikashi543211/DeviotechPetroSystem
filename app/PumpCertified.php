<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PumpCertified extends Model
{
    public function pump_certifieds()
    {
        return $this->belongsTo('App\Certificate');
    }
    public function job()
    {
        return $this->belongsTo('App\Job');
    }
}
