<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    protected $guarded=[];

    public function engineer_form()
    {
        return $this->belongsTo('App\EngineerForm','form_id');
    }
}
