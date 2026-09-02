<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LinhaTempo;


// dashboard related |^
class LinhaTempoController extends Controller{
    
    public function index (){
       
        $listaLinhaTempo = LinhaTempo::OrderByDesc('id_linha_tempo')->get();
        

        return view('admin.LinhaTempo.index', compact('listaLinhaTempo'));
    
    }
} 