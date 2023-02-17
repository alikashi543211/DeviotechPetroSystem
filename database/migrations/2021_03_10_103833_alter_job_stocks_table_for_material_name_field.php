<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterJobStocksTableForMaterialNameField extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('job_stocks', function (Blueprint $table) {
            $table->string("material_used")->nullable();
        });
        DB::statement("ALTER TABLE `job_stocks` CHANGE `stock_item_id` `stock_item_id` BIGINT(20) UNSIGNED NULL");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('job_stocks', function (Blueprint $table) {
            $table->dropColumn("material_used");
        });
    }
}
