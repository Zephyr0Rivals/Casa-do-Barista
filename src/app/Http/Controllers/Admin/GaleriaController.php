<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Galeria;


// dashboard related |^
class GaleriaController extends Controller{
    
    public function index (){
       
        $listaGaleria = Galeria::OrderByDesc('id_galeria')->get();

        return view('admin.Galeria.index', compact('listaGaleria'));
    
    }
} 