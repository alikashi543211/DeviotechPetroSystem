<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Letter extends Model
{
    Protected $fillable = [
        'customer_id','signatory_id','date','title','address','salutation','internal_notes','body'
    ];

    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
}
