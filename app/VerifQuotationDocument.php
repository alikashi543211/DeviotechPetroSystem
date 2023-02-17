<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VerifQuotationDocument extends Model
{
    protected $fillable = [
        'verif_quotation_id','file'
    ];

    public function quotation()
    {
        return $this->belongsTo('App\VerifQuotation');
    }
}
