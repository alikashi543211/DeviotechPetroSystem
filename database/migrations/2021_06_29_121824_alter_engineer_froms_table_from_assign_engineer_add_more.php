<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterEngineerFromsTableFromAssignEngineerAddMore extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('engineer_forms', function (Blueprint $table) {
            $table->string("assign_from")->nullable()->after("id");
            $table->string("assign_to")->nullable()->after("assign_from");
            $table->unsignedBigInteger("contact_id")->nullable()->after("assign_to");
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
        Schema::table('engineer_forms', function (Blueprint $table) {
            
        });
    }
}
