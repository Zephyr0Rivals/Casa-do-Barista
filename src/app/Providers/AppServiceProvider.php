<?php

namespace App\Providers;

use App\Models\Banner;
use App\Models\Categoria;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

        //Carregar um submenu de categoria
        View::composer('partials.topo', function ($view){

            $categoriaMenu = Categoria::query()
            ->where('status_categoria', 'ATIVO')
            ->orderBy('nome_categoria')
            ->get();
            
            //dd($categoriaMenu);

            $view->with('categoriaMenu', $categoriaMenu);


        });

        //CARREGAR BANNER EM TODO O LOCAL
        View::composer('site.home.banner', function ($view) {
             $listaBanner =  Banner::where('status_banner', 'ATIVO')
             ->inRandomOrder()
             ->get();

             $view->with('listaBanner', $listaBanner);
            
        });

    }
}
