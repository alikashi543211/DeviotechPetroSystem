<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSuupplierAndStockItemIdsColToStockreceipttable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('stock_receipts', function (Blueprint $table) {
            $table->integer('supplier_id');
            $table->integer('stock_item_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('stock_receipts', function (Blueprint $table) {
            //
        });
    }
}
