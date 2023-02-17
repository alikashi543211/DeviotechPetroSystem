<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    protected $table = 'jobs';
    protected $fillable = [
        'user_id',
        'jobtype_id',
        'customer_id',
        'category_id',
        'contact_id',
        'date',
        'warranty',
        'calibration',
        'expectcomplete',
        'name',
        'contact',
        'detail',
        'action',
        'invoiced',
        'filed',
        'enteredby',
        'completed',
        'datecomplete',
        'select_option',
        'filing_option',
        'invoice_option',
        'invoice_no',
        'service_contract',
        'contract_status',
        'order_no',
    ];
    // protected $guarded=[];

    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function jobtype()
    {
        return $this->belongsTo('App\JobType');
    }
    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
    public function contacts()
    {
        return $this->belongsTo('App\Contact','contact_id','id');
    }

    public function category()
    {
        return $this->belongsTo('App\Category');
    }
    public function job_documents()
    {
        return $this->hanMany('App\JobDocument');
    }
    public function issue_tool()
    {
        return $this->hasMany('App\IssueTool');
    }
    public function job_labours()
    {
        return $this->hasMany('App\JobLabour');
    }
    public function certificate()
    {
        return $this->hasOne('App\Certificate');
    }
    public function pump_certifieds()
    {
        return $this->hasMany('App\PumpCertified');
    }
    public function job_purchases()
    {
        return $this->hasMany('App\JobPurchase');
    }

    public function engineer_forms()
    {
        return $this->hasMany('App\EngineerForm','job_id');
    }

    public function engineer_jobs()
    {
        return $this->hasMany('App\EngineerJob','job_id');
    }
}
