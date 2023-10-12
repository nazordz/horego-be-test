<?php

namespace Database\Factories;

use App\Models\Organization;
use App\Models\User;
use App\Models\UserOrganization;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\UserOrganization>
 */
class UserOrganizationFactory extends Factory
{
    protected $model = UserOrganization::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $organizations = Organization::pluck('id')->toArray();
        $users = User::where('role', 'customer' )->pluck('id')->toArray();

        return [
            'user_id' => fake()->randomElement($users),
            'organization_id' => fake()->randomElement($organizations),
            'is_manager' => true,
        ];
    }
}
