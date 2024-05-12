<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    use HasFactory;
    protected $fillable=[
        'telefone',
    'sexo',
     'email',
      'nome',
       'endereco',
       'data_nascimento'];

//trabalhando com os relatórios
       public function veiculos()
    {
        return $this->hasMany(Veiculo::class, 'cliente_id');
    }
}
