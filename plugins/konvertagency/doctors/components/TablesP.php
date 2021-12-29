<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\Table;
use Konvertagency\Doctors\Models\TableRow;

class TablesP extends ComponentBase
{
  public $tables;
  public $rows;
    public function componentDetails()
    {
        return [
            'name'        => 'Таблица',
            'description' => ''
        ];
    }

  public function defineProperties()
  {
    return [
        'table_slug' => [
            'title' => 'Идентификатор таблицы',
            'description' => 'Идентификатор таблицы в базе данных',
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
//    $this->rows = TableRow::whereNull('article')->get()->toArray();
    $this->rows = TableRow::get()-> where('article', '')->toArray();
    $this->rows = TableRow::get()-> where('article', '')->sortBy("sort_order")->toArray();



    $this->tables  = Table::get()-> where('type', 0)->toArray();

  }

}
