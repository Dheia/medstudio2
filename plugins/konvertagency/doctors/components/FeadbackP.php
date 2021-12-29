<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\Feadback;
use Konvertagency\Doctors\Models\Rating;

class FeadbackP extends ComponentBase
{

  public $feadback;
  public $rating;
    public function componentDetails()
    {
        return [
            'name'        => 'Отзывы',
            'description' => ''
        ];
    }

    public function defineProperties()
    {
        return [];
    }

  public function onRun()
  {

    $this->feadback = Feadback::all();
    $this->rating = Rating::all();

  }

}
