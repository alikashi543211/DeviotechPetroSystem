<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropQuotationTypeFromVerifQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('verif_quotations', function (Blueprint $table) {
            $table->dropColumn('quotation_type');
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
            $table->enum('quotation_type', [1, 2, 3])->nullable()->comment = "1: Callibration, 2: Verification, 3: Callibration & Verification";
        });
    }
}
