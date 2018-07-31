<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

//        Route::group(['namespace' => $this->namespace],function(){
//            require base_path('routes/admin_routes.php');
//            require base_path('routes/dashboard_routes.php');
//            require base_path('routes/dev_routes.php');
//            require base_path('routes/homepage_routes.php');
//            require base_path('routes/pages_routes.php');
//        });

        Route::group(['namespace' => $this->namespace,'middleware' => ['web']],function(){
            require base_path('routes/admin_routes.php');
            require base_path('routes/homepage_routes.php');
            require base_path('routes/dashboard_routes.php');
            require base_path('routes/pages_routes.php');
        });

    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware('web')
             ->namespace($this->namespace)
             ->group(base_path('routes/homepage_routes.php'));
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
             ->middleware('api')
             ->namespace($this->namespace)
             ->group(base_path('routes/api.php'));
    }
}
