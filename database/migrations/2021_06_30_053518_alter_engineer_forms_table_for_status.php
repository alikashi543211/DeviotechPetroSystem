<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterEngineerFormsTableForStatus extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('engineer_forms', function (Blueprint $table) {
            $table->enum("status", ["1", "2"])->comment("1. Pending 2. Submitted")->default("1")->after("signature");
            $table->integer("num_of_days")->after("status")->nullable();
            $table->string("date_of_submission")->after("status")->nullable();
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
