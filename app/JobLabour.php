<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobLabour extends Model
{
    // protected $fillable = [
    //     'date',
    //     'job_id',
    //     'job_sheet',
    //     'start',
    //     'end',
    //     'hours',
    //     'amount', 
    //     'completed_detail', 
    //     'travel_time',
    //     'user_id',
    //     'contact_id',

    // ];
    protected $guarded = [];

    // public function staff()
    // {
    // 	return $this->belongsTo('App\Staff');
    // }

    public function contact()
    {
        return $this->belongsTo('App\Contact');
    }


    public function user()
    {
        return $this->belongsTo('App\User','user_id','id');
    }

    public function engineer_form()
    {
        return $this->belongsTo('App\EngineerForm','form_id','id');
    }
}
