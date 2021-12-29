<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class Etap extends Model
{

  use \October\Rain\Database\Traits\Validation;
  use \October\Rain\Database\Traits\SoftDelete;
  use \October\Rain\Database\Traits\Sortable;
  use \October\Rain\Database\Traits\SimpleTree;

  /*
   * Disable timestamps by default.
   * Remove this line if timestamps are defined in the database table.
   */
  public $timestamps = false;


  /**
   * @var string The database table used by the model.
   */
  public $table = 'konvertagency_doctors_etap';

  /**
   * @var array Validation rules
   */
  public $rules = [
  ];


  public $belongsTo = [
      'block_etaps' => ['Konvertagency\Doctors\Models\Etaps',
          'key' => 'block_etaps_id',
//          'otherKey' => 'title',
//          'order' => 'id desc',
      ]
  ];

  public $attachOne = [
      'img_etap' => 'System\Models\File'
  ];

  public function getFullnameAttribute()
  {
//    объеденение полей для  lists. вернет переменную "fullname" - это laravel accessor
    return $this -> title. ": " . $this -> sub_title;

  }

}

