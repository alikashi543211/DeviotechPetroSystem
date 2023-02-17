<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColumnNamesInVerfiQuotationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('verif_quotations', function (Blueprint $table) {
            $table->renameColumn('warranty', 'warranty_id');
            $table->renameColumn('vat', 'vat_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('verif_quotations', function (Blueprint $table) {
            //
        });
    }
}
