<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class QuoteBlock extends Model
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
    public $table = 'konvertagency_doctors_quote_block';

    /**
     * @var array Validation rules
     */
    public $rules = [
        'txt' => 'required',
    ];
}
