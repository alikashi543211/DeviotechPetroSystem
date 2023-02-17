<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobLaboursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_labours', function (Blueprint $table) {
            $table->id();
            $table->string('date');
            $table->unsignedBigInteger('job_id');
            $table->unsignedBigInteger('staff_id');
            $table->string('job_sheet')->nullable();
            $table->string('start');
            $table->string('end')->nullable();
            $table->integer('hours');
            $table->float('amount');
            $table->timestamps();

            $table->foreign('job_id')->references('id')->on('jobs')->onDelete('cascade');
            $table->foreign('staff_id')->references('id')->on('staff')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_labours');
    }
}
