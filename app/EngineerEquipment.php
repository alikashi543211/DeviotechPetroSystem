<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EngineerEquipment extends Model
{
	protected $table="engineer_equipments";
    protected $guarded=[];

    public function engineer_form()
    {
        return $this->belongsTo('App\EngineerForm','form_id');
    }
}
