<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStorePurchaseOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('store_purchase_orders', function (Blueprint $table) {
            $table->id();
            $table->integer('po_number');
            $table->string('date');
            $table->unsignedBigInteger('customer_id');
            $table->text('Item');
            $table->integer('items_required');
            $table->string('specification');
            $table->float('value');
            $table->boolean('extra_to_job')->default(0);
            $table->string('purchased_by');
            $table->foreign('customer_id')->references('id')->on('customers')->onDelete('cascade');
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
        Schema::dropIfExists('store_purchase_orders');
    }
}
