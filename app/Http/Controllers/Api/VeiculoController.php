<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Veiculo;
use Illuminate\Http\Request;

class VeiculoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function __construct(private veiculo $veiculo){

    }
    public function index(veiculo $veiculo)
    {
     
    $veiculos = $this->veiculo->all();
    
    if ($veiculos->isEmpty()) {
        return response()->json(['message' => 'Nenhuma veiculo encontrado'], 404);
    }
    
    return response()->json($veiculos, 200);
        
    }
    public function store(Request $request)
    {
        $veiculo=$this->veiculo->create($request->all());
    
        return response()->json($veiculo, 201);
    }

 /**
 * Display the specified resource.
 */
public function show(string $id)
{
    $veiculo = $this->veiculo->find($id);
    
    if (!$veiculo) {
        return response()->json(['message' => 'veiculo não encontrado'], 404);
    }
    
    return response()->json($veiculo, 200);
}

/**
 * Update the specified resource in storage.
 */
public function update(Request $request, string $id)
{
    $veiculo = $this->veiculo->find($id);
    
    if (!$veiculo) {
        return response()->json(['message' => 'veiculo não encontrado'], 404);
    }
    
    $veiculo->update($request->all());

    return response()->json($veiculo, 200);
}

/**
 * Remove the specified resource from storage.
 */
public function destroy(string $id)
{
    $veiculo = $this->veiculo->find($id);
    
    if (!$veiculo) {
        return response()->json(['message' => 'veiculo não encontrado'], 404);
    }
    
    $veiculo->delete();

    return response()->json([], 204);
}


    
}
