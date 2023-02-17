<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterJobLaboursTableForUpdateLabourForm extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('job_labours', function (Blueprint $table) {
            $table->string("cost_per_hour_site")->nullable();
            $table->string("cost_per_hour_travel")->nullable();
            $table->string("total_cost_site")->nullable();
            $table->string("total_cost_travel")->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('job_labours', function (Blueprint $table) {
            //
        });
    }
}
