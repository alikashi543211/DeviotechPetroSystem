<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stock_item extends Model
{
    public function stock_receipt()
    {
       return $this->hasMany(Stock_receipt::class,'stock_item');
    }
  public function job_stocks()
    {
       return $this->hasMany(JobStock::class,'stock_item_id');
    }
}
