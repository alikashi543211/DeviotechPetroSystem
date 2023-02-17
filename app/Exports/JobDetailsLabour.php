<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\JobLabour;
use Maatwebsite\Excel\Concerns\WithTitle;
class JobDetailsLabour implements FromView, WithTitle
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
        $data=JobLabour::where('job_id',$this->id)->get();
        

        return view('reports.joblabour_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'JobLabour';
    }
}
