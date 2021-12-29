<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\Rating;

class RatingP extends ComponentBase
{
  public $rating;
    public function componentDetails()
    {
        return [
            'name'        => 'Рейтинги',
            'description' => 'оценки агрегаторов отзывов'
        ];
    }

    public function defineProperties()
    {
        return [
            'maxItems' => [
                'title'             => 'Слайдов на экран',
                'description'       => 'Сколько слайдов в полноэкранном режиме',
                'default'           => 4,
                'type'              => 'string',
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'Число слайдов должно быть цифрой'
            ]
        ];
    }
  public function onRun()
  {
    $this->rating = Rating::all();
  }
}
