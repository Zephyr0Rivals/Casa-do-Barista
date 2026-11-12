<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use App\Models\Produto;

class ProdutoController extends Controller {
    
    public function index(): JsonResponse {

        // 1- Consultar os produtos no Banco
        $produto = Produto::where('status_produto', 'ATIVO')
        ->orderBy('nome_produto', 'asc')
        ->get();

        return response()->json([
            'success' => true,
            'message' => 'produtos consultados com sucesso',
            'total' => $produto->count(),
            'data' => $produto
        ], 200);

    }

}