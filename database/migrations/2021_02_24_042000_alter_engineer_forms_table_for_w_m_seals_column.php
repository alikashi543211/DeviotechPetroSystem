<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterEngineerFormsTableForWMSealsColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('engineer_forms', function (Blueprint $table) {
            $table->boolean('w_m_seals')->default(0);
            $table->string('email_date')->nullable();
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
