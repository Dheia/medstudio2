<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\Faq;
use Konvertagency\Doctors\Models\FaqRow;
class FaqP extends ComponentBase
{
  public $faqs;
  public $rows;

  public function componentDetails()
  {
    return [
        'name'        => 'Вопросы',
        'description' => ''
    ];
}
public function defineProperties()
{
    return [
        'faq_slug' => [
            'title' => 'Идентификатор вопросов',
            'description' => 'Идентификатор вопросов в базе данных',
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

 $this->faqs = Faq::all()->toArray();
 $this->rows = FaqRow::all()->toArray();

}
    public function onRender()// не используется, т.к. айдишник задается в свойствах сниппета (и через снипет в страницу  не передается - остается в снипете)
    {
        $this->page['faq_slug'] = $this->property('faq_slug');
    }

}
