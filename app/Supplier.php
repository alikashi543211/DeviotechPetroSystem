<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Stock_receipt;

class Supplier extends Model
{
    protected $fillable=[];
    public function stock_receipt()
    {
       return $this->hasMany(Stock_receipt::class,"supplier");
    }
}
