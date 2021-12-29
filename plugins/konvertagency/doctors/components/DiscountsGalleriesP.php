<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Lang;
use Konvertagency\Doctors\Models\Discounts;


/**
 * DiscountsGalleriesP Component
 */
class DiscountsGalleriesP extends ComponentBase
{
  public $discounts;
//  public $discounts_arr;
  public $discounts_notFoundMessage;

  public function componentDetails()
  {
    $titleComponent = Lang::get('konvertagency.doctors::lang.menu.discounts');
    $descriptionComponent = Lang::get('konvertagency.doctors::lang.othe.discounts_banner');
    return [
        'name' => $titleComponent,
        'description' => $descriptionComponent,
    ];
  }



  public function onRun()
  {

    //  $this->discounts = Discounts::all()->toArray();
    $this->discounts = Discounts::orderBy('sort_order', 'desc')->where([
        ['publication', '=', '1'],
        ['banner_publication', '=', '1'],
    ])->get();


//    $this->discounts_arr = Discounts::orderBy('sort_order', 'desc')->where([
//        ['publication', '=', '1'],
//        ['banner_publication', '=', '1'],
//    ])->get()->toArray();


    $this->discounts_notFoundMessage = Lang::get('konvertagency.doctors::lang.othe.discounts_notFoundMessage');

  }

}
