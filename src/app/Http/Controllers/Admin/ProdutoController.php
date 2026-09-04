<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Produto;


// dashboard related |^
class ProdutoController extends Controller{
    
    public function index (){
       
        $listaProduto = Produto::OrderByDesc('id_produto')->get();
        

        return view('admin.Produtos.Produto.index', compact('listaProduto'));
    
    }
} 