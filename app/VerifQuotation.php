<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VerifQuotation extends Model
{
    protected $fillable = [
        'user_id',
        'customer_id',
        'job_id',
        'signatory_id',
        'date',
        'travel_km',
        'travel_km_cost',
        'travel_total_cost',
        'discount',
        'vat_id',
        'rate',
        'total_value',
        'internal_notes',
        'block1',
        'block2',
        'no_of_days',
        'warranty_id',
        'sign_off',
        'quotation_type_id',
        'status'
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function job()
    {
        return $this->belongsTo('App\Job');
    }

    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }

    public function signatory()
    {
        return $this->belongsTo('App\Signatory');
    }

    public function quotation_type()
    {
        return $this->belongsTo('App\QuotationType');
    }

    public function quotation_items()
    {
        return $this->hasMany('App\VerifQuotationItem');
    }
}
