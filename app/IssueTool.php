<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IssueTool extends Model
{
    protected $fillable = [
        'tool_id',
        'job_id',
        'serial_no',
        'issued_to',
        'date_allocated',
        'user_id',
        'date_returned',
        'location_stored',
        'status',
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function tool()
    {
        return $this->belongsTo('App\Tool');
    }

    public function job()
    {
        return $this->belongsTo('App\Job');
    }
}
