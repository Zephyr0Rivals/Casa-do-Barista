<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Depoimento;
use App\Models\Galeria;

class HomeController extends Controller{


    //Metodo HOME - Carregar a INDEX (HOME)
    public function home(){


        //Busque a lista de banner para exibit na Home (Views)
        $listaBanner =  Banner::where('status_banner', 'ATIVO')->inRandomOrder()->get();

        //dd($listaBanner);
        //var dump[SListaBanner];


        //BUSCAR OS DEPOIMENTO 'APROVADOS' JUNTO COM OS 'DADOS DO CLIENTE'
        $listaDepo = Depoimento::with('DepoimentoCliente')
                                    ->where('status_depoimento', 'APROVADO')
                                    ->orderByDesc('id_depoimento')
                                    ->get();
        //dd($listaDepo->toArray());

        //Buscar a lista da galeria para exibir na HOME
        $listaGaleria = Galeria::where('status_galeira', 'ATIVO')->inRandomOrder()->get();

        return view('site.home.home', compact('listaBanner' ,'listaDepo')); 
    }



} //FIM DA CLASS