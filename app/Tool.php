<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tool extends Model
{
    //
    protected $fillable = [
        'tool_code',
        'description',
        'serial_no',
        'date_purchased',
        'purchase_price',
        'notes',
    ];

    public function issue_tool()
    {
        return $this->hasOne('App\IssueTool');
    }
}
