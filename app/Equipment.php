<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Equipment extends Model
{
    Protected $fillable = [
        'customer_id','pump_make_and_model_id','serial','type','equipment_no',
        'quantity','no_of_months','start_date','end_date'
    ];

    public function pump_make_and_model()
    {
        return $this->belongsTo('App\PumpMakeAndModel');
    }
}
