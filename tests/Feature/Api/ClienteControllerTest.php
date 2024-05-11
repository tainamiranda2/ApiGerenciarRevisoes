<?php

namespace Tests\Feature\Api;

use App\Models\Cliente;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Testing\Fluent\AssertableJson;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ClienteControllerTest extends TestCase
{
   /*
    public function test_cliente_endpoint_get(): void
    {
       // $cliente=Cliente::factory(1)->Create();
        $response = $this->getJson('/api/cliente');
        $response->assertStatus(200);
        $response->assertJson(function (AssertableJson $json) {
            $json->whereType('0.id', 'integer');
            $json->whereType('0.nome', 'string');
            $json->whereType('0.sexo', 'string');
            $json->where('0.sexo', fn($value) => strlen($value) === 1);
            $json->whereType('0.endereco', 'string');
            $json->whereType('0.email', 'string');
            $json->whereType('0.telefone', 'string');
            $json->whereType('0.data_nascimento', 'string');
            $json->whereType('0.created_at', 'string');
            $json->whereType('0.updated_at', 'string');
        });
        
    }
    public function test_get_single_cliente_endpoint(): void
    {
        //gerando dados
        $cliente=Cliente::factory(1)->CreateOne();
        $response = $this->getJson('/api/cliente/' .$cliente->id);

        $response->assertStatus(200);
        $response->assertJson(function(AssertableJson $json){
            //ver se tem string ou  numero
            $json->whereAllType([
            'id'=>'integer',
            'nome'=>'string',
            'endereco'=>'string',
            'telefone'=>'string',
            'email'=>'string',
            'sexo'=>'string',
            ]);
           
             //ver se tem todas as colunas e aceita até mesmo as colunas nao informadas
        $json->hasAll(['id', 'nome', 'endereco','telefone','email', 'sexo'])->etc();
        }
    );
 
    }
    public function test_cliente_endpoint_post()
    {
    $cliente=Cliente::factory(1)->makeOne()->toArray();
     $response = $this->postJson('/api/cliente' , $cliente);
     $response->assertStatus(201);
  
    $response->assertJson(function(AssertableJson $json) use($cliente){
      //ver se tem string ou  numero
      $json->whereAll([
        'nome'=>$cliente['nome'] ,
        'sexo'=>$cliente[ 'sexo'],
        'endereco'=>$cliente['endereco'] , 
        'telefone'=>$cliente['telefone'] ,
        'email'=>$cliente['email'], 
        'data_nascimento'=>$cliente['data_nascimento'],    
            
     
        ])->etc();
    });
  }
  
  
  public function test_cliente_endpoint_put()
  {
 // Cliente::factory(1)->CreateOne();
  $cliente = [
    'telefone' => '7585095',
    'sexo' => false, // ou true, dependendo do valor desejado
    'email' => 'email@teste.com',
    'nome' => 'nome atualizado',
    'endereco' => 'endereço atualizado',
    'data_nascimento' => '2024-04-30 22:23:37' 
];


  $response = $this->putJson('/api/cliente/1' , $cliente);

   $response->assertStatus( 200);
  $response->assertJson(function(AssertableJson $json) use($cliente){
    //ver se tem string ou  numero
    $json->whereAll([
        'nome'=>$cliente['nome'] ,
        'sexo'=>$cliente[ 'sexo'],
        'endereco'=>$cliente['endereco'] , 
        'telefone'=>$cliente['telefone'] ,
        'email'=>$cliente['email'], 
        'data_nascimento'=>$cliente['data_nascimento'],  
      
      ])->etc();
  });
}

public function test_patch_cliente_endpoint(){
    
 // Cliente::factory(1)->CreateOne();

$pedido=[
  'nome'=>'Atualizando só cliente mesmo',
];
  $response=$this->patchJson('/api/cliente/2', $pedido);
 
  $response->assertStatus(200);

  $response->assertJson(function(AssertableJson $json) use($pedido){
      //ver se tem string ou numero
      $json->where('nome', $pedido['nome'])->etc();
  });

}

public function test_delete_cliente_endpoint(){
    
  //Cliente::factory(1)->Create();
  //mude o id 
  $response=$this->deleteJson('/api/cliente/13' );
 
  $response->assertStatus(204);

}
*/

}
