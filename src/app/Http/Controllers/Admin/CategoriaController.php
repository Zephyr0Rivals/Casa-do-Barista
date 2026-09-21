<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categoria;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

// dashboard related |^
class CategoriaController extends Controller{
    
    public function index (){
       
        $listaCategoria = Categoria::OrderByDesc('id_categoria')->get();
        

        return view('admin.Produtos.Categoria.index', compact('listaCategoria'));
    
    }

    // CADASTRAR CADASTRO

    public function store(Request $request){


        // 1- Validar os Dados
        $dados = $request->validate([
            'nome_categoria' => 'required|max:50',
            'status_categoria' => 'required|in:ATIVO,INATIVO'
        ]);


        try{

            DB::beginTransaction();

            // 2 - Cadastrar no Banco de Dados
                $categoria = Categoria::create([
                    'nome_categoria' => $dados['nome_categoria'],
                    'status_categoria' => $dados['status_categoria']

                ]); 


             DB::commit();

                // 3 - Montar e enviar uma mensagem
                return redirect()
                ->route('admin.produtos.categoria.index')
                ->with('sucesso','Categoria: ' . $categoria->nome_categoria . ' foi cadastrada com sucesso!');

        } catch (\Throwable $error) {

             DB::rollback();

            report($error);

            return redirect()
                ->back()
                ->withInput()
                ->with('erro', 'Não foi possível cadastrar a categoria. Tente mais tarde!');
            
        }       
   
    }

     // ATUALIZAR BANNER: U
    public function update(Request $request, int $id){
        
        $categoria = Categoria::findOrFail($id);

        // 1- Validar os Dados
        $dados = $request->validate([
            'nome_categoria' => 'required|max:50',
            'status_categoria' => 'required|in:ATIVO,INATIVO'
        ]);

         try{
              
            // 3 - ATUALIZA NO BANCO
            $categoria->update([
                'nome_categoria' => $dados['nome_categoria'],
                'status_categoria' => $dados['status_categoria']

            ]);

              4  // Voltar para a Listagem
                return redirect()
                ->route('admin.produtos.categoria.index')
                ->with('sucesso','Cateogoria: ' . $cateogoria->nome_cateogria . ' foi atualizado com sucesso!');

        } catch (\Throwable $error) {
         
            report($error);

            return redirect()
                ->back()
                ->with('erro', 'Não foi possível atualizar o banner. Tente mais tarde!');
            
        }  


    } // FIM DO METODO UPDATE 



} 