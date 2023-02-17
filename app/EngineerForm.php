<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EngineerForm extends Model
{
    protected $guarded=[];

    public function job()
    {
        return $this->belongsTo('App\Job');
    }

    public function materials()
    {
        return $this->hasMany('App\JobStock','form_id');
    }

    public function job_labour()
    {
        return $this->hasOne('App\JobLabour','form_id');
    }

    public function engineer_equipments()
    {
        return $this->hasMany('App\EngineerEquipment','form_id');
    }

    public function pump_numbers()
    {
        return $this->hasMany('App\PumpNumber','form_id');
    }

    public function eng_images()
    {
        return $this->hasMany('App\EngineerImage','form_id');
    }

    public function engineer()
    {
        return $this->belongsTo('App\User','user_id');
    }
}
