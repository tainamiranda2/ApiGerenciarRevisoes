<?php

namespace App\Http\Controllers\Api;
use Illuminate\Support\Facades\DB;
use App\Models\Cliente;
use App\Models\Veiculo;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RelatorioVeiculoController extends Controller
{
    //por pessoa
    public function veiculoRelatorio()
    {
        // Obter todos os clientes com seus veículos relacionados
        $clientesComVeiculos = Cliente::with('veiculos')->get();

        // Array para armazenar os detalhes dos veículos por pessoa
        $veiculosPorPessoa = [];

        // Iterar sobre cada cliente e seus veículos
        foreach ($clientesComVeiculos as $cliente) {
            // Obter o nome do cliente
            $nomeCliente = $cliente->nome;

            // Array para armazenar os veículos do cliente atual
            $veiculosCliente = [];

            // Iterar sobre os veículos do cliente atual
            foreach ($cliente->veiculos as $veiculo) {
                // Adicionar os detalhes do veículo ao array de veículos do cliente
                $veiculosCliente[] = [
                    'marca' => $veiculo->marca,
                    'modelo' => $veiculo->modelo,
                    'cor' => $veiculo->cor,
                    'placa' => $veiculo->placa,
                    'ano_fabricacao' => $veiculo->ano_fabricacao,
                ];
            }

            // Adicionar os veículos do cliente atual ao array principal
            $veiculosPorPessoa[$nomeCliente] = $veiculosCliente;
        }

        return response()->json($veiculosPorPessoa);

    }

    // por sexo
    public function quemTemMaisVeiculos()
    {
        // Contar o número total de veículos para homens
        $totalVeiculosHomens = Cliente::where('sexo', '1')->withCount('veiculos')->count('id');

        // Contar o número total de veículos para mulheres
        $totalVeiculosMulheres = Cliente::where('sexo', '0')->withCount('veiculos')->count('id');

        // Determinar quem tem mais veículos
        $quemTemMaisVeiculos = $totalVeiculosHomens > $totalVeiculosMulheres ? 'Homens' : 'Mulheres';

        return response()->json([
            'quem_tem_mais_veiculos' => $quemTemMaisVeiculos,
            'total_veiculos_homens' => $totalVeiculosHomens,
            'total_veiculos_mulheres' => $totalVeiculosMulheres,
        ]);
    }
    public function marcasOrdenadasPorVeiculos()
{
    // Obter todas as marcas de veículos e contar o número de veículos para cada marca
    $marcasOrdenadas = Veiculo::select('marca')
        ->groupBy('marca')
        ->orderByRaw('COUNT(*) DESC')
        ->get();

    return response()->json($marcasOrdenadas);
}

public function totaisMarcasPorSexo()
{
    $totaisMarcasPorSexo =DB::table('clientes')
        ->join('veiculos', 'clientes.id', '=', 'veiculos.cliente_id')
        ->select('clientes.sexo', 'veiculos.marca', DB::raw('COUNT(*) AS total_veiculos'))
        ->groupBy('clientes.sexo', 'veiculos.marca')
        ->orderByDesc('total_veiculos')
        ->get();

    return response()->json($totaisMarcasPorSexo);
}

}
