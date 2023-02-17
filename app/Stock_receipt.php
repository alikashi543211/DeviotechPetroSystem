<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Supplier;
use App\Stock_item;

class Stock_receipt extends Model
{
    protected $fillable =[
        'date','supplier','stock_item','serial_number','quantity','unitprice'
    ];
    public function receipt_supplier()
    {
    	return $this->belongsTo(Supplier::class,'supplier');
    }

    public function rec_stock_item()
    {
    	return $this->belongsTo(Stock_item::class,'stock_item');
    }
}
