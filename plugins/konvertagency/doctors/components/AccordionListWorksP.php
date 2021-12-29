<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Lang;
use Konvertagency\Doctors\Models\AccordionListWorks;

/**
 * AccordionListWorksP Component
 */
class AccordionListWorksP extends ComponentBase
{
  public $accordion;
  public function componentDetails()
  {
    $titleComponent = Lang::get('konvertagency.doctors::lang.menu.accordion');
    return [
        'name' => $titleComponent,
        'description' => '',
    ];
  }

    public function defineProperties()
    {
      $id_accordion_site = Lang::get('konvertagency.doctors::lang.accordion.placeholder_title');
      $comp_message = Lang::get('konvertagency.doctors::lang.othe.comp_message');
      return [
          'accordionid' => [
              'title' => $id_accordion_site,
              'description' => '',
              'type' => 'dropdown',
//                'validationPattern' => "^((?!none).)*$",
              'validationPattern' => "^((?!" . 'none' . ").)*$",
              'validationMessage' => $comp_message . " " . $id_accordion_site
          ]
      ];
    }

  public function getAccordionidOptions()
  {

//    $list_slug = Marquiz::get()->lists('slug');
    $list_id = AccordionListWorks::get();
    $list_id_component['none'] = Lang::get('konvertagency.doctors::lang.othe.comp_list_slug');
    foreach ($list_id as &$value) {
//      $list_slug_component += ["$value" => $value];
      $list_id_component += ["$value[id]" => $value['title']];
    }
    return $list_id_component;
//        return ['us'=>'United states', 'ca'=>'Canada'];
  }

  public function onRender(){
    $this->accordion = AccordionListWorks::get()->where('id', $this->property('accordionid'))->toArray();
    $this->page['comp_message'] =   Lang::get('konvertagency.doctors::lang.othe.comp_message') . " " . Lang::get('konvertagency.doctors::lang.accordion.placeholder_title') ;
  }

}

//placeholder_title