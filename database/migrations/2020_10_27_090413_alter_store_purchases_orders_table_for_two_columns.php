<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterStorePurchasesOrdersTableForTwoColumns extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('store_purchase_orders', function (Blueprint $table) {
            $table->text('items_required')->change();
            $table->text('specification')->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('store_purchase_orders', function (Blueprint $table) {
            //
        });
    }
}
