<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\User::create([
            'name' => 'Admin',
            'email' => 'admin@petro.com',
            'email_verified_at' => '2020-08-07 17:00:00',
            'password' => bcrypt("12345678"),
            'role' => 'admin',
            'created_at' => '2020-08-07 00:00:00',
            'updated_at' => '2020-08-07 07:00:00'
        ]);

        App\User::create([
            'name' => 'Sub Admin',
            'email' => 'subadmin@petro.com',
            'email_verified_at' => '2020-08-07 17:00:00',
            'password' => bcrypt("12345678"),
            'role' => 'subadmin',
            'created_at' => '2020-08-07 00:00:00',
            'updated_at' => '2020-08-07 07:00:00'
        ]);
    }
}
