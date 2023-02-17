<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use App\Quotation;
use Maatwebsite\Excel\Concerns\WithTitle;

class TermsOfPaymentExport implements FromView, WithTitle
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
        $data=Quotation::where('id',$this->id)->pluck('payment_term_id')->first();
            return view('reports.payment_term_xls', get_defined_vars());
    }
    public function title(): string
    {
        return 'Payment Terms';
    }
}
