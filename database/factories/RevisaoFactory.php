<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Revisao>
 */
class RevisaoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'veiculo_id' => function () {
                return \App\Models\Veiculo::factory()->create()->id;
            },
            'type_servicos' => $this->faker->word,
            'quilometragem' => $this->faker->numberBetween(1000, 100000),
            'detalhes' => $this->faker->sentence,
            'data_revisao' => $this->faker->dateTimeBetween('-1 year', 'now')->format('Y-m-d H:i:s'),
            'created_at' => now(),
            'updated_at' => now(),
        
        ];
    }
}
