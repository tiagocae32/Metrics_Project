<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        DB::table('categories')->insert([
            ['name' => 'ACCESSIBILITY'],
            ['name' => 'BEST_PRACTICES'],
            ['name' => 'PERFORMANCE'],
            ['name' => 'PWA'],
            ['name' => 'SEO']
        ]);
    }
}