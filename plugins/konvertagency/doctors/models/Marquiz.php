<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class Marquiz extends Model
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
    public $table = 'konvertagency_doctors_marquiz';

    protected $jsonable = ['repeater'];

    /**
     * @var array Validation rules
     */


    public $attachOne = [
        'img_marquiz' => 'System\Models\File',
    ];

    public $rules = [
    ];
}
