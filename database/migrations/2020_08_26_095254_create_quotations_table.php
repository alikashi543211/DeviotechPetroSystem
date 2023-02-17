<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quotations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_id');
            $table->unsignedBigInteger('job_id')->nullable();
            $table->unsignedBigInteger('signatory_id');
            $table->string('date')->nullable();
            $table->string('title')->nullable();
            $table->float('travel')->nullable();
            $table->string('availablity')->nullable();
            $table->string('payment_terms')->nullable();
            $table->float('vat')->nullable()->comment = "In percentage";
            $table->float('total_value')->nullable();
            $table->text('internal_notes')->nullable();
            $table->text('block1')->nullable();
            $table->text('block2')->nullable();
            $table->integer('no_of_days')->nullable();
            $table->boolean('warranty')->default(0);
            $table->enum('sign_off', [1, 2, 3])->nullable()->comment = "1: Preliminaries, 2: PSDP & PSCS, 3: Retailer";
            $table->enum('status', [
                'Open', 'Won', 'Loss'
            ])->default('Open');
            $table->timestamps();

            $table->foreign('job_id')->references('id')->on('jobs')->onDelete('cascade');
            $table->foreign('customer_id')->references('id')->on('customers')->onDelete('cascade');
            $table->foreign('signatory_id')->references('id')->on('signatories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quotations');
    }
}
