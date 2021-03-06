var cookie_bvi_font_size = get_cookie("bvi-font-size");
//console.log('cookie_bvi_font_size = '+cookie_bvi_font_size);

if (cookie_bvi_font_size !== null) {
  var fontSize = cookie_bvi_font_size;
 document.body.style.fontSize = fontSize + "px";
}
else {
  var fontSize = Number(window.getComputedStyle(document.body).getPropertyValue('font-size').match(/\d+/)[0]);
  console.log('fontSize = '+fontSize);
}

/* инструкция https://ruseller.com/lessons.php?id=593 */
function set_cookie(name, value, exp_y, exp_m, exp_d, path, domain, secure) {
  var cookie_string = name + "=" + escape(value);

  if (exp_y) {
    var expires = new Date(exp_y, exp_m, exp_d);
    cookie_string += "; expires=" + expires.toGMTString();
  }

  if (path)
    cookie_string += "; path=" + escape(path);

  if (domain)
    cookie_string += "; domain=" + escape(domain);

  if (secure)
    cookie_string += "; secure";

  document.cookie = cookie_string;
}

function get_cookie(cookie_name) {
  var results = document.cookie.match('(^|;) ?' + cookie_name + '=([^;]*)(;|$)');

  if (results)
    return (unescape(results[2]));
  else
    return null;
}

function delete_cookie(cookie_name) {
  var cookie_date = new Date(); // Текущая дата и время
  cookie_date.setTime(cookie_date.getTime() - 1);
  document.cookie = cookie_name += "=; expires=" + cookie_date.toGMTString();
}
