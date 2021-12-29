<?php namespace KonvertAgency\Doctors;

use System\Classes\PluginBase;

//use Backend;
class Plugin extends PluginBase
{
  public function pluginDetails()
    //что видно в админке
  {
    return [
        'name' => 'Doctors',
        'description' => 'Элементы страниц',
        'author' => 'Konvertagency',
        'icon' => 'icon-cogs'
    ];
  }

  public function registerComponents()
  {
    return [
        'Konvertagency\Doctors\Components\TitleP' => 'TitlePage',
        'Konvertagency\Doctors\Components\ContentP' => 'ContentPage',
        'Konvertagency\Doctors\Components\GalleriesP' => 'Gallery',
        'Konvertagency\Doctors\Components\TablesP' => 'Table',
        'Konvertagency\Doctors\Components\FaqP' => 'FAQ',
        'Konvertagency\Doctors\Components\RatingP' => 'Rating',
        'Konvertagency\Doctors\Components\FeadbackP' => 'Feadback',
        'Konvertagency\Doctors\Components\ContactP' => 'Contact',
        'Konvertagency\Doctors\Components\PriceP' => 'Price',
        'Konvertagency\Doctors\Components\MarquizP' => 'Marquiz',
    ];
  }

  public function registerFormWidgets()
  {
    return [
        'Konvertagency\Doctors\FormWidgets\Etap_fw' => [
            'label' => 'Etap field',
            'code' => 'widget_etap' //имя шаблона виджета который будет указан в yaml > type: widget_etap
        ]
    ];
  }


  public function registerPageSnippets()
  {
    return [
        'Konvertagency\Doctors\Components\MarquizP' => 'Marquiz',
        'Konvertagency\Doctors\Components\EtapsP' => 'Etaps',
        'Konvertagency\Doctors\Components\DiscountsGalleriesP' => 'DiscountsGalleries',
        'Konvertagency\Doctors\Components\AccordionListWorksP' => 'AccordionListWorks',
        'Konvertagency\Doctors\Components\QuoteBlockP' => 'QuoteBlock',

    ];
  }

  /*
      public function registerSettings()
      {

        return [
            'settings' => [
                'label'       => 'Элементы страниц Settings',
                'description' => 'Manage main editor settings.',
                'icon'        => 'icon-cog',
                'class'       => 'Konvertagency\Doctors\Models\Settings',
                'order'       => 500,
                'permissions' => ['konvertagency.doctors.access_settings']
            ]
        ];

      }
  */
  public function registerPermissions()
  {
    return [
        'konvertagency.doctors.edit_all' => [
            'tab' => 'Элементы страниц',
            'label' => 'Редактирование компонентов на станице'
        ],

        'konvertagency.doctors.access_settings' => [
            'tab' => 'Элементы страниц',
            'label' => 'Ещё какое-то разрешение (не работает, создано на перспективу)'
        ],
    ];
  }


  public function registerMarkupTags()
  {

    return [
        'filters' => [
          // A global function, i.e str_plural()
            'plural' => 'str_plural',

          // заменяет спецсимволы на пробел
            'remove_sp_char' => [$this, 'removeSpecialCharacters'],

          // обрамляет в <span> цифры
            'span_numb' => [$this, 'spanNumbers'],

            'cur' => [$this, 'currencyCaps'],

        ],

        'functions' => [
          // Using an inline closure
            'user_agent' => function () {
              return $_SERVER['HTTP_USER_AGENT'];
            },
            'currentFullUrl' => function () {

              $url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
              return $url;
            },
            'getClientIP' => function () {
              // if ($_SERVER['HTTP_X_FORWARDED_FOR'] != '')
              if (getenv('HTTP_X_FORWARDED_FOR') != '') {
                $client_ip = (!empty($_SERVER['REMOTE_ADDR'])) ? $_SERVER['REMOTE_ADDR'] : ((!empty($_ENV['REMOTE_ADDR'])) ? $_ENV['REMOTE_ADDR'] : "unknown");
                //$entries = explode('[, ]', $_SERVER['HTTP_X_FORWARDED_FOR']);
                $entries = explode('[, ]', getenv('HTTP_X_FORWARDED_FOR'));
                reset($entries);

                foreach ($entries as $entry) {
                  //while (list(, $entry) = each($entries)) {
                  $entry = trim($entry);
                  if (preg_match("/^([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/", $entry, $ip_list)) {
                    $private_ip = array('/^0\./', '/^127\.0\.0\.1/', '/^192\.168\..*/', '/^172\.((1[6-9])|(2[0-9])|(3[0-1]))\..*/', '/^10\..*/');
                    $found_ip = preg_replace($private_ip, $client_ip, $ip_list[1]);
                    if ($client_ip != $found_ip) {
                      $client_ip = $found_ip;
                      break;
                    }
                  }
                }


              } else {
                $client_ip = (!empty($_SERVER['REMOTE_ADDR'])) ? $_SERVER['REMOTE_ADDR'] : ((!empty($_ENV['REMOTE_ADDR'])) ? $_ENV['REMOTE_ADDR'] : "unknown");
              }
              return $client_ip;
            },
            'get' => [$this, 'getvariable'],

            'last_date_months' => function () {
              $arr_months = ['января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'];
              $data_slogan =  date('t') . " " . $arr_months[date('n') - 1] ;

              return $data_slogan;
            },

//            'last_date_years' => function () {
//
//              $last_date_years = date('Ymt');
//
//              return $last_date_years;
//            },

            'rus_date_months_years' => function ($date='') {
              if ($date==""){
                $date = date('d-m-Y', time());
              }
              $_monthsList = array(
                  "-01-" => "января",
                  "-02-" => "февраля",
                  "-03-" => "марта",
                  "-04-" => "апреля",
                  "-05-" => "мая",
                  "-06-" => "июня",
                  "-07-" => "июля",
                  "-08-" => "августа",
                  "-09-" => "сентября",
                  "-10-" => "октября",
                  "-11-" => "ноября",
                  "-12-" => "декабря"
              );
              $_mD = date("-m-", strtotime($date));
              $date = str_replace($_mD, " ".$_monthsList[$_mD]." ", $date);
              return $date;

            },

            'rus_date_months' => function ($date='' ) {
              if ($date==""){
                $date = date('d-m-Y', time());
              }
              $_monthsList = array(
                  "-01" => "января",
                  "-02" => "февраля",
                  "-03" => "марта",
                  "-04" => "апреля",
                  "-05" => "мая",
                  "-06" => "июня",
                  "-07" => "июля",
                  "-08" => "августа",
                  "-09" => "сентября",
                  "-10" => "октября",
                  "-11" => "ноября",
                  "-12" => "декабря"
              );
              $month=date("-m",strtotime($date));
              $year=date("Y",strtotime($date));
              $date = date('d-m',strtotime($date));
              $date = str_replace($month, " ".$_monthsList[$month], $date);
              return $date;
              // return date('d.m.Y', time());


            },
        ]

    ];
  }


  public function removeSpecialCharacters($text)
  {
    $search = array("~", "!", "#", "$", "%", "^", "&", "*", "(", ")", "+", "-", "=", ",", ".", "/", "`", "'", '"', ":", ";", "?", "\\", "|", ">", "<", "@");
    return str_replace($search, " ", $text);
  }

  public function getvariable($text)
  {
    $retVar = (isset($_GET[$text])) ? $_GET[$text] : '';
    return $retVar;
  }

  public function spanNumbers($text)
  {
    //  number_format($number, 2, ',', '&nbsp;');

    $text = preg_replace('#(\d+)#', '<span>' . '$1' . '</span>', $text);
    $num = preg_replace("/[^0-9]/", '', $text);

    if ($num != '') {
      $text = str_replace($num, number_format($num, 0, '', '&#x202F;'), $text);
    }
    //  $text = preg_replace('#(\d+)#', '&nbsp;<span>' . strval (number_format($1, 0, '', ' ')) . '</span>', $text);
    // return preg_replace('#(\d+)#', '<span>&nbsp;'.'$1'.'</span>', $text);
//pattern="\d+,\d{2}"

    return $text;
  }

  public function currencyCaps($text)
  {
    if (preg_match("/\d\z/i", $text)) {
      $text = $text . "&nbsp;₽";
    }

    $text = str_replace(" ₽", "&nbsp;₽", $text);
    $text = str_replace(" р.", "&nbsp;₽", $text);
    $text = str_replace(" Р.", "&nbsp;₽", $text);
    $text = str_replace(" руб.", "&nbsp;₽", $text);
    $text = preg_replace('~\bот \b~u', 'от&nbsp;', $text);


    return $text;
  }


  /*
  // переопределит меню билдера  на эту запись
  // use Backend; // это должно быть

  // инструкция - https://coderoad.ru/43511241/OctoberCMS-backend-%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%BE%D0%B5-%D0%BC%D0%B5%D0%BD%D1%8E-%D1%81-%D0%BF%D0%BE%D0%B4%D0%BC%D0%B5%D0%BD%D1%8E-%D1%80%D0%B0%D0%B7%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D1%85-%D0%BF%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD%D0%BE%D0%B2-%D0%B2-%D0%BD%D0%B5%D0%BC

    public function registerNavigation()
    {
      return []; // Remove this line to activate

      return [
          'stdemo' => [
              'label'       => 'stDemo',
              'url'         => Backend::url('Konvertagency/Doctors/Doctors'),
              'icon'        => 'icon-leaf',
              //'permissions' => ['acme.stdemo.*'],
              'order'       => 500,
          ],
      ];
    }

    */

}


