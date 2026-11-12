<?php

use Illuminate\Support\Facades\Routes;

use App\Http\Controllers\Api\V1\StatusController;
use App\Http\Controllers\Api\V1\ProdutoController;


Route::prefix('v1')->group(function (){

    // STATUS DA API
    Route::get('/status', [StatusController::class, 'index']);
    
    Route::get('/produto', [ProdutoController::class, 'index']);
});


