<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QuotationPayment extends Model
{
    protected $fillable = [
        'quotation_id',
        'date',
        'invoice_no',
        'details',
        'amount_received'
    ];
}
