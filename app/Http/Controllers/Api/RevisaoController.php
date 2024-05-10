<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Revisao;
use Illuminate\Http\Request;

class RevisaoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function __construct(private revisao $revisao){

    }
    public function index(revisao $revisao)
    {
     
    $revisaos = $this->revisao->all();
    
    if ($revisaos->isEmpty()) {
        return response()->json(['message' => 'Nenhuma revisao encontrado'], 404);
    }
    
    return response()->json($revisaos, 200);
        
    }
    public function store(Request $request)
    {
        $revisao=$this->revisao->create($request->all());
    
        return response()->json($revisao, 201);
    }

public function show(string $id)
{
    $revisao = $this->revisao->find($id);
    
    if (!$revisao) {
        return response()->json(['message' => 'revisao não encontrado'], 404);
    }
    
    return response()->json($revisao, 200);
}

/**
 * Update the specified resource in storage.
 */
public function update(Request $request, string $id)
{
    $revisao = $this->revisao->find($id);
    
    if (!$revisao) {
        return response()->json(['message' => 'revisao não encontrado'], 404);
    }
    
    $revisao->update($request->all());

    return response()->json($revisao, 200);
}

/**
 * Remove the specified resource from storage.
 */
public function destroy(string $id)
{
    $revisao = $this->revisao->find($id);
    
    if (!$revisao) {
        return response()->json(['message' => 'revisao não encontrado'], 404);
    }
    
    $revisao->delete();

    return response()->json([], 204);
}


    
}
