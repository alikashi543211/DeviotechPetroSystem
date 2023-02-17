<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterVerifQuotationsTableForDropingColumns extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('verif_quotations', function (Blueprint $table) {
            //
            $table->dropColumn('total_nozzles');
            $table->dropColumn('cost_1st_nozzle');
            $table->dropColumn('cost_other_nozzles');
            $table->dropColumn('cost_all_nozzles');
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
            $table->integer('total_nozzles')->default(0);
            $table->float('cost_1st_nozzle')->nullable();
            $table->float('cost_other_nozzles')->nullable();
            $table->float('cost_all_nozzles')->nullable();
        });
    }
}
