<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Konvertagency\Doctors\Models\SampleWorks;

//подключить модель
use BackendAuth;

class Sample extends ComponentBase

{
  public $name;
  public $sampls;
  public $user;
  public $edit;

 // public $backendUser;

  public function componentDetails()
  {
    return [
        'name' => 'Примеры работ',
        'description' => 'Примеры работ_'
    ];
  }

  public function defineProperties()
  {
    return [];
  }


  public function onRun()

  {

    if ($this->checkEditor()) {

      $this->user = BackendAuth::getUser();
      $this->name = BackendAuth::getUser()->login;
      $this->edit = true;



    } else {
      $this->name = ' не может радактировать';
      $this->edit = false;


    }


    //читаем из базы и заполняем список в tasks.htm
    $this->sampls = SampleWorks::lists('title');
    $this->sampls = SampleWorks::select('title', 'id', 'link', 'view_in_page')->get();
   // $this->sampls = SampleWorks::all();


  }

  public function checkEditor()
  {
    $backendUser = BackendAuth::getUser();
    return $backendUser && $backendUser->hasAccess('konvertagency.doctors.edit_all');
  }
}
