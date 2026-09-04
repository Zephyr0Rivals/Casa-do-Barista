<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categoria;


// dashboard related |^
class CategoriaController extends Controller{
    
    public function index (){
       
        $listaCategoria = Categoria::OrderByDesc('id_categoria')->get();
        

        return view('admin.Produtos.Categoria.index', compact('listaCategoria'));
    
    }
} 