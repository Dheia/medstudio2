<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class Slides extends Model
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
    public $table = 'konvertagency_doctors_slides';

  /* Relations */


  public $belongsToMany = [
      'gallery' => [
          'Konvertagency\Doctors\Models\Galleries',
           'table' => 'konvertagency_doctors_slides_galleries',
           'order' => 'slug_gallerie',
           'order' => 'id desc',


      ]
  ];

  public $belongsTo = [
      'table' => 'Konvertagency\Doctors\Models\brand',

  ];

  public function getBrandOptions($keyValue = null)
    //имя getCountryOptions из fields.yaml - поле faq_slug
  {
    // return Table::lists('из какого поля базы таблиц передать в дроп лист интерфейса строк', 'какое значение в таблицу строк записать из бызы таблиц, оно же иднтификатор выборки ');
    return Brand::pluck( 'name_brand','name_brand');

  }

  public $attachOne = [
      'img_slide' => 'System\Models\File'
  ];


    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
