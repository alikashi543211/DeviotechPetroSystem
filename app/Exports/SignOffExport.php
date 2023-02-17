<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\VerifQuotation;
use App\Quotation;
use Maatwebsite\Excel\Concerns\WithTitle;

class SignOffExport implements FromView, WithTitle
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
            $data=Quotation::where('id',$this->id)->pluck('sign_off')->first();
            
        }else{
            $data=VerifQuotation::where('id',$this->id)->pluck('sign_off')->first();
        }
            return view('reports.sign_off_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'SignOff';
    }
}
