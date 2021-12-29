<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\ContentPage;

class ContentP extends ComponentBase
{
    public $contentbase;

    public function componentDetails()
    {
        return [
            'name'        => 'Текст',
            'description' => 'Текст с изображением'
        ];
    }

    public function defineProperties()
    {
        return [
        'id_txt' => [
            'title'             => 'Id в базе',
            'description'       => 'Идентификатор текстиового блока  базе данных',
            'default'           => 1,
            'type'              => 'string',
            'validationPattern' => '^[0-9]+$',
            'validationMessage' => 'Число должно быть цифрой'
        ]
        ];
    }

      public function onRun(){
        $this->contentbase = ContentPage::all();
      }
}

