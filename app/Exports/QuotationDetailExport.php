<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class QuotationDetailExport implements WithMultipleSheets
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
        // dd($this->id);
        $sheets = [];
            
            $sheets[] = new VatExport($this->id,"quotation");
            $sheets[] = new WarrantyExport($this->id,"quotation");
            $sheets[] = new SignOffExport($this->id,"quotation");
           $sheets[] = new TermsOfPaymentExport($this->id);
            $sheets[] = new BlockOneExport($this->id,"quotation");
            $sheets[] = new BlockTwoExport($this->id,"quotation");
            $sheets[] = new QuotationItemsExport($this->id);
            $sheets[] = new AvailabilityExport($this->id);
            $sheets[] = new TermsOfPaymentExport($this->id);

        return $sheets;
    }
    // return view('reports.quotation_xls', get_defined_vars());
}

