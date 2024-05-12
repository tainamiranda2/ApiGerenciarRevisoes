<?php

namespace App\Http\Controllers\Api;
use App\Models\Revisao;
use App\Models\Cliente;
use App\Models\Veiculo;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RelatorioRevisaoController extends Controller
{
    public function marcasComMaiorNumeroRevisoes()
{
    $marcasComRevisoes = Revisao::select('veiculos.marca')
        ->join('veiculos', 'revisoes.veiculo_id', '=', 'veiculos.id')
        ->groupBy('veiculos.marca')
        ->orderByRaw('COUNT(*) DESC')
        ->get();

    return response()->json($marcasComRevisoes);
}

public function clienteComMaiorNumeroRevisoes()
{
    $clienteComMaisRevisoes = Cliente::withCount('revisoes')
        ->orderByDesc('veiculo_id')
        ->first();

    return response()->json($clienteComMaisRevisoes);
}

}
