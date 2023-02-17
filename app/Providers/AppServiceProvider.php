<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // updateStockDates();
        // updateContactIds();
        \Illuminate\Support\Facades\Schema::defaultStringLength(191);
        view()->composer('*', function($view) {
            $old = session()->getOldInput();
            $view->with('old_form_values', $old);
        });

        
    }
    
}
