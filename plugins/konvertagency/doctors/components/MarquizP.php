<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Lang;
use Konvertagency\Doctors\Models\Marquiz;

/**
 * MarquizP Component
 */
class MarquizP extends ComponentBase
{
//    public $titleComponent;
//    public $id_marquiz_site;
//    public $list_slug;
  public $marquiz_arr;
  public $marquiz_col;


  public function componentDetails()
  {
    $titleComponent = Lang::get('konvertagency.doctors::lang.menu.marquiz');
    return [
        'name' => $titleComponent,
        'description' => '',
    ];
  }


  public function defineProperties()
  {
    $id_marquiz_site = Lang::get('konvertagency.doctors::lang.marquiz.slug');
    $comp_message = Lang::get('konvertagency.doctors::lang.othe.comp_message');


    return [
        'marquiz_slug' => [
            'title' => $id_marquiz_site,
            'description' => $id_marquiz_site,
            'type' => 'dropdown',
//                'validationPattern' => "^((?!none).)*$",
            'validationPattern' => "^((?!" . 'none' . ").)*$",
            'validationMessage' => $comp_message . " " . $id_marquiz_site
        ]
    ];
  }


  public function getMarquiz_slugOptions()
  {


//    $list_slug = Marquiz::get()->lists('slug');
    $list_slug = Marquiz::get();
    $list_slug_component['none'] = Lang::get('konvertagency.doctors::lang.othe.comp_list_slug');
    foreach ($list_slug as &$value) {
//      $list_slug_component += ["$value" => $value];
      $list_slug_component += ["$value[slug]" => $value['title']];
    }
    return $list_slug_component;
//        return ['us'=>'United states', 'ca'=>'Canada'];
  }


  public function onRun()
  {

  }


  public function onRender()
  {
    $this->marquiz_arr = Marquiz::get()->where('slug', $this->property('marquiz_slug'))->toArray();
    $this->marquiz_col = Marquiz::get()->where('slug', $this->property('marquiz_slug'));

    $this->page['marquiz_slug'] = $this->property('marquiz_slug');

    $this->page['comp_message'] =   Lang::get('konvertagency.doctors::lang.othe.comp_message') . " " . Lang::get('konvertagency.doctors::lang.marquiz.slug') ;

  }
}
