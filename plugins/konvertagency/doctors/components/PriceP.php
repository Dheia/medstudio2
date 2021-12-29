<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\Table;
use Konvertagency\Doctors\Models\TableRow;

class PriceP extends ComponentBase
{
  public $price_tables;
  public $price_rows;

    public function componentDetails()
    {
        return [
            'name'        => 'Цены',
            'description' => 'Все прайсы на странице'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

  public function onRun()
  {
   $this->rows = TableRow::whereNull('article')->get()->toArray();
//    $this->price_rows = TableRow::get()-> where('article','!=','')->toArray();

    $this->price_rows = TableRow::get()-> where('article','!=','' )->sortBy("sort_order")->toArray();

  // $this->price_rows = TableRow::get()->toArray(); // для отладки
    $this->price_tables  = Table::get()-> where('type', 1)->toArray();
  //  $this->price_tables  = Table::get()-> where('type', 0)->toArray(); // для отладки
  }
}
