<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Ciprian',
            'email' => 'ciprian@devz.ro',
            'password' => '$2y$10$bfDQYmSas9CvWsIB.btzuOUa1xyUl8uUlOhFI115xbnX/kmcKm29W',
            'role_id' => 1
          ]);
          DB::table('users')->insert([
            'name' => 'Alin',
            'email' => 'Tur8atu@icloud.com',
            'password' => '$2y$10$pwnAI7axEpm1Mm206e9F1.Kfq9mxmGHCuBuktkvGo0emsVH9qSNK6',
            'role_id' => 1
          ]);
    }
}
