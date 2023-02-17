<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\VerifQuotationItem;
use Maatwebsite\Excel\Concerns\WithTitle;
class ItemDetailsExport implements FromView, WithTitle
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
            $data=VerifQuotationItem::where('verif_quotation_id',$this->id)->get();
            return view('reports.verif_items_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'ItemDetails';
    }
}
