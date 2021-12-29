<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class Feadback extends Model
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
    public $table = 'konvertagency_doctors_feadback';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];




  public $belongsTo = [
      'agregator' => ['Konvertagency\Doctors\Models\Rating',
          'key' => 'rating_description',
//          'otherKey' => 'id'
//    rating_description -  в какое поле записывается ключ сопоставления от связяной базы
// в columns.yaml "description" как называется поле данные из которого берутся из связяной базы
      ]

  ];



  public function getRatingDescriptionOptions($keyValue = null)
    //имя getFaqSlugOptions из fields.yaml - поле faq_slug
  {
    return Rating::pluck('description', 'id');
  }


}
