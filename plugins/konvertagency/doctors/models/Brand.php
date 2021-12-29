<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class Brand extends Model
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
    public $table = 'konvertagency_doctors_brand';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
  public $belongsTo = [
      'table' => 'Konvertagency\Doctors\Models\Country',

  ];
  public function getCountryOptions($keyValue = null)
    //имя getCountryOptions из fields.yaml - поле faq_slug
  {
    // return Table::lists('из какого поля базы таблиц передать в дроп лист интерфейса строк', 'какое значение в таблицу строк записать из бызы таблиц, оно же иднтификатор выборки ');
    return Country::pluck( 'name','name');

  }
}
