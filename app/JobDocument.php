<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobDocument extends Model
{
    protected $fillable = [
        'job_id','file'
    ];

    public function job()
    {
        return $this->belongsTo('App\Job');
    }
}
