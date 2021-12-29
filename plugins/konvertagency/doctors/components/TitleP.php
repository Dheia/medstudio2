<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\TitlePage;

class TitleP extends ComponentBase
{
  public $titlebase;


  public function componentDetails()
  {
    return [
        'name' => 'Заголовок',
        'description' => 'Заголовок и подзаголовок с фоном'
    ];
  }

  public function defineProperties()
  {
    return [
        'id_title' => [
            'title' => 'Id в базе',
            'description' => 'Идентификатор заголовка в базе данных',
            'default' => 1,
            'type' => 'string',
            'validationPattern' => '^[0-9]+$',
            'validationMessage' => 'Число должно быть цифрой'
        ]
    ];
  }

  public function onRun()
  {
    $this->titlebase = TitlePage::all();
  }

  public function onRender()// не используется, т.к. айдишник задается в свойствах сниппета (и через снипет в страницу  не передается - остается в снипете)
  {
    $this->page['id_title'] = $this->property('id_title');
  }
}
