<?php

namespace Tests\Feature\Api;

use App\Models\Veiculo;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Testing\Fluent\AssertableJson;

use Tests\TestCase;

class VeiculoControllerTest extends TestCase
{
   /* public function test_veiculo_endpoint_get(): void
    {
       // $veiculo=Veiculo::factory(1)->Create();
        $response = $this->getJson('/api/veiculo');

        $response->assertStatus(200);
        $response->assertJson(function (AssertableJson $json) {
            $json->whereType('0.id', 'integer');
            $json->whereType('0.marca', 'string');
            $json->whereType('0.modelo', 'string');
            $json->whereType('0.cor', 'string');
            $json->whereType('0.cliente_id', 'integer');
            $json->whereType('0.placa', 'string');
            $json->whereType('0.ano_fabricacao', 'string');
            $json->whereType('0.created_at', 'string');
            $json->whereType('0.updated_at', 'string');
        });
    }

    public function test_get_single_veiculo_endpoint(): void
    {
        //gerando dados
        $veiculo=Veiculo::factory(1)->CreateOne();
        $response = $this->getJson('/api/veiculo/' .$veiculo->id);

        $response->assertStatus(200);
        $response->assertJson(function(AssertableJson $json){
            //ver se tem string ou  numero
            $json->whereAllType([
            'id'=>'integer',
            'marca'=>'string',
            'modelo'=>'string',
            'cor'=>'string',
            'cliente_id'=>'integer',
            'placa'=>'string',
            'ano_fabricacao'=>'string',
            ]);
           
             //ver se tem todas as colunas e aceita até mesmo as colunas nao informadas
        $json->hasAll(['id', 'marca', 'modelo', 'cliente_id','cor','placa', 'ano_fabricacao'])->etc();
        }
    );
 
    }

    public function test_veiculo_endpoint_post()
    {
    $veiculo=Veiculo::factory(1)->makeOne()->toArray();
     $response = $this->postJson('/api/veiculo' , $veiculo);
     $response->assertStatus(201);
  
    $response->assertJson(function(AssertableJson $json) use($veiculo){
      //ver se tem string ou  numero
      $json->whereAll([
        'marca'=>$veiculo['marca'] ,
        'modelo'=>$veiculo[ 'modelo'],
        'cor'=>$veiculo['cor'] , 
        'cliente_id'=>$veiculo['cliente_id'] ,
        'placa'=>$veiculo['placa'] ,
        'ano_fabricacao'=>$veiculo['ano_fabricacao'],    
        ])->etc();
    });
  }
  

  public function test_veiculo_endpoint_put()
  {
 // Cliente::factory(1)->CreateOne();
  $veiculo = [
    'marca' => 'fox',
    'modelo' => 'sei lá', // ou true, dependendo do valor desejado
    'cor' => 'rosa',
    'cliente_id' => 1,
    'placa' => '5960',
    'ano_fabricacao' => '2024-04-30 22:23:37' 
];


  $response = $this->putJson('/api/veiculo/1' , $veiculo);

   $response->assertStatus( 200);
  $response->assertJson(function(AssertableJson $json) use($veiculo){
    //ver se tem string ou  numero
    $json->whereAll([
        'marca'=>$veiculo['marca'] ,
        'modelo'=>$veiculo[ 'modelo'],
        'cor'=>$veiculo['cor'] , 
        'cliente_id'=>$veiculo['cliente_id'] ,
        'placa'=>$veiculo['placa'] ,
        'ano_fabricacao'=>$veiculo['ano_fabricacao'], 
      
      ])->etc();
  });
}

public function test_patch_veiculo_endpoint(){
    
    // Cliente::factory(1)->CreateOne();
   
   $veiculo=[
     'marca'=>'Atualizando só veiculo mesmo',
   ];
     $response=$this->patchJson('/api/veiculo/2', $veiculo);
    
     $response->assertStatus(200);
   
     $response->assertJson(function(AssertableJson $json) use($veiculo){
         //ver se tem string ou numero
         $json->where('marca', $veiculo['marca'])->etc();
     });
   
   }
   
   public function test_delete_veiculo_endpoint(){
       
     //Cliente::factory(1)->Create();
     //mude o id 
     $response=$this->deleteJson('/api/veiculo/4' );
    
     $response->assertStatus(204);
   
   }
   */
}
