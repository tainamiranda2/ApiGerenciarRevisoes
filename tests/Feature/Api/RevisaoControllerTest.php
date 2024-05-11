<?php

namespace Tests\Feature\Api;
use App\Models\Revisao;
use Illuminate\Testing\Fluent\AssertableJson;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class RevisaoControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_revisao_endpoint_get(): void
    {
        $revisao=Revisao::factory(1)->Create();
        $response = $this->get('/api/revisao');

        $response->assertStatus(200);
        $response->assertJson(function (AssertableJson $json) {
            $json->whereType('0.id', 'integer');
            $json->whereType('0.veiculo_id', 'integer');
            $json->whereType('0.type_servicos', 'string');
            $json->whereType('0.quilometragem', 'string');
            $json->whereType('0.detalhes', 'string');
            $json->whereType('0.data_revisao', 'string');
            $json->whereType('0.created_at', 'string');
            $json->whereType('0.updated_at', 'string');
        });
    }

    public function test_get_single_revisao_endpoint(): void
    {
        //gerando dados
        $revisao=Revisao::factory(1)->CreateOne();
        $response = $this->getJson('/api/revisao/' .$revisao->id);
        $response->assertStatus(200);
        $response->assertJson(function(AssertableJson $json){
            //ver se tem string ou  numero
            $json->whereAllType([
            'id'=>'integer',
            'veiculo_id' => 'integer',
            'type_servicos' => 'string', 
            'quilometragem' => 'string',
            'detalhes' => 'string',
            'data_revisao' => 'string' 
            ]);
           
             //ver se tem todas as colunas e aceita até mesmo as colunas nao informadas
        $json->hasAll(['id', 'veiculo_id', 'type_servicos','quilometragem','detalhes', 'data_revisao'])->etc();
        }
    );
 
    }
    public function test_revisao_endpoint_post()
    {
        $revisao = Revisao::factory()->make()->toArray();

        $response = $this->postJson('/api/revisao', $revisao);

        $response->assertStatus(201);

        $response->assertJson(function (AssertableJson $json) use ($revisao) {
            $json->whereAll([
                'veiculo_id' => $revisao['veiculo_id'],
                'type_servicos' => $revisao['type_servicos'],
                'quilometragem' => $revisao['quilometragem'],
                'detalhes' => $revisao['detalhes'],
                'data_revisao' => $revisao['data_revisao'],
            ])->etc();
        });
    }
    public function test_revisao_endpoint_put()
    {
   // revisao::factory(1)->CreateOne();
    $revisao = [
      'veiculo_id' => 1,
      'type_servicos' => 'troca de óleo', 
      'quilometragem' => 'quilometragem',
      'detalhes' => 'detalhes',
      'data_revisao' => '2024-04-30 22:23:37' 
  ];
  
  
    $response = $this->putJson('/api/revisao/1' , $revisao);
  
     $response->assertStatus( 200);
    $response->assertJson(function(AssertableJson $json) use($revisao){
      //ver se tem string ou  numero
      $json->whereAll([
        'veiculo_id' => $revisao['veiculo_id'],
        'type_servicos' => $revisao['type_servicos'],
        'quilometragem' => $revisao['quilometragem'],
        'detalhes' => $revisao['detalhes'],
        'data_revisao' => $revisao['data_revisao'],
        ])->etc();
    });
  }
  
  public function test_patch_revisao_endpoint(){
      
   // revisao::factory(1)->CreateOne();
  
  $revisao=[
    'detalhes'=>'Atualizando só revisao mesmo',
  ];
    $response=$this->patchJson('/api/revisao/2', $revisao);
   
    $response->assertStatus(200);
  
    $response->assertJson(function(AssertableJson $json) use($revisao){
        //ver se tem string ou numero
        $json->where('detalhes', $revisao['detalhes'])->etc();
    });
  
  }
  
  public function test_delete_revisao_endpoint(){
      
    //revisao::factory(1)->Create();
    //mude o id 
    $response=$this->deleteJson('/api/revisao/6' );
   
    $response->assertStatus(204);
  
  }
    
}
