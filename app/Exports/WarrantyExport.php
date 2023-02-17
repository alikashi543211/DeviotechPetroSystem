<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\VerifQuotation;
use App\Quotation;
use Maatwebsite\Excel\Concerns\WithTitle;

class WarrantyExport implements FromView, WithTitle
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
        // dd($this->id);
        if($this->table=='quotation'){
            $data=Quotation::where('id',$this->id)->pluck('warranty_id')->first();
             // dd($data);
        }else{
            $data=VerifQuotation::where('id',$this->id)->pluck('warranty_id')->first();
        }
            return view('reports.warranty_xls', get_defined_vars());
    }

    public function title(): string
    {
        return 'Warranty';
    }
}
