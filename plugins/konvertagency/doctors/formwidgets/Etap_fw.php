<?php

namespace KonvertAgency\Doctors\Formwidgets;

use Backend\Classes\FormWidgetBase;
//use Config;
use Lang;
use KonvertAgency\Doctors\Models\Etap;

/*

class Etap_base extends Etap {
  public static $key = 'id';
 // public static $table = 'konvertagency_doctors_etap';
}
*/

class Etap_fw extends FormWidgetBase
{
  public function widgetDetails()
  {
    return [
        'name' => Lang::get('konvertagency.doctors::lang.etap.title'),
        'description' => Lang::get('konvertagency.doctors::lang.etap.des'),

    ];
  }

  public function render()
  {
    $this->prepareVars();
//    dump ($this -> vars['block_etaps_id']);
    //  dump ($this -> vars['id']);
    //   dump ($this -> vars['title']);
    //  dump ($this -> vars['etap']);
    //   dump ($this -> vars['q']);
    //  dump ($this -> vars['name_select']);
    // dump ($this -> vars['selectedEtap']);


    return $this->makePartial('widget_etap'); //имя шаблона виджета

  }

  public function prepareVars()
  {
    //   $this -> vars['block_etaps_id'] = $this -> model -> block_etaps_id;
    //   $this -> vars['id'] = $this -> model -> id;
    $this->vars['title'] = $this->model->title;
    $this->vars['placeholder_select'] = Lang::get('konvertagency.doctors::lang.etap.placeholder_select');

    $this->vars['etap'] = Etap::get()
        ->where('block_etaps_id', '=', $this->model->id)
        ->lists('fullname', 'id'); //  fullname из Etap.php > getFullnameAttribute()

    $this->vars['name_select'] = $this->formField->getName() . '[]';

    $this->vars['selectedEtap'] = $this->getLoadValue();
//    $this -> vars['  getFieldName'] = $this ->   getFieldName();

  }

  public function getSaveValue($etap)

  {
    $block_etaps_id = $this->model->id;
    $newArray = [];
    foreach ($etap as $etapID){

      if (!is_numeric($etapID)){
        $stringRow = explode ('|', $etapID );

        $a1 = isset($stringRow[1]) ? $stringRow[1] : '';
        $a2 = isset($stringRow[2]) ? $stringRow[2] : '';

        createNewRowEtap ($block_etaps_id, $stringRow[0], $a1, $a2);
      }else{
        $newArray[] = $etapID;
      }
     }
dd($this->model);

    return  $newArray;

  }


  public function loadAssets()
  {
    $this->addCss('css/select2.css');
    $this->addJs('css/select2.js');
  }

}



function createNewRowEtap( $block_etaps_id, $title, $sub_title, $txt){
  $newEtap = new Etap;
  $newEtap -> block_etaps_id = $block_etaps_id;

  $newEtap -> title = $title;
  if ($sub_title){
    $newEtap -> sub_title = $sub_title;
  }
  if ($txt){
    $newEtap -> txt = "<p>".$txt."</p>";
  }
  $newEtap -> save();
}



