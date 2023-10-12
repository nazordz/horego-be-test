<?php

namespace Database\Seeders;

use App\Models\Organization;
use App\Models\Person;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OrganizationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Organization::factory()
                    ->count(10)
                    ->hasPersons(10)
                    ->create();
    }
}
