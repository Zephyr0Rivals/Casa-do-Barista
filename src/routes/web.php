<?php



use App\Http\Controllers\Site\CardapioController;
use App\Http\Controllers\Site\ContatoController;
use App\Http\Controllers\Site\EventosController;
use App\Http\Controllers\Site\HomeController;
use App\Http\Controllers\Site\SobreController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Admin\CategoriaController;
use App\Http\Controllers\Admin\ClienteController;
use App\Http\Controllers\Admin\DepoimentoController;
use App\Http\Controllers\Admin\GaleriaController;
use App\Http\Controllers\Admin\LinhaTempoController;
use App\Http\Controllers\Admin\NewsletterController;
// use App\Http\Controllers\Admin\VendaController;

use App\Http\Controllers\Auth\LoginController;

// ROTAS WEB
Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/sobre', [SobreController::class, 'sobre'])->name('sobre');
Route::get('/eventos', [EventosController::class, 'eventos'])->name('eventos');
Route::get('/contato', [ContatoController::class, 'contato'])->name('contato');
Route::get('/cardapio', [CardapioController::class, 'cardapio'])->name('cardapio');
Route::get('/cardapio/categoria/{idCategoria}', [CardapioController::class, 'cardapio'])->name('cardapio.categoria');




/*
|--------------------------------------------------------------------------
| LOGIN
|--------------------------------------------------------------------------
|
| O middleware guest permite acessar estas rotas somente quando o usuário NÃO está autenticado.
|
*/

Route::middleware('guest')->group(function () {

    // Exibir tela de login
    Route::get('/login', [LoginController::class, 'index'])
        ->name('login');

    // Processar login
    Route::post('/login', [LoginController::class, 'login'])
        ->name('login.auth');

});


/*
|--------------------------------------------------------------------------
| ÁREA RESTRITA
|--------------------------------------------------------------------------
|
| Todas as rotas deste grupo exigem autenticação.
|
*/

Route::middleware('auth')->group(function () {


    /*
    |--------------------------------------------------------------------------
    | DASHBOARD
    |--------------------------------------------------------------------------
    */

    Route::get('/dashboard', [AdminController::class, 'dashboard'])
        ->name('dashboard');


    /*
    |--------------------------------------------------------------------------
    | LOGOUT
    |--------------------------------------------------------------------------
    */

    Route::post('/logout', [LoginController::class, 'logout'])
        ->name('logout');


    /*
    |--------------------------------------------------------------------------
    | ROTAS ADMINISTRATIVAS
    |--------------------------------------------------------------------------
    */


    //ROTAS ADMINISTRATIVAS
    Route::prefix('admin')->group(function (){


        /*
        |--------------------------------------------------------------------------
        | CRUD BANNER
        |--------------------------------------------------------------------------
        */  
            //Lista Banner
            Route::get('/banner', [BannerController::class, 'index'])->name('admin.banner.index'); 
           
            // Cadastrar Banner
            Route::post('/banner', [BannerController::class, 'store'])->name('admin.banner.store');

            //Abrir o form de Editar banner, só se abrisse em outra página
            //Route::get('/banner/{id}/editar', [BannerController::class, 'edit'])->name('admin.banner.edit');

            //Atualizar Banner
            Route::put('/banner/{id}', [BannerController::class, 'update'])->name('admin.banner.update'); 
            
            // Ativar / desativar banner
            Route::patch('/banner/{id}', [BannerController::class, 'status'])->name('admin.banner.status');
        
            



        /*
        |--------------------------------------------------------------------------
        | CRUD GALERIA
        |--------------------------------------------------------------------------
        */
            //Lista Galeria
            Route::get('/galeria', [GaleriaController::class, 'index'])->name('admin.galeria.index');

            // Cadastrar Galeria
            Route::post('/galeria', [GaleriaController::class, 'store'])->name('admin.galeria.store'); 
            
            //Atualizar Banner 
            Route::put('/galeria/{id}', [GaleriaController::class, 'update'])->name('admin.galeria.update'); 
            
            //Ativar o Desativar Banner
            Route::patch('/galeria/{id}/status', [GaleriaController::class, 'status'])->name('admin.galeria.status');

         /*
        |--------------------------------------------------------------------------
        | CRUD PRODUTO
        |--------------------------------------------------------------------------
        */


         /*
        |--------------------------------------------------------------------------
        | CRUD CATEGORIA
        |--------------------------------------------------------------------------
        */
            // Listar Categoria
            Route::get('/produtos/categoria', [CategoriaController::class, 'index'])->name('admin.produtos.categoria.index'); 

            //Cadastra o Banner
            Route::post('/produtos/categoria', [CategoriaController::class, 'store'])->name('admin.produtos.categoria.store');
            
             //Atualiza o Banner
            Route::put('/produtos/categoria/{id}', [CategoriaController::class, 'update'])->name('admin.produtos.categoria.update');

            //Ativar e Desativar Banner
            Route::patch('/produtos/categoria/{id}', [CategoriaController::class, 'status'])->name('admin.produtos.categoria.status'); 
    


    
    // CRUD DEPOIMENTO

    // CRUD LINHA DO TEMPO

    // CRUD NEWSLETTER

    // CRUD CLIENTE
        
        Route::get('/depoimento', [DepoimentoController::class, 'index'])->name('admin.depoimento.index');
        Route::get('/linhatempo', [LinhaTempoController::class, 'index'])->name('admin.linhadotempo.index');
        Route::get('/newsletter', [NewsletterController::class, 'index'])->name('admin.newsletter.index');
        Route::get('/vendas/cliente', [ClienteController::class, 'index'])->name('admin.vendas.cliente.index');


   
    });

});