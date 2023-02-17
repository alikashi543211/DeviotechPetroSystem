<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;
use Maatwebsite\Excel\Concerns\WithTitle;

class JobExport implements WithMultipleSheets
{
    use Exportable;

    protected $id;
    function __construct($id)
    {
    	$this->id=$id;
    }

    /**
     * @return array
     */
    public function sheets(): array
    {
        $sheets = [];

        
            $sheets[] = new JobDetailsLabour($this->id);
            $sheets[] = new JobDetailsPurchase($this->id);
            $sheets[] = new JobDetailStocksFromStore($this->id);

        return $sheets;
    }
}


