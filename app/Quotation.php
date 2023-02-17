<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{
    protected $fillable = [
        'user_id',
        'customer_id',
        'job_id',
        'signatory_id',
        'date',
        'title',
        'travel',
        'availablity_id',
        'payment_term_id',
        'vat_id',
        'total_value',
        'internal_notes',
        'block1',
        'block2',
        'no_of_days',
        'warranty_id',
        'sign_off',
        'status',
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
    public function quotation_document()
    {
        return $this->hasMany('App\QuotationDocument');
    }

    public function quotation_items()
    {
        return $this->hasMany('App\QuotationItem');
    }
}
