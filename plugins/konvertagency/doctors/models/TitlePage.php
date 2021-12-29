<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class TitlePage extends Model
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
    public $table = 'konvertagency_doctors_title_page';


/* Relations */

public $attachOne = [

   'bg_title' => 'System\Models\File'

];

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
