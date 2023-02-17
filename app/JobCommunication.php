<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobCommunication extends Model
{
    protected $fillable = [
        'date',
        'com_type',
        'user_id',
        'job_id',
        'date',
        'details'        
    ];
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
