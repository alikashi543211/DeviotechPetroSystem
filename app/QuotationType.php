<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QuotationType extends Model
{
    protected $fillable = [
        'type',
        'cost_1st_nozzle',
        'cost_other_nozzles'
    ];
}
