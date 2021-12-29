<?php namespace KonvertAgency\Doctors\Models;

use Model;
//use Lang;

/**
 * Model
 */

class Discounts extends Model
{



    use \October\Rain\Database\Traits\Validation;
      use \October\Rain\Database\Traits\SoftDelete;
  use \October\Rain\Database\Traits\Sortable;
  use \October\Rain\Database\Traits\SimpleTree;

  // const SORT_ORDER = 'id';
 const sortDirection ='desc';


//Sets the list sorting direction (asc, desc)

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'konvertagency_doctors_discounts';
    protected $jsonable = ['banner_list_txt'];


  /* Relations */

  public $attachOne = [

      'ImgPpromotions' => 'System\Models\File',
      'ImgPpromotionsHome' => 'System\Models\File',

  ];
// $this->vars['sort_order'] = 100;

// public $belongsTo = [
//     'parent'    => ['title', 'key' => 'parent_id'],
// ];



    /**
     * @var array Validation rules
     */
  public $rules = [
      'title' => 'required',
      'slug' => 'required',
      // 'sort_order' => 'numeric',
     // 'price_current' => 'required',

  ];


  public $customMessages = [
      'title.required' => 'Поле "Название акции" должно быть заполнено',
      'slug.required' => 'Поле идентификатор должно быть заполнено',
      // 'sort_order.numeric' => 'Поле сортировки должно быть цифрой',
    //  'price_current.required' => 'Поле Цена по акции должно быть заполнено',
  ];



}

// как при подключенном трейте
// use \October\Rain\Database\Traits\Sortable;
// и
// use \October\Rain\Database\Traits\SimpleTree;
// сортировать по desc ?