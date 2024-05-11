<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Revisao extends Model
{
    use HasFactory;
    protected $table = 'revisoes';
    protected $fillable=[
        'veiculo_id',
        'type_servicos',
        'quilometragem',
      'detalhes',
       'data_revisao'];

}
