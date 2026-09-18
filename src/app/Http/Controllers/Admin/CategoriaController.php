<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categoria;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

// dashboard related |^
class CategoriaController extends Controller{
    
    public function index (){
       
        $listaCategoria = Categoria::OrderByDesc('id_categoria')->get();
        

        return view('admin.Produtos.Categoria.index', compact('listaCategoria'));
    
    }

    // CADASTRAR CADASTRO

    public function store(Request $request){
        
        
        
        // 1 - Validar os Dados
        $dados = $request->validate([
            'nome_categoria' => 'required|max:50',
            'status_categoria' => 'required|in:ATIVO,INATIVO'

        ]);


        try{
            DB::beginTransaction();

            //2 - Cadastrar no Banco de Dados
                $categoria = Categoria::created([
                    'nome_categoria' => $dados['nome_categoria'],
                    'status_categoria' => $dados['status_categoria'],
                ]);
            
            
            // 4 - Criar um nome para a imagem
                // Café Mineiro mudar para: cafe_mineiro_7.png
                $tituloImg = Str::slug($dados['titulo_banner']);
               
                
            // 5 - Pegar e extensão do arquivo
                $extensao = strtolower($imagem->getClientOriginalExtension());
                 
            // 6 -Criar nome Final
                $nomeImg = $tituloImg . '_' . $banner->id_banner . '.' . $extensao; 
            

            //3 - Montar e enviar uma mensagem
            return redirect()
            ->route('admin.produtos.categoria.index')
            ->with('successo', 'Categoria: ' . $categoria->nome_categoria . ' foi cadastrada com sucesso!');


        }catch (\Throwable $error) {





        }

    }



} 