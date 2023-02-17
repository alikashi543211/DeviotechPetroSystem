<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEquipmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('equipment', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_id');
            $table->unsignedBigInteger('pump_make_and_model_id');
            $table->string('serial');
            $table->enum('type', [1, 2, 3, 4])->nullable()->comment = "1: Dual, 2: Mono, 3: Quad, 4: Six Hose";
            $table->string('equipment_no')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('no_of_months')->nullable();
            $table->string('start_date')->nullable();
            $table->string('end_date')->nullable();

            $table->foreign('customer_id')->references('id')->on('customers')->onDelete('cascade');
            $table->foreign('pump_make_and_model_id')->references('id')->on('pump_make_and_models')->onDelete('cascade');
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
        Schema::dropIfExists('equipment');
    }
}
