<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QuotationDocument extends Model
{
    protected $fillable = [
        'quotation_id','file'
    ];

    public function quotation()
    {
        return $this->belongsTo('App\Quotation');
    }
}