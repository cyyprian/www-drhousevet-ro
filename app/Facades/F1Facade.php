<?php
  
namespace App\Facades;
  
use Illuminate\Support\Facades\Facade;
  
class F1Facade extends Facade {
  protected static function getFacadeAccessor() {
    return 'F1';
  }
}