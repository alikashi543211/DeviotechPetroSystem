<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\VerifQuotation;
use App\Quotation;
use Maatwebsite\Excel\Concerns\WithTitle;
class VatExport implements FromView, WithTitle
{
    protected $id;
    protected $table;
    function __construct($id,$table='')
    {
        $this->id=$id;
        $this->table=$table;
    }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {

        if($this->table=='quotation'){
            $data=Quotation::where('id',$this->id)->pluck('vat_id')->first();
            // dd("VAT");
        }else{
            $data=VerifQuotation::where('id',$this->id)->pluck('vat_id')->first();
        }
            return view('reports.vat_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'Vat';
    }
}
