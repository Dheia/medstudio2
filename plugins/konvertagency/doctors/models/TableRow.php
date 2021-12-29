<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class TableRow extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'konvertagency_doctors_table_row';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $belongsTo = [
        'table' => 'Konvertagency\Doctors\Models\Table',
       'key' => 'table_slug',
      // 'order' => 'table_slug asc',
       'order' => 'id desc',
      //  'otherKey' => 'table_slug'

    ];

    public function getTableSlugOptions($keyValue = null)
    //имя getTableSlugOptions из fields.yaml - поле table_slug
    {
        // return Table::lists('из какого поля базы таблиц передать в дроп лист интерфейса строк', 'какое значение в таблицу строк записать из бызы таблиц, оно же иднтификатор выборки ');
//         return Table::pluck('table_slug', 'table_slug');
      return Table::orderBy('id','desc')->pluck('table_slug', 'table_slug');
    }


}
