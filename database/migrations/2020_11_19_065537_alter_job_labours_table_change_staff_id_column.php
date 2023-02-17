<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterJobLaboursTableChangeStaffIdColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("ALTER TABLE `job_labours` CHANGE `amount` `amount` DOUBLE(8,2) NULL DEFAULT NULL");
        DB::statement("ALTER TABLE `job_labours` CHANGE `staff_id` `contact_id` BIGINT(20) UNSIGNED NULL");
        DB::statement("ALTER TABLE `job_labours` DROP FOREIGN KEY `job_labours_staff_id_foreign`; ALTER TABLE `job_labours` ADD CONSTRAINT `job_labours_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `staff`(`id`) ON DELETE CASCADE ON UPDATE RESTRICT");
        DB::statement("ALTER TABLE `job_labours` DROP FOREIGN KEY `job_labours_contact_id_foreign`; ALTER TABLE `job_labours` ADD CONSTRAINT `job_labours_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts`(`id`) ON DELETE CASCADE ON UPDATE RESTRICT");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
