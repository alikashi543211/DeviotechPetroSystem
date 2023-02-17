<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobPurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_purchases', function (Blueprint $table) {
            $table->id();
            $table->string('date');
            $table->unsignedBigInteger('job_id');
            $table->unsignedBigInteger('supplier_id');
            $table->integer('items_required');
            $table->string('specification')->nullable();
            $table->float('value');
            $table->boolean('extra_to_job')->default(0);
            $table->string('purchased_by');
            $table->timestamps();

            $table->foreign('job_id')->references('id')->on('jobs')->onDelete('cascade');
            $table->foreign('supplier_id')->references('id')->on('suppliers')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_purchases');
    }
}
