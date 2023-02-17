<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class JobType extends Model
{
    //
    Protected $fillable = [
        'name',
    ];

    public function jobs()
    {
        return $this->hasMany('App\Job');
    }

}
