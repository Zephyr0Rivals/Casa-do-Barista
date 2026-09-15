<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

// dashboard related |^
class BannerController extends Controller{
    
    public function index (){
       
        $listaBanner = Banner::OrderByDesc('id_banner')->get();

        return view('admin.Banner.index', compact('listaBanner'));
    
    }

    // CADASTRAR BANNER
    public function store(Request $request){


        // 1- Validar os Dados
        $dados = $request->validate([
            'titulo_banner' => 'required|max:50',
            'img_banner' => 'required|image|mimes:jpg,png,webp,jpeg|max:4096',
            'status_banner' => 'required|in:ATIVO,INATIVO',
        ]);

        try{

            DB::beginTransaction();

             // 2 - Cadastrar no Banco de Dados
                $banner = Banner::create([
                    'titulo_banner' => $dados['titulo_banner'],
                    // VALOR TEMPORÁRIO
                    'imagem_banner' => 'banner/sem-foto.png' ,
                    'status_banner' => $dados['status_banner'],

                ]);
            
                // 3- Receber a imagem enviada
                $imagem = $request->file('img_banner');

            

                // 4 - Criar um nome para a imagem
                // Café Mineiro mudar para: cafe_mineiro_7.png
                $tituloImg = Str::slug($dados['titulo_banner']);
               
                
                // 5 - Pegar e extensão do arquivo
                $extensao = strtolower($imagem->getClientOriginalExtension());
                 
                // 6 -Criar nome Final
                $nomeImg = $tituloImg . '_' . $banner->id_banner . '.' . $extensao; 

                // 7 - Salvar a imagem na pasta do projeto
                $pasta = public_path('barista/assets/banner');

                // 8 - Se a pasta não existir... crie/faça:
                if(!is_dir($pasta)){    
                    mkdir($pasta, 0775, true);
                }

                // 9 - Mover e salvar a img na pasta
                $imagem->move(
                    $pasta,
                    $nomeImg,

                );

               $caminhoArquivo = $pasta . DIRECTORY_SEPARATOR . $nomeImg;

                // 10 - Atualizar o registro
                $banner->imagem_banner = 'banner/' . $nomeImg;
                $banner->save(); 

                DB::commit();

                // 11 - Montar e enviar uma mensagem
                return redirect()
                ->route('admin.banner.index')
                ->with('sucesso','Banner: ' . $banner->titulo_banner . 'foi cadastrado com sucesso!');

        } catch (\Throwable $error) {
         
            DB::rollback();

            if($caminhoArquivo && file_exists($caminhoArquivo)){
                unlink($caminhoArquivo);
            }

            report($error);

            return redirect()
                ->back()
                ->withInput()
                ->with('erro', 'Não foi possível cadastrar o banner. Tente mais tarde!');
            
        }       
   
    }

} 