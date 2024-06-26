<?php

use App\Http\Controllers\Api\ClienteController;
use App\Http\Controllers\Api\RelatorioClienteController;
use App\Http\Controllers\Api\RelatorioRevisaoController;
use App\Http\Controllers\Api\RelatorioVeiculoController;
use App\Http\Controllers\Api\RevisaoController;
use App\Http\Controllers\Api\VeiculoController;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/
Route::get('/cliente', [ClienteController::class, 'index']);
Route::get('/cliente/{id}', [ClienteController::class, 'show']);
Route::post('/cliente', [ClienteController::class, 'store']);
Route::match(['put', 'patch'],'/cliente/{id}', [ClienteController::class, 'update']);
Route::delete('/cliente/{id}', [ClienteController::class, 'destroy']);

Route::get('/veiculo', [VeiculoController::class, 'index']);
Route::post('/veiculo', [VeiculoController::class, 'store']);
Route::match(['put', 'patch'],'/veiculo/{id}', [VeiculoController::class, 'update']);
Route::delete('/veiculo/{id}', [VeiculoController::class, 'destroy']);
Route::get('/veiculo/{id}', [VeiculoController::class, 'show']);

Route::get('/revisao', [RevisaoController::class, 'index']);
Route::post('/revisao', [RevisaoController::class, 'store']);
Route::match(['put', 'patch'],'/revisao/{id}', [RevisaoController::class, 'update']);
Route::delete('/revisao/{id}', [RevisaoController::class, 'destroy']);
Route::get('/revisao/{id}', [RevisaoController::class, 'show']);

Route::get('/relatorioCliente', [RelatorioClienteController::class, 'clienteRelatorio']);

Route::get('/relatorioVeiculo', [RelatorioVeiculoController::class, 'veiculoRelatorio']);
Route::get('/relatorioVeiculo/Genero', [RelatorioVeiculoController::class, 'quemTemMaisVeiculos']);
Route::get('/relatorioVeiculo/Marcas', [RelatorioVeiculoController::class, 'marcasOrdenadasPorVeiculos']);
Route::get('/relatorioVeiculo/MarcasGenero', [RelatorioVeiculoController::class, 'totaisMarcasPorSexo']);

Route::get('/relatorioRevisao/Marcas', [RelatorioRevisaoController::class, 'marcasComMaiorNumeroRevisoes']);
Route::get('/relatorioRevisao/Clientes', [RelatorioRevisaoController::class, 'clienteComMaiorNumeroRevisoes']);

