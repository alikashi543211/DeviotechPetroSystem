<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\JobPurchase;
use Maatwebsite\Excel\Concerns\WithTitle;

class JobDetailsPurchase implements FromView, WithTitle
{
    protected $id;
    function __construct($id)
    {
    	$this->id=$id;
    }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
            $data=JobPurchase::where('job_id',$this->id)->get();
            return view('reports.jobpurchase_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'JobPurchase';
    }
}
