<?php namespace Konvertagency\Doctors\Components;

use Cms\Classes\ComponentBase;
use Input;
use Mail;

use Validator;
use Redirect;

use October\Rain\Exception\ValidationException;
use System\Models\MailSetting;

class ContactP extends ComponentBase
{
  public function componentDetails()
  {
    return [
        'name' => 'Почта',
        'description' => 'Форма отправки почты'
    ];
  }

  public function defineProperties()
  {
    return [
        'title_form' => [
            'title' => 'Заголовок формы',
            'description' => '',
            'type' => 'string',
            'default' => 'Оставьте данные для записи',
        ],

        'description_form' => [
            'title' => 'Пояснение',
            'description' => 'Дополнительный текст под заголовком',
            'type' => 'string',
            'default' => 'С вами свяжутся в течении 5 минут, для уточнения времени приема',
        ],

        'btn_txt' => [
            'title' => 'Текст на кнопке',
            'description' => '',
            'type' => 'string',
            'default' => 'Отправить',
            'validation' => [
                'required' => [
                    'message' => 'Текст на кнопке не может быть пустым'
                ]
            ]
        ],


        'mail_to' => [
            'title' => 'Адрес получателя',
            'description' => 'e-mail получателя данных из формы',
            'type' => 'string',
            'validationPattern' => '^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$',
            'validationMessage' => 'Не корректный почтовый адрес'

// Регулярное выражение для проверки корректности номера телефона
// ^\+\d{2}\(\d{3}\)\d{3}-\d{2}-\d{2}$
//(пример: «+38(044)555-55-55»)
// Регулярное выражение для проверки корректности URL
// ^((https?|ftp)\:\/\/)?([a-z0-9]{1})((\.[a-z0-9-])|([a-z0-9-]))*\.([a-z]{2,6})(\/?)$
// Регулярное выражение для проверки корректностицыфр
// ^[0-9]+$,

        ],
        'mail_from' => [
            'title' => 'Имя получателя',
            'description' => 'для поля "кому" в почтовом клиенте получателя',
            'type' => 'string',
//                'validation' => [
//                    'required' => [
//                        'message' => 'Не указан идентификатор'
//                    ]
//                ]
        ],
    ];
  }

  public function onRender()
  {
    $this->page['mail_to'] = $this->property('mail_to');
    $this->page['mail_from'] = $this->property('mail_from');
    $this->page['title_form'] = $this->property('title_form');
    $this->page['description_form'] = $this->property('description_form');
    $this->page['btn_txt'] = $this->property('btn_txt');
  }

  public function onSend()
  {
    $validator = Validator::make(
        [
            'name' => Input::get('name'),
            'tel' => Input::get('tel'),
            'acceptance' => Input::get('acceptance'),
        ],
        [
            'name' => 'required|max:30',
            'tel' => 'required|regex:/^(8\([0-9]{3})?(\)[0-9]{3})?([-]{1})?([0-9]{2})?([-]{1})?([0-9]{2})?(\+7\([0-9]{3})?(\)[0-9]{3})?([-]{1})?([0-9]{2})?([-]{1})?([0-9]{2})?$/',
            'acceptance' => 'required',
        ]
    );

    if ($validator->fails()) {
      // Переданные данные не прошли проверку
      return Redirect::back()->withErrors($validator);

/*
      $file = 'c:\tmp\mail.txt';
      $current = file_get_contents($file);// Открываем файл для получения существующего содержимого
      $current .= date('l d \of F Y H:i:s') . " " . implode(" | ", $data) . " " . "\n" . $user_agent;// Добавляем новую запись в файл
      file_put_contents($file, $current);// Пишем содержимое обратно в файл
*/

    } else {

      $data = Input::only([
          'name',
          'tel',
          'content',
          'acceptance',
      ]);
      $sender_mail = MailSetting::get('sender_email');
      $receiver = (Input::get('mail_to') == "") ? $sender_mail : Input::get('mail_to');

      $receiver_name = Input::get('mail_from');
      $host = $_SERVER['HTTP_HOST'];

      Mail::send('konvertagency.doctors::mail.appointment', $data, function ($message) use ($receiver, $receiver_name, $host, $sender_mail) {
        $message->to($receiver, $receiver_name);
        $message->subject('Запись на прием с ' . $host);
      });


/*
      $file = 'c:\tmp\errors.txt';
      $current = file_get_contents($file);// Открываем файл для получения существующего содержимого
      $current .= date('l d \of F Y H:i:s') . " " . implode(" | ", $data) . " " . "\n" . $user_agent;// Добавляем новую запись в файл
      file_put_contents($file, $current);// Пишем содержимое обратно в файл
*/

    }

  }


//************************************

  public function onSendMail()
  {
    // Get request data
    $user_agent = $_SERVER['HTTP_USER_AGENT'] . "\n\n";
    $data = Input::only([
        'name',
        'tel',
        'content',
        'acceptance',

    ]);

    // Validate request
    $this->validate($data);

    $sender_mail = MailSetting::get('sender_email');
    $receiver = (Input::get('mail_to') == "") ? $sender_mail : Input::get('mail_to');

    $receiver_name = Input::get('mail_from');
    $host = $_SERVER['HTTP_HOST'];

    Mail::send('konvertagency.doctors::mail.appointment', $data, function ($message) use ($receiver, $receiver_name, $host, $sender_mail) {
      $message->to($receiver, $receiver_name);
      $message->subject('Запись на прием с ' . $host);
    });
    /*
     *      $file = 'c:\tmp\mail.txt';
            $current = file_get_contents($file);// Открываем файл для получения существующего содержимого
            $current .= date('l d \of F Y H:i:s') . " " . implode(" | ", $data) . " " . "\n" . $user_agent;// Добавляем новую запись в файл
            file_put_contents($file, $current);// Пишем содержимое обратно в файл

    */
  }


  protected function validate(array $data)
  {
    // Validate request
    // Генератор Правил Валидации
    // https://uiregex.com/ru?match=%2B7(999)999-99-99%0A8(999)999-99-99&exact=%2B%0A(%0A)%0A7%0A8&blocked=
    $rules = [
        'name' => 'required|max:30',
      // 'tel' => 'required|regex:/^\d{1}\(\d{3}\)\d{3}-\d{2}-\d{2}$/',
//        'tel' => 'required|regex:/^(8\([0-9]{3})?(\)[0-9]{3})?([-]{1})?([0-9]{2})?([-]{1})?([0-9]{2})?(\+7\([0-9]{3})?(\)[0-9]{3})?([-]{1})?([0-9]{2})?([-]{1})?([0-9]{2})?$/',
        'tel' => 'required|regex:/^([7-8]\([0-9]{3})?(\)[0-9]{3})?([-]{1})?([0-9]{2})?([-]{1})?([0-9]{2})?(\+7\([0-9]{3})?(\)[0-9]{3})?([-]{1})?([0-9]{2})?([-]{1})?([0-9]{2})?$/',
      // 'phone' => 'required|regex/(+7|8)((\d{3})|\d{3})\d{7}$/'];
      // 'mail_to' => 'required|email',
        'acceptance' => 'required',
    ];

    $messages = [
        'name' => 'Имя',
        'name.required' => 'Поле "Имя" обязательно для заполнения.',
        'name.max' => 'Поле "Имя" не должно быть длиннее 30 символов',
        'tel.required' => 'Поле "Телефон" обязательно для заполнения.',
        'tel.regex' => 'Поле "Телефон" имеет ошибочный формат',
        'acceptance.required' => 'Поле "соглашение" обязательно для заполнения.',


    ];

    $validator = \Validator::make($data, $rules, $messages);

    if ($validator->fails()) {
      /*
           $file = 'c:\tmp\errors.txt';
            $current = file_get_contents($file);// Открываем файл для получения существующего содержимого
            $current .= date('l d \of F Y H:i:s') . " "  . "\n\n" . $mess. "\n\n". $err. "\n\n";// Добавляем новую запись в файл
            file_put_contents($file, $current);// Пишем содержимое обратно в файл
      */
      throw new ValidationException($validator);

    }
  }


//************************************


}

