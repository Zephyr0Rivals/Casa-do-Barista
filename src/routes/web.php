<?php



use App\Http\Controllers\Site\CardapioController;
use App\Http\Controllers\Site\ContatoController;
use App\Http\Controllers\Site\EventosController;
use App\Http\Controllers\Site\HomeController;
use App\Http\Controllers\Site\SobreController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Admin\ClienteController;
use App\Http\Controllers\Admin\DepoimentoController;
use App\Http\Controllers\Admin\GaleriaController;
use App\Http\Controllers\Admin\LinhaTempoController;
use App\Http\Controllers\Admin\NewsletterController;

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/sobre', [SobreController::class, 'sobre'])->name('sobre');
Route::get('/eventos', [EventosController::class, 'eventos'])->name('eventos');
Route::get('/contato', [ContatoController::class, 'contato'])->name('contato');
Route::get('/cardapio', [CardapioController::class, 'cardapio'])->name('cardapio');
Route::get('/cardapio/categoria/{idCategoria}', [CardapioController::class, 'cardapio'])->name('cardapio.categoria');



//ESTRUTURA DA AREA DO DASHBOARD
Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
Route::get('/admin/banner', [BannerController::class, 'index'])->name('admin.banner.index');
Route::get('/admin/galeria', [GaleriaController::class, 'index'])->name('admin.galeria.index');
Route::get('/admin/depoimento', [DepoimentoController::class, 'index'])->name('admin.depoimento.index');
Route::get('/admin/linhatempo', [LinhaTempoController::class, 'index'])->name('admin.linhadotempo.index');
Route::get('/admin/newsletter', [NewsletterController::class, 'index'])->name('admin.newsletter.index');
Route::get('/admin/vendas/cliente', [ClienteController::class, 'index'])->name('admin.vendas.cliente.index');