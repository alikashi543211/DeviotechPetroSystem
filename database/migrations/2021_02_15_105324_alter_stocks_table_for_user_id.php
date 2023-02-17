<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterStocksTableForUserId extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('job_stocks', function (Blueprint $table) {
            $table->unsignedBigInteger('form_id')->nullable();
            $table->foreign('form_id')->nullable()->references('id')->on('engineer_forms')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('job_stocks', function (Blueprint $table) {
            //
        });
    }
}
