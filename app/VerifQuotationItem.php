<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VerifQuotationItem extends Model
{
    protected $fillable = [
        'verif_quotation_id',
        'number',
        'type',
        'nozzles',
        'cost_1st_nozzle',
        'cost_other_nozzles',
        'cost_all_nozzles'
    ];
}
