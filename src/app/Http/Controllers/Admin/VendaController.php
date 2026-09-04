<?php

// namespace App\Http\Controllers\Admin;

// use App\Http\Controllers\Controller;
// use App\Models\Venda;


// // dashboard related |^
// class VendaController extends Controller{
    
//     public function index (){
       
//         $listaVenda = Venda::OrderByDesc('id_venda')->get();
//         $listaVendaCliente = Venda::with('VendaCliente')->get();

//         return view('admin.Vendas.Venda.index', compact('listaVenda', 'listaVendaCliente'));
    
//     }
// } 