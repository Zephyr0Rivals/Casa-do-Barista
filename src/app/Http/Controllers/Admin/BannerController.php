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

    // CADASTRAR BANNER: C
    public function store(Request $request){


        // 1- Validar os Dados
        $dados = $request->validate([
            'titulo_banner' => 'required|max:50',
            'img_banner' => 'required|image|mimes:jpg,png,webp,jpeg|max:4096',
            'status_banner' => 'required|in:ATIVO,INATIVO'
        ]);

       
        $caminhoArquivo = null;

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
                if(!is_dir($pasta)) {    
                    mkdir($pasta, 0775, true);
                }

                // 9 - Mover e salvar a img na pasta
                $imagem->move(
                    $pasta,
                    $nomeImg

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

            if ($caminhoArquivo && file_exists($caminhoArquivo)) {
                unlink($caminhoArquivo);
            }

            report($error);

            return redirect()
                ->back()
                ->withInput()
                ->with('erro', 'Não foi possível cadastrar o banner. Tente mais tarde!');
            
        }       
   
    }

    // ATUALIZAR BANNER: U
    public function update(Request $request, int $id){
        
        
        // 1- Validar os Dados
        $dados = $request->validate([
            'titulo_banner' => 'required|max:50',
            'img_banner' => 'nullable|image|mimes:jpg,png,webp,jpeg|max:4096',
            'status_banner' => 'required|in:ATIVO,INATIVO'
        ]);
   
        // 2 - BUSCAR O BANNER (o id)
        $banner = Banner::findOrFail($id);

         try{
                // Descobrindo o titulo atual
                $tituloSlug = Str::slug($dados['titulo_banner']);
                
                // Guardo nome da pasta
                $pasta = public_path('barista/assets/banner');

                // Guardo caminho salvo no banco
                $caminhoArquivo = $banner->imagem_banner; 

                // Guardo Caminho físico da imagem atual
                $imgAntiga = public_path('barista/assets' . $banner->imagem_banner);

                // CASO 1: NOVA IMAGEM
                if($request->hasFile('imagem_banner'))  {

                    $imagem = $request->file('imagem_banner');

                    // Guarda a extensão da imagem
                    $extensao = strtolower($imagem->getClientOriginalExtension());

                    // Reconstroi o nome com o novo titulo 
                    $nomeImg = $tituloSlug . '_' . $banner->id_banner . '.' . $extensao; 

                    // Excluir a imagem anterior

                    if(file_exists($imgAntiga)){
                        unlink($imgAntiga);
                    }

                    // Salve a nova imagem
                    $imagem->move($pasta, $nomeImg);

                    $caminhoArquivo = 'banner/' . $nomeImg;

                } elseif ($banner->titulo_banner !== $request->titulo_banner){
                    //CASO 2 - MUDOU SOMENTE O NOME

                     $extensao = pathinfo($banner->imagem_banner, PATHINFO_EXTENSION);  
                     
                     $nomeImg= $tituloSlug . '_' . $banner->id_banner . '.' . $extensao;

                     $novaImagem = public_path('barista/assets/banner/' . $nomeImg);

                     if(file_exists($imgAntiga)){

                        rename(
                            $imgAntiga,
                            $novaImagem
                        );

                        $caminhoArquivo = 'banner/' . $nomeImg;

                     }

                }

                //ATUALIZA NO BANCO
                $banner->update([
                    'titulo_banner' => $dados['titulo_banner'],
                    'imagem_banner' => $caminhoArquivo,
                    'status_banner' => $dados['status_banner'],

                ]);

                // Voltar para a Listagem
                return redirect()
                ->route('admin.banner.index')
                ->with('sucesso','Banner: ' . $banner->titulo_banner . 'foi atualizado com sucesso!');

        } catch (\Throwable $error) {
         
            report($error);

            return redirect()
                ->back()
                ->with('erro', 'Não foi possível atualizar o banner. Tente mais tarde!');
            
        }  


    } // FIM DO METODO UPDATE 


    // ATIVAR E DESATIVAR O BANNER: D (U)

    public function status(Request $request, int $id){


        try {
            
            $banner = Banner::findOrFail($id);

            // If ternário (? = verdadeiro; ! = Falso.)
            $novoStatus = $banner->status_banner === 'ATIVO' ? 'INATIVO' : 'ATIVO';

            // ATUALIZAR NO BANCO
            $banner->update([
                'status_banner' => $novoStatus,
            ]);

            $mensagem = $novoStatus === 'ATIVO' ? 'Banner ativado com sucesso' : 'Banner desativado com sucesso';

             // Voltar para a Listagem
                return redirect()
                ->route('admin.banner.index')
                ->with('sucesso', $mensagem);


        } catch (\Throwable $error){

         report($error);

            return redirect()
                ->back()
                ->with('erro', 'Não foi possível alterar o status do banner. Tente mais tarde!');
        }

    } // FINAL DE ATIVA E DESATIVAR

} 