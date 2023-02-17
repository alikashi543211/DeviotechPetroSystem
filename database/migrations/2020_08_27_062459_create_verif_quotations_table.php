<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVerifQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('verif_quotations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_id');
            $table->unsignedBigInteger('job_id')->nullable();
            $table->unsignedBigInteger('signatory_id');
            $table->string('date')->nullable();
            $table->float('travel_km')->nullable();
            $table->float('travel_km_cost')->nullable();
            $table->float('travel_total_cost')->nullable();
            $table->integer('total_nozzles')->default(0);
            $table->float('cost_1st_nozzle')->nullable();
            $table->float('cost_other_nozzles')->nullable();
            $table->float('cost_all_nozzles')->nullable();
            $table->integer('discount')->nullable()->comment = "In percentage";
            $table->float('vat')->nullable()->comment = "In percentage";
            $table->float('rate')->nullable();
            $table->float('total_value')->nullable();
            $table->text('internal_notes')->nullable();
            $table->text('block1')->nullable();
            $table->text('block2')->nullable();
            $table->integer('no_of_days')->nullable();
            $table->boolean('warranty')->default(0);
            $table->enum('sign_off', [1, 2, 3])->nullable()->comment = "1: Preliminaries, 2: PSDP & PSCS, 3: Retailer";
            $table->enum('quotation_type', [1, 2, 3])->nullable()->comment = "1: Callibration, 2: Verification, 3: Callibration & Verification";
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
        Schema::dropIfExists('verif_quotations');
    }
}
