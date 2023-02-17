<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobPurchase extends Model
{
    protected $fillable = [
        'date',
        'job_id',
        'supplier_id',
        'items_required',
        'specification',
        'value',
        'extra_to_job',
        'purchased_by',    
    ];

    public function supplier()
    {
    	return $this->belongsTo('App\Supplier');
    }
    public function job()
    {
        return $this->belongsTo('App\Job');
    }
}
