<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceContract extends Model
{
    protected $fillable = [
        'customer_id',
        'payment_method',
        'payment_frequency'
    ];

    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
}
