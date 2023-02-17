<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobEmail extends Model
{
    protected $fillable = [
        'job_id',
        'receiver',
        'cc',
        'subject',
        'content',
        'mail_type',
        'receiver_name',   
        'other_email_address'   
    ];
}
