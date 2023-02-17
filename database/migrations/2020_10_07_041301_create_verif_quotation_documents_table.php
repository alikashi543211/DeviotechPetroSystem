<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVerifQuotationDocumentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('verif_quotation_documents', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('verif_quotation_id');
            $table->string('file');
            $table->foreign('verif_quotation_id')->references('id')->on('verif_quotations')->onDelete('cascade');
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
        Schema::dropIfExists('verif_quotation_documents');
    }
}
