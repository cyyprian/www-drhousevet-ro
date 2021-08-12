<?php

namespace App;

use Voyager;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class F1 {

  protected $models = [
    'page' => \App\Models\Page::class,
    'article' => \App\Models\Article::class,
    'service' => \App\Models\Service::class,
    'faq' => \App\Models\Faq::class,
    'openinghour' => \App\Models\OpeningHour::class,
    'branches' => \App\Models\Branch::class,
    'socials' => \App\Models\SocialMedia::class,
    'slide' => \App\Models\Slide::class,
  ];

  protected $translate = [
    'service' => ['servicii'],
    'post' => ['articole'],
  ];

  public function getModelBySlugSubstring($string) {
    foreach($this->translate as $key => $values) {
      if(in_array($string, $values)) {
        return $key;
      }
    }

    return null;
  }

  public function getDataOfModel($name) {
    if(!isset($this->models[$name])) abort(404, 'Model does not exist.');

    return $this->models[$name]::all();
  }

  public function getRowDataOfModel($name, $slug) {
    if(!isset($this->models[$name])) abort(404, 'Model does not exist.');

    return $this->models[$name]::where('slug', $slug)->first();
  }

  public function setSeoValues($title, $description, $image = null) {
    if(!$image) {
      $image = \Voyager::image(setting('site.representative_photo'));
    }

    if($title) {
      SEOMeta::setTitle($title);
      OpenGraph::setTitle($title);
      TwitterCard::setTitle($title);
      JsonLd::setTitle($title);
    }

    if($description) {
      SEOMeta::setDescription($description);
      OpenGraph::setDescription($description);
      JsonLd::setDescription($description);
    }

    if($image) {
      OpenGraph::addImage($image);
      JsonLd::addImage($image);
    }
}
}