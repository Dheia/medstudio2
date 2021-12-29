<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class Galleries extends Model
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
  public $table = 'konvertagency_doctors_galleries';

/*
  public $belongsToMany = [
      'slides' => [
          'Konvertagency\Doctors\Models\Slides',
          'table' => 'konvertagency_doctors_slides_galleries',
          'order' => 'slide_title',
      ]
  ];

*/

  /**
   * @var array Validation rules
   */
  public $rules = [
  ];
}
