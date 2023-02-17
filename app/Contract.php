<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contract extends Model
{
    protected $fillable = [
        'customer_id',
        'start_date',
        'end_date',
        'title',
        'value',
        'status'
    ];

    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
}
