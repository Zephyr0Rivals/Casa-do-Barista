<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Depoimento;


// dashboard related |^
class DepoimentoController extends Controller{
    
    public function index (){
       
        $listaDepoimento = Depoimento::OrderByDesc('id_depoimento')->get();
        $imagensDepoimentos = Depoimento::with('DepoimentoCliente')->get();

        return view('admin.Depoimento.index', compact('listaDepoimento', 'imagensDepoimentos'));
    
    }
} 