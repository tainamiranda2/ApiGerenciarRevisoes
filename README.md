## Api para revisões de veiculos.

## Rotas

### Clientes

- **GET /api/clientes**: Retorna todos os clientes cadastrados.
- **GET /api/clientes/{id}**: Retorna um cliente específico com o ID correspondente.
- **POST /api/clientes**: Cria um novo cliente com os dados fornecidos no corpo da requisição.
- **PUT /api/clientes/{id}**: Atualiza os dados de um cliente existente com o ID correspondente.
- **PATCH /api/clientes/{id}**: Atualiza parcialmente os dados de um cliente existente com o ID correspondente.
- **DELETE /api/clientes/{id}**: Exclui um cliente com o ID correspondente.

### Veículos

- **GET /api/veiculos**: Retorna todos os veículos cadastrados.
- **GET /api/veiculos/{id}**: Retorna um veículo específico com o ID correspondente.
- **POST /api/veiculos**: Cria um novo veículo com os dados fornecidos no corpo da requisição.
- **PUT /api/veiculos/{id}**: Atualiza os dados de um veículo existente com o ID correspondente.
- **PATCH /api/veiculos/{id}**: Atualiza parcialmente os dados de um veículo existente com o ID correspondente.
- **DELETE /api/veiculos/{id}**: Exclui um veículo com o ID correspondente.

### Revisões

- **GET /api/revisoes**: Retorna todas as revisões cadastradas.
- **GET /api/revisoes/{id}**: Retorna uma revisão específica com o ID correspondente.
- **POST /api/revisoes**: Cria uma nova revisão com os dados fornecidos no corpo da requisição.
- **PUT /api/revisoes/{id}**: Atualiza os dados de uma revisão existente com o ID correspondente.
- **PATCH /api/revisoes/{id}**: Atualiza parcialmente os dados de uma revisão existente com o ID correspondente.
- **DELETE /api/revisoes/{id}**: Exclui uma revisão com o ID correspondente.

##s Migrations
## sequencia de execuções

- php artisan migrate --path=database/migrations/2024_05_10_180712_cliente.php
- php artisan migrate --path=database/migrations/2024_05_10_180558_veiculo.php
- php artisan migrate --path=database/migrations/2024_05_10_180531_revisao.php


## Factories

### basta executar os testes e será criado dados no banco de dados, mas aqui está um exemplo

class ClienteFactory extends Factory
{
    protected $model = Cliente::class;

    public function definition()
    {
        return [
            'nome' => $this->faker->name,
            'sexo' => $this->faker->randomElement(['M', 'F']),
            'endereco' => $this->faker->address,
            'email' => $this->faker->unique()->safeEmail,
            'telefone' => $this->faker->phoneNumber,
            'data_nascimento' => $this->faker->dateTimeBetween('-50 years', '-18 years'),
        ];
    }
}


## Testes

### Testes para Clientes

- **Teste para GET /api/clientes**: Testa a resposta correta e o formato dos dados retornados ao buscar todos os clientes.
- **Teste para GET /api/clientes/{id}**: Testa se o cliente com o ID específico é retornado corretamente.
- **Teste para POST /api/clientes**: Verifica se é possível criar um novo cliente com os dados fornecidos.
- **Teste para PUT /api/clientes/{id}**: Garante que os dados de um cliente existente podem ser atualizados com sucesso.
- **Teste para PATCH /api/clientes/{id}**: Verifica se os dados de um cliente podem ser atualizados parcialmente.
- **Teste para DELETE /api/clientes/{id}**: Testa se um cliente pode ser excluído corretamente.

### Testes para Veículos

- **Teste para GET /api/veiculos**: Garante que todos os veículos são retornados corretamente.
- **Teste para GET /api/veiculos/{id}**: Verifica se um veículo específico é retornado corretamente.
- **Teste para POST /api/veiculos**: Testa se um novo veículo pode ser criado com sucesso.
- **Teste para PUT /api/veiculos/{id}**: Garante que os dados de um veículo existente podem ser atualizados com sucesso.
- **Teste para PATCH /api/veiculos/{id}**: Verifica se os dados de um veículo podem ser atualizados parcialmente.
- **Teste para DELETE /api/veiculos/{id}**: Testa se um veículo pode ser excluído corretamente.

### Testes para Revisões

- **Teste para GET /api/revisoes**: Verifica se todas as revisões são retornadas corretamente.
- **Teste para GET /api/revisoes/{id}**: Testa se uma revisão específica é retornada corretamente.
- **Teste para POST /api/revisoes**: Garante que uma nova revisão pode ser criada com sucesso.
- **Teste para PUT /api/revisoes/{id}**: Testa se os dados de uma revisão existente podem ser atualizados com sucesso.
- **Teste para PATCH /api/revisoes/{id}**: Verifica se os dados de uma revisão podem ser atualizados parcialmente.
- **Teste para DELETE /api/revisoes/{id}**: Testa se uma revisão pode ser excluída corretamente.

