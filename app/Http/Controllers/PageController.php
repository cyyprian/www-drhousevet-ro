<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\View;
use App\Models\Page;

use F1;

class PageController extends Controller
{
  protected $data = ['page' => null];

  public function index(Request $request, $slug = 'home')
  {
    $this->data['page'] = Page::where([
      'slug' => $slug,
      'status' => '1'
    ])->firstOrFail();

    F1::setSeoValues(
      $this->data['page']->title,
      $this->data['page']->excerpt,
      \Voyager::image($this->data['page']->thumbnail('medium'))
    );

    $view = 'pages.' . str_replace('-', "_", $slug);

    if(!View::exists($view)) {
      $view = "pages.page";
    }

    return view($view, $this->data);
  }
}
