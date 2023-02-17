<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StorePurchaseOrder extends Model
{
    //
    protected $fillable = [
        'po_number',
        'date',
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
}