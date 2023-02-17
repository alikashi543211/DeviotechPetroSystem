<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\JobStock;
use Maatwebsite\Excel\Concerns\WithTitle;

class JobDetailStocksFromStore implements FromView, WithTitle
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
            $data=JobStock::where('job_id',$this->id)->get();
            return view('reports.jobstock_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'JobStock';
    }
}
