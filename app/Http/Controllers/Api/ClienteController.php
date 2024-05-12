<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Cliente;
use Illuminate\Http\Request;

class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function __construct(private Cliente $cliente){

    }
    public function index(Cliente $cliente)
    {
     
    $clientes = $this->cliente->all();
    
    if ($clientes->isEmpty()) {
        return response()->json(['message' => 'Nenhum cliente encontrado'], 404);
    }
    
    return response()->json($clientes, 200);
        
    }

 /**
 * Display the specified resource.
 */
public function show(string $id)
{
    $cliente = $this->cliente->find($id);
    
    if (!$cliente) {
        return response()->json(['message' => 'Cliente não encontrado'], 404);
    }
    
    return response()->json($cliente, 201);
}
public function store(Request $request)
    {
        $cliente=$this->cliente->create($request->all());
    
        return response()->json($cliente, 201);
    }
/**
 * Update the specified resource in storage.
 */
public function update(Request $request, string $id)
{
    $cliente = $this->cliente->find($id);
    
    if (!$cliente) {
        return response()->json(['message' => 'Cliente não encontrado'], 404);
    }
    
    $cliente->update($request->all());

    return response()->json($cliente, 200);
}

/**
 * Remove the specified resource from storage.
 */
public function destroy(string $id)
{
    $cliente = $this->cliente->find($id);
    
    if (!$cliente) {
        return response()->json(['message' => 'Cliente não encontrado'], 404);
    }
    
    $cliente->delete();

    return response()->json([], 204);
}

}
