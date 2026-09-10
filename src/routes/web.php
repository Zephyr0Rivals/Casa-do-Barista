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

// ROTAS WEB
Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/sobre', [SobreController::class, 'sobre'])->name('sobre');
Route::get('/eventos', [EventosController::class, 'eventos'])->name('eventos');
Route::get('/contato', [ContatoController::class, 'contato'])->name('contato');
Route::get('/cardapio', [CardapioController::class, 'cardapio'])->name('cardapio');
Route::get('/cardapio/categoria/{idCategoria}', [CardapioController::class, 'cardapio'])->name('cardapio.categoria');



//ROTAS ADMINISTRATIVAS
Route::prefix('admin')->group(function (){

    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

    // CRUD BANNER
    Route::get('/banner', [BannerController::class, 'index'])->name('admin.banner.index'); //Lista Banner
    Route::post('/banner', [BannerController::class, 'store'])->name('admin.banner.store');// Cadastrar Banner
    Route::get('/banner/{id}/editar', [BannerController::class, 'edit'])->name('admin.banner.edit');//Abrir o form de Editar banner
    //Quer que você mude tudo, senão dará erro
    Route::put('/banner/{id}', [BannerController::class, 'update'])->name('admin.banner.update');//Atualizar Banner 
    //Permite você mudar só um valor
    Route::patch('/banner/{id}/status', [BannerController::class, 'status'])->name('admin.banner.status');//Ativar o Desativar Banner

    // CRUD GALERIA
    Route::get('/galeria', [GaleriaController::class, 'index'])->name('admin.galeria.index'); //Lista Galeria

    // CRUD DEPOIMENTO

    // CRUD LINHA DO TEMPO

    // CRUD NEWSLETTER

    // CRUD CLIENTE

    // CRUD CATEGORIA
});



Route::get('/admin/depoimento', [DepoimentoController::class, 'index'])->name('admin.depoimento.index');
Route::get('/admin/linhatempo', [LinhaTempoController::class, 'index'])->name('admin.linhadotempo.index');
Route::get('/admin/newsletter', [NewsletterController::class, 'index'])->name('admin.newsletter.index');
Route::get('/admin/vendas/cliente', [ClienteController::class, 'index'])->name('admin.vendas.cliente.index');
// Route::get('/admin/vendas/venda', [VendaController::class, 'index'])->name('admin.vendas.venda.index');
Route::get('/admin/produtos/categoria', [CategoriaController::class, 'index'])->name('admin.produtos.categoria.index');