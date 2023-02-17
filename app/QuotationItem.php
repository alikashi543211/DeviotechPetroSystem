<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QuotationItem extends Model
{
    protected $fillable = [
        'quotation_id',
        'item',
        'qty',
        'sale_price',
        'cost_price',
        'margin',
        'extra_to_job',
    ];
}
