<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobStock extends Model
{
    protected $fillable = [
        'date',
        'job_id',
        'stock_item_id',
        'serial_no',
        'qty',
        'price',
        'total',
        'engineer_id',
        'form_id',  
        'material_used', 
    ];

    public function eng_form()
    {
    	return $this->belongsTo('App\EngineerForm', 'form_id');
    }
    public function stock()
    {
        return $this->belongsTo('App\Stock_item', 'stock_item_id');
    }
    public function jobs(){
        return $this->belongsTo('App\Job','job_id');
    }
}
