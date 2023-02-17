<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddQuotationTypeIdInVerifQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('verif_quotations', function (Blueprint $table) {
            $table->unsignedBigInteger('quotation_type_id');
            $table->foreign('quotation_type_id')->references('id')->on('quotation_types')->onDelete('cascade');
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
