<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\Galleries;
use Konvertagency\Doctors\Models\Slides;
use Konvertagency\Doctors\Models\SlidesGalleries;
use Konvertagency\Doctors\Models\Brand;
use Konvertagency\Doctors\Models\Country;
use Lang;

class GalleriesP extends ComponentBase
{
  public $galleries;
  public $slides;
  public $slides_img;
  public $summ;
  public $slides_galleries;
  public $brand;
  public $country;


  public function componentDetails()
  {
    return [
      'name' => 'Галерея слайдер',
      'description' => 'Галерея или плитка тэгов'
    ];
  }

  public function defineProperties()
  {
    return [
      'slug_gal' => [
        'title' => 'Идентификатор',
        'description' => 'Идентификатор галереи в базе данных',
        'type' => 'string',
        'validation' => [
          'required' => [
            'message' => 'Не указан идентификатор'
          ]
        ]

      ]
    ];
  }

  public function onRun()
  {

//    $user = Galleries::find(2);
//
//    foreach ($user->slides as $role) {
//      //
//      PR($role['slide_title']) ;
//      echo "<br>";
//      echo "<br>";
//
//    }

   $this->galleries = Galleries::get()->toArray();


   $a  = Slides::orderBy('position', 'ASC')->get()->toArray();

   $b  = Slides::orderBy('position', 'ASC')->get()->pluck('img_slide')->toArray();

   $с  = Slides::orderBy('position', 'ASC')->get()->pluck('img_slide');

   $this->slides_img = $с;
   $this->summ = push_your_arrays($a,$b);
 // $this->summ = merge_your_arrays($a,$b);
 // $this->slides = $a;



 //$this->slides = Slides::orderBy('position', 'ASC')->get();
   $this->slides_galleries = SlidesGalleries::get()->toArray();
  //  $this->brand = Brand::all();
   $this->brand = Brand::orderBy('name_brand', 'ASC')->get();
   $this->country = Country::get();


 }






  public function onRender()// slug_gal не используется, т.к. айдишник задается в свойствах сниппета (и через снипет в страницу  не передается - остается в снипете)
  {

   // $this->slides = Slides::orderBy('position', 'ASC')->get();


    $this->page['slug_gal'] = $this->property('slug_gal');

    $this->page['properties_1'] = Lang::get('konvertagency.doctors::lang.slide.properties_1');
    $this->page['properties_2'] = Lang::get('konvertagency.doctors::lang.slide.properties_2');
    $this->page['properties_3'] = Lang::get('konvertagency.doctors::lang.slide.properties_3');
    $this->page['properties_4'] = Lang::get('konvertagency.doctors::lang.slide.properties_4');

  }
}


function merge_your_arrays ($slides, $slides_img) {
// не используется
  foreach ($slides as $k => $v) {
    if (isset($slides_img[$k])) {
      $slides[$k] = array_merge($slides[$k],$slides_img[$k]);
    }
  }
  return $slides;
}

function push_your_arrays ($slides, $slides_img) {
  foreach ($slides as $k => $v) {
    if (isset($slides_img[$k])) {
      // array_push($slides[$k], $slides_img[$k] );
     $slides[$k]["img_slide"]=$slides_img[$k];
   }
 }
 return $slides;
}



/*
function PR($array)
{
  $bt =  debug_backtrace();
  $bt = $bt[0];
  $dRoot = $_SERVER["DOCUMENT_ROOT"];
  $dRoot = str_replace("/","\\",$dRoot);
  $bt["file"] = str_replace($dRoot,"",$bt["file"]);
  $dRoot = str_replace("\\","/",$dRoot);
  $bt["file"] = str_replace($dRoot,"",$bt["file"]);
  ?>
  <div style='font-size:9pt; color:#000; background:#fff; border:1px dashed #000;'>
    <div style='padding:3px 5px; background:#99CCFF; font-weight:bold;'>File: <?=$bt["file"]?> [<?=$bt["line"]?>]</div>
    <pre style='padding:10px;'><?print_r($array)?></pre>
  </div>
  <?

}
*/