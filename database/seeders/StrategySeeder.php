<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StrategySeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        DB::table('strategies')->insert([
            ['name' => 'DESKTOP'],
            ['name' => 'MOBILE']
        ]);
        
    }
}