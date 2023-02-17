<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobStocksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_stocks', function (Blueprint $table) {
            $table->id();
            $table->string('date');
            $table->unsignedBigInteger('job_id');
            $table->unsignedBigInteger('stock_item_id');
            $table->string('serial_no');
            $table->string('qty');
            $table->float('price');
            $table->float('total');
            $table->timestamps();

            $table->foreign('job_id')->references('id')->on('jobs')->onDelete('cascade');
            $table->foreign('stock_item_id')->references('id')->on('stock_items')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_stocks');
    }
}
