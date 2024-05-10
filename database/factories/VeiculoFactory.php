<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Veiculo>
 */
class VeiculoFactory extends Factory
{
    
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'cliente_id' => function () {
                return \App\Models\Cliente::factory()->create()->id;
            },
            'marca' => $this->faker->word,
            'modelo' => $this->faker->word,
            'cor' => $this->faker->colorName,
            'placa' => $this->faker->bothify('???####'),
            'ano_fabricacao' => $this->faker->dateTimeBetween('-20 years', 'now')->format('Y-m-d H:i:s'),
            'created_at' => now(),
            'updated_at' => now(),
        
        ];
    }
}
