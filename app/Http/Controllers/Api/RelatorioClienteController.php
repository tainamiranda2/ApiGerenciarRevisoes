<?php

namespace App\Http\Controllers\Api;
use Carbon\Carbon;
use App\Models\Cliente;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RelatorioClienteController extends Controller
{
    public function __construct(private Cliente $cliente){

    }
    public function clienteRelatorio(Cliente $cliente){
        $homens = $this->cliente->where('sexo', '1')->get();
        $mulheres = $this->cliente->where('sexo', '0')->get();
    
        $idadeMediaHomens = $this->calcularIdadeMedia($homens);
        $idadeMediaMulheres = $this->calcularIdadeMedia($mulheres);
    
        $relatorio = [
            'homens' => [
                'quantidade' => $homens->count(),
                'idade_media' => $idadeMediaHomens
            ],
            'mulheres' => [
                'quantidade' => $mulheres->count(),
                'idade_media' => $idadeMediaMulheres
            ]
        ];
    
        return response()->json($relatorio, 200);
    }
    private function calcularIdadeMedia($clientes)
{
    $idadeTotal = 0;
    foreach ($clientes as $cliente) {
        $dataNascimento = Carbon::parse($cliente->data_nascimento);
        $idade = $dataNascimento->diffInYears(Carbon::now());
        $idadeTotal += $idade;
    }
    if ($clientes->count() > 0) {
        return $idadeTotal / $clientes->count();
    } else {
        return 0;
    }
}
}
