<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterEngineerFormsTableForRemovingColumns extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('engineer_forms', function (Blueprint $table) {
            $table->dropColumn('site_arrival_time');
            $table->dropColumn('site_departure_time');
            $table->dropColumn('time_on_site');
            $table->dropColumn('travel_time');
            $table->dropColumn('job_sheet_no');
            $table->dropColumn('travel_from');
            $table->dropColumn('travel_to');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('engineer_forms', function (Blueprint $table) {
            //
        });
    }
}
