<?php

namespace App\Http\Controllers\Site;

use App\Models\Categoria;
use App\Models\Produto;
use App\Http\Controllers\Controller;

class CardapioController extends Controller
{
    
    public function cardapio(?int $idCategoria = null){

        return view('site.cardapio.cardapio');
        $listaCategoria = Categoria::where('status_categoria', 'ATIVO')->orderBy('nome_categoria')->get();

        // SE nenhuma categoria estiver na URL 
        //Go back to the default first (primeira padrão)
        if($idCategoria === null){
            $categoriaSelecionada = $listaCategoria->first();
        }else{
            $categoriaSelecionada = $listaCategoria->firstwhere('id_categoria', $idCategoria);
        }

        // Casa não tenha a categoria

        abort_if($categoriaSelecionada === null, 404, 'Categoria não
        encontrada');

        // Buscar somente os produtos relacionados a categoria (por nome)
        $listaProdutos = Produto::where('status_produto', 'ATIVO')
        ->orderBy('nome_produto')
        ->get();

        $produtos = Produto::query()
        ->where('id_categoria', $categoriaSelecionada->id_categoria)
        ->where('status_produto', 'ATIVO')
        ->orderBy('nome_produto')
        ->get();

        //dd($produtos);

        //dd($listaCategorias);

        return view('site.cardapio.cardapio', compact('listaCategorias', 'listaProdutos', 'produtos', 'categoriaSelecionada'));
    }
}