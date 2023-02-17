<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIssueToolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('issue_tools', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('tool_id');
            $table->unsignedBigInteger('job_id')->nullable();
            $table->string('serial_no')->nullable();
            $table->string('issued_to')->nullable();
            $table->string('date_allocated')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('date_returned')->nullable();
            $table->string('location_stored')->nullable();
            $table->enum('status', [
                'Issued', 'Returned'
            ])->default('Issued');

            $table->foreign('job_id')->references('id')->on('jobs')->onDelete('cascade');
            $table->foreign('tool_id')->references('id')->on('tools')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('issue_tools');
    }
}
