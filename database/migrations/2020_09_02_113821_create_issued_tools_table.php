<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIssuedToolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('issued_tools', function (Blueprint $table) {
            $table->id();
            $table->string('job_id')->nullable();
            $table->string('tool_id')->nullable();
            $table->string('date_allocated')->nullable();
            $table->string('allocated_by')->nullable();
            $table->string('date_returned')->nullable();
            $table->string('location')->nullable();
            $table->boolean('is_returned')->nullable();
            $table->string('issued_to')->nullable();
            $table->string('return_date')->nullable();
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
        Schema::dropIfExists('issued_tools');
    }
}
