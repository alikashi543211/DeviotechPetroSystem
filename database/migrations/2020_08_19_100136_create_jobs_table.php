<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->id();
            $table->string('date')->nullable();
            $table->unsignedBigInteger('jobtype_id')->nullable();
            $table->unsignedBigInteger('customer_id');
            $table->unsignedBigInteger('category_id')->nullable();
            $table->unsignedBigInteger('contact_id')->nullable();

            $table->boolean('warranty')->nullable();
            $table->boolean('calibration')->nullable();
            $table->string('expectcomplete')->nullable();
            $table->string('name')->nullable();
            $table->string('contact')->nullable();
            $table->text('detail')->nullable();
            $table->text('action')->nullable();
            $table->boolean('invoiced')->nullable();
            $table->boolean('filed')->nullable();   
            $table->string('enteredby')->nullable();
            $table->boolean('completed')->nullable();
            $table->string('datecomplete')->nullable();
            $table->timestamps();
            $table->foreign('jobtype_id')->references('id')->on('job_types')->onDelete('cascade');
            $table->foreign('customer_id')->references('id')->on('customers')->onDelete('cascade');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreign('contact_id')->references('id')->on('contacts')->onDelete('cascade');
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jobs');
    }
}
