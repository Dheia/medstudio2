<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Lang;
use Konvertagency\Doctors\Models\Etaps;
use Konvertagency\Doctors\Models\Etap;

/**
 * EtapsP Component
 */
class EtapsP extends ComponentBase
{
  public $etap;
  public $etaps;
  public function componentDetails()
  {
    $titleComponent = Lang::get('konvertagency.doctors::lang.menu.etaps');
    $descriptionComponent = Lang::get('konvertagency.doctors::lang.etaps.etaps_list');

    return [
        'name' => $titleComponent,
        'description' => $descriptionComponent
    ];
  }
    public function defineProperties()
    {
      $id_etaps_site = Lang::get('konvertagency.doctors::lang.etaps.title');
      $comp_message = Lang::get('konvertagency.doctors::lang.othe.comp_message');

      return [
          'etaps_slug' => [
              'title' => $id_etaps_site,
              'description' => $id_etaps_site,
              'type' => 'dropdown',
//                'validationPattern' => "^((?!none).)*$",
              'validationPattern' => "^((?!" . 'none' . ").)*$",
              'validationMessage' => $comp_message . " " . $id_etaps_site
          ]
      ];
    }
  public function getEtaps_slugOptions()
  {

//    $list_slug = Etaps::get()->lists('title');
    $list_slug = Etaps::get()->toArray();
    $list_slug_component['none'] = Lang::get('konvertagency.doctors::lang.othe.comp_list_slug');

    foreach ($list_slug as &$value) {
      $list_slug_component += ["$value[id]" => $value['id'].' - '. $value['title']];
    }
    return $list_slug_component;
  }

  public function onRender()
  {
//    if (Etaps::where('id', '=', $this->property('etaps_slug'))->exists()) {
//      $this->page['etaps_yes'] = true;
//    } else {
//      $this->page['etaps_yes'] = false;
//    }
//
    $this->etaps =  Etaps::get()->where('id', $this->property('etaps_slug'))->toArray();
    $this -> etap = Etap::get() -> where('block_etaps_id', $this->property('etaps_slug'));
    $this->page['comp_message'] =   Lang::get('konvertagency.doctors::lang.othe.comp_message') . " " . Lang::get('konvertagency.doctors::lang.etaps.id') ;
    $this->page['etaps_slug'] =   $this->property('etaps_slug') ;
  }

}
