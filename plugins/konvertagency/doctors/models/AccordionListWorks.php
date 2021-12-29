<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class AccordionListWorks extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    use \October\Rain\Database\Traits\SoftDelete;

    protected $dates = ['deleted_at'];

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'konvertagency_doctors_accordion_list_works';
  protected $jsonable = ['repeater'];
  public $attachOne = [

      'img_accordion' => 'System\Models\File'

  ];
    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
