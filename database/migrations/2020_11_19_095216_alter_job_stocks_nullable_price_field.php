<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterJobStocksNullablePriceField extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("ALTER TABLE `job_stocks` CHANGE `price` `price` DOUBLE(8,2) NULL DEFAULT NULL");
        DB::statement("ALTER TABLE `job_stocks` CHANGE `total` `total` DOUBLE(8,2) NULL DEFAULT NULL");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
