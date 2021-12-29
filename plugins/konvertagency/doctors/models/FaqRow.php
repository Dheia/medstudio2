<?php namespace KonvertAgency\Doctors\Models;

use Model;

/**
 * Model
 */
class FaqRow extends Model
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
    public $table = 'konvertagency_doctors_faq_row';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

        public $belongsTo = [
        'table' => 'Konvertagency\Doctors\Models\Faq',
    ];

    public function getFaqSlugOptions($keyValue = null)
    //имя getFaqSlugOptions из fields.yaml - поле faq_slug
    {
        // return Table::lists('из какого поля базы таблиц передать в дроп лист интерфейса строк', 'какое значение в таблицу строк записать из бызы таблиц, оно же иднтификатор выборки ');
//         return Faq::pluck('faq_slug', 'faq_slug');
      return Faq::orderBy('id','desc')->pluck('faq_slug', 'faq_slug');

    }


}
