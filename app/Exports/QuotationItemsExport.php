<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\QuotationItem;
use Maatwebsite\Excel\Concerns\WithTitle;

class QuotationItemsExport implements FromView, WithTitle
{
	protected $id;
    /**
    * @return \Illuminate\Support\Collection
    */
    function __construct($id)
    {
    	$this->id=$id;
    }
    public function view(): View
    { 
    	// dd($this->id);
    	$data=QuotationItem::where('quotation_id',$this->id)->get();

        return view('reports.quotation_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'QuotationItems';
    }
}
