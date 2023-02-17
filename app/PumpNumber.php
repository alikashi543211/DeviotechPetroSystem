<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PumpNumber extends Model
{
    protected $guarded=[];

    public function engineer_form()
    {
        return $this->belongsTo('App\EngineerForm','form_id');
    }
}
