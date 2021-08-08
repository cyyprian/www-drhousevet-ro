<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Foundation\AliasLoader;

use App\Facades\F1Facade;
use App\F1;

class F1ServiceProvider extends ServiceProvider
{
  /**
   * Register services.
   *
   * @return void
   */
  public function register()
  {
    //
    AliasLoader::getInstance()->alias('F1', F1Facade::class);
    $this->app->singleton('F1', function () {
      return new F1();
    });
  }

  /**
   * Bootstrap services.
   *
   * @return void
   */
  public function boot()
  {
      $this->app->bind('F1',function(){
          return new F1();
      });
  }
}
