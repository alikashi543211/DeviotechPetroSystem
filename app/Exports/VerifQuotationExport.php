<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class VerifQuotationExport implements WithMultipleSheets
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
            
            $sheets[] = new VatExport($this->id);
            $sheets[] = new WarrantyExport($this->id);
            $sheets[] = new SignOffExport($this->id);
            $sheets[] = new BlockOneExport($this->id);
            $sheets[] = new BlockTwoExport($this->id);
            $sheets[] = new ItemDetailsExport($this->id);

        return $sheets;
    }
}
