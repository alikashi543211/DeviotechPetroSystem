<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePumpNumbersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pump_numbers', function (Blueprint $table) {
            $table->id();
            $table->string("pump_no");
            $table->string("serial_no");
            $table->boolean("w_m_seals")->default(0);
            $table->unsignedBigInteger('form_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pump_numbers');
    }
}
