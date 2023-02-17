<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EngineerJob extends Model
{
    protected $guarded=[];

    public function job()
    {
        return $this->belongsTo('App\Job', 'job_id');
    }

    public function engineer()
    {
        return $this->belongsTo('App\Contact','contact_id');
    }

}
