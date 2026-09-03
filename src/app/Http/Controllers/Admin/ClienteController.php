<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Cliente;


// dashboard related |^
class ClienteController extends Controller{
    
    public function index (){
       
        $listaCliente = Cliente::OrderByDesc('id_cliente')->get();

        return view('admin.Vendas.Cliente.index', compact('listaCliente'));
    
    }
} 