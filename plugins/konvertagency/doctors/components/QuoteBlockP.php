<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Lang;
use Konvertagency\Doctors\Models\QuoteBlock;

/**
 * QuoteBlockP Component
 */
class QuoteBlockP extends ComponentBase
{
  public $quote;
  public function componentDetails()
  {
    $titleComponent = Lang::get('konvertagency.doctors::lang.menu.quote_block');
    return [
        'name' =>  $titleComponent,
        'description' => ''
    ];
  }

  public function defineProperties()
  {
    $id_etaps_site = Lang::get('konvertagency.doctors::lang.quote_block.id');
    $comp_message = Lang::get('konvertagency.doctors::lang.othe.comp_message');

    return [
        'quote_id' => [
            'title' => $id_etaps_site,
            'description' => $id_etaps_site,
            'type' => 'dropdown',
//                'validationPattern' => "^((?!none).)*$",
            'validationPattern' => "^((?!" . 'none' . ").)*$",
            'validationMessage' => $comp_message . " " . $id_etaps_site
        ]
    ];
  }
  public function getQuote_idOptions(){
    $list_id = QuoteBlock::get()-> toArray();
    $list_id_component['none'] = Lang::get('konvertagency.doctors::lang.othe.comp_list_slug');

    foreach ($list_id as &$value) {

      $list_id_component += ["$value[id]" => $value['id'].' - '.$value['description']];
      //        return ['us'=>'United states', 'ca'=>'Canada'];

    }
    return $list_id_component;

  }



  public function onRender(){
//    $this->accordion = QuoteBlock::get()->where('id', $this->property('accordionid'))->toArray();

    $this->quote =  QuoteBlock::get()->where('id', $this->property('quote_id'))->toArray();
    $this->page['comp_message'] =   Lang::get('konvertagency.doctors::lang.othe.comp_message') . " " . Lang::get('konvertagency.doctors::lang.quote_block.id') ;
    $this->page['class']= mb_strtolower(str_replace("\\", "-", get_class($this)));

  }

}
