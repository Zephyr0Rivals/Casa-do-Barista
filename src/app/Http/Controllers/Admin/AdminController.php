<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Cliente;
use App\Models\Produto;

use App\Models\Venda;

// dashboard related |^
class AdminController extends Controller{
    
    public function dashboard (){

        //variable belowR Quantidade total de Clientes ATIVOS
        $qtdeClientes = Cliente::where('status_cliente', 'ATIVO')->count();
        // Quantidade total de produtos ATIVOS
        $qtdeProdutos = Produto::where('status_produto', 'ATIVO')->count();
        // Quantidade total de Produtos EM DESTAQUE
        $qtdeProdutosDestaque = Produto::where('destaque_produto', 1)->count();
        //Valor total de Vendas  
        $valorTotalVenda = Venda::where('status_venda', 'FINALIZADA')->sum('valor_total_venda');
       
       
        return view('admin.dashboard', compact('qtdeClientes', 'qtdeProdutos', 'qtdeProdutosDestaque', 'valorTotalVenda'));
    
    }
} 