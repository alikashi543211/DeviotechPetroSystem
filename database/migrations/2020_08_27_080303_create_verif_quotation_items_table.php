<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVerifQuotationItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('verif_quotation_items', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('verif_quotation_id');
            $table->integer('number');
            $table->integer('nozzles');
            $table->float('cost_1st_nozzle');
            $table->float('cost_other_nozzles');
            $table->float('cost_all_nozzles');
            $table->timestamps();

            $table->foreign('verif_quotation_id')->references('id')->on('verif_quotations')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('verif_quotation_items');
    }
}
