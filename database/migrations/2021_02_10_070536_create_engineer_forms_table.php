<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEngineerFormsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('engineer_forms', function (Blueprint $table) {
            $table->id();
            $table->string("date")->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->unsignedBigInteger('job_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('job_id')->references('id')->on('jobs')->onDelete('cascade');
            $table->string("job_sheet_no")->nullable();
            $table->string("order_no")->nullable();
            $table->string("contact_site")->nullable();
            $table->text("work_carried_out")->nullable();
            $table->text("comment")->nullable();
            $table->boolean("completed")->nullable()->default(0);
            $table->text("job_completed_comment")->nullable();
            $table->text("not_completed_comment")->nullable();
            $table->string("travel_from")->nullable();
            $table->string("travel_to")->nullable();
            $table->string("travel_time")->nullable();
            $table->string("site_arrival_time")->nullable();
            $table->string("site_departure_time")->nullable();
            $table->string("time_on_site")->nullable();
            $table->string("eng_name")->nullable();
            $table->string("van_no")->nullable();
            $table->string("signature")->nullable();
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
        Schema::dropIfExists('engineer_forms');
    }
}
