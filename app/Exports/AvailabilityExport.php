<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use App\VerifQuotation;
use App\Quotation;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithTitle;

class AvailabilityExport implements FromView, WithTitle
{
    protected $id;
    protected $table;
    function __construct($id,$table='')
    {
        $this->id = $id;
        $this->table = $table;
    }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
            $data = Quotation::where('id',$this->id)->pluck('availablity_id')->first();
            return view('reports.availability_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'Availability';
    }
}
