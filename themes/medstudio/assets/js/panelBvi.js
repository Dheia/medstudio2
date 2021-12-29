var cookie_bvi_font_size = get_cookie("bvi-font-size");
var bvi_tts = true;
if (cookie_bvi_font_size !== null) {
  var fontSize = cookie_bvi_font_size;
  document.body.style.fontSize = fontSize + "px";
} else {
  var fontSize = Number(window.getComputedStyle(document.body).getPropertyValue('font-size').match(/\d+/)[0]);
}
// var insert = document.querySelector('.container-menu');
div_panelBvi.insertAdjacentHTML("afterbegin", `

<style>


</style>

<div class="container-fluid containerBvi" id="panelBvi">
<div class="container">
<div class="panelBvi" >
  <!-- <div class="container"> -->
  <div class="row rowBvi">
    <div class="col-md-4">
      <div class="bvi-title">
        Размер шрифта <span id="bvi_font_size">` + fontSize + `</span> px
      </div>
      <div class="bvi-col-row">
        <a href="javascript:bvi_font_size_less()" class="bvi-link" title="Уменьшить размер шрифта">A - </a>
        <a href="javascript:bvi_font_size_more()" class="bvi-link" title="Увеличить размер шрифта">A +</a>
        <!-- <a href="javascript:bvi_font_size_more()" class="bvi-link" title="Увеличить межстрочное растояние">&#926; +</a> -->
      </div>
    </div>
    <div class="col-md-4 ">
      <div class="bvi-title">
        Цвета сайта
      </div>
      <div class="bvi-col-row">
        <a href="#" id="bvi-theme-white" class="bvi-link bvi-link-white  active" title="Черным по белому">Ц</a>
        <a href="#" id="bvi-theme-black" class="bvi-link bvi-link-black" title="Белым по черному">Ц</a>
        <a href="#" id="bvi-theme-blue" class="bvi-link bvi-link-blue" title="Темно-синим по голубому">Ц</a>
        <a href="#" id="bvi-theme-brown" class="bvi-link bvi-link-brown" title="Коричневым по бежевому">Ц</a>
        <a href="#" id="bvi-theme-green" class="bvi-link bvi-link-green" title="Зеленым по темно-коричневому">Ц</a>
      </div>
    </div>
    <div class="col-md-4 ">
      <div class="bvi-title">
        Изображения и звук
      </div>
      <div class="bvi-col-row">
        <!-- <a href="javascript:test('3')">3</a> -->
        <a href="#" id="bvi_tts_true" class="bvi-link" title="Выключить звук">
          <svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 513" class="bvi-svg">
            <path fill="currentColor" d="M 43.147227,140.3128 H 153.42284 L 288.4724,27.552411 c 1.46964,-1.206273 8.81784,-8.758606 8.81784,7.342532 V 255.43333 475.97171 c 0,14.73751 -2.51937,12.58721 -8.81784,7.34252 L 153.42284,370.55385 H 43.147227 c -19.892658,0 -33.9067375,-16.31093 -36.1636859,-35.926 -7.97805575,-67.81359 -7.97805575,-90.57547 0,-158.38903 C 9.2929776,156.62374 23.254569,140.3128 43.147227,140.3128 Z" />
            <path fill="currentColor" d="m 392.55204,203.66841 26.19112,-26.17094 52.32977,52.34186 52.38228,-52.34186 26.19112,26.17094 -52.38226,52.34183 52.38226,52.34185 -26.19112,26.17093 -52.38228,-52.34185 -52.32977,52.34185 -26.19112,-26.17093 52.38225,-52.34185 z" />
          </svg>
        </a>
        <a href="#" id="bvi_tts_false" class="bvi-link bvi-display-none" title="Включить звук">
          <svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 513" class="bvi-svg">
            <path <path fill="currentColor" d="m 486.51015,65.997457 c 31.5472,56.058133 49.52908,120.732493 49.52908,189.609893 0,68.87741 -17.98188,133.55178 -49.52908,189.55737 l 28.49763,28.47564 c 38.11953,-63.78123 59.99221,-138.33274 59.99221,-218.03301 0,-79.70024 -21.87268,-154.25178 -59.99221,-218.085525 z m -28.70792,28.738326 c 25.08002,48.124867 39.32884,102.817007 39.32884,160.871567 0,58.00202 -14.24882,112.7467 -39.32884,160.87157 l -29.076,-29.05355 c 18.87575,-39.98146 29.44403,-84.69135 29.44403,-131.81802 0,-47.17917 -10.56828,-91.83654 -29.44403,-131.81802 z m -58.62519,58.579947 c 12.88175,31.52285 20.03247,66.0929 20.03247,102.29162 0,36.19874 -7.15072,70.71627 -20.03247,102.29162 l -30.33788,-30.31445 c 7.4136,-22.64389 11.40957,-46.86396 11.40957,-71.97717 0,-25.16571 -3.99597,-49.33324 -11.40957,-71.97715 z" />
            <path fill="currentColor" d="M 42.220649,139.70836 H 152.68838 L 287.97322,26.751521 c 1.4722,-1.208375 8.8332,-8.773865 8.8332,7.355324 V 255.02944 475.95203 c 0,14.76319 -2.52376,12.60914 -8.8332,7.35532 L 152.68838,370.35052 H 42.220649 c -19.927314,0 -33.965808,-16.33935 -36.2266884,-35.98859 -7.9919547,-67.93173 -7.9919547,-90.73326 0,-158.66497 2.3134599,-19.64925 16.2993744,-35.9886 36.2266884,-35.9886 z" />
          </svg>
        </a>
        <a href="#" id="bvi_images_true" class="bvi-link " title="Скрыть изображения">
          <svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 698.118 596.802" class="bvi-svg">
            <path fill="currentColor" d="M129.655 64.826l438.809 0 -22.186 18.616 -394.438 0 -22.185 -18.616zm549.144 4.626c11.492,6.356 19.319,18.611 19.319,32.606l0 390.948c0,13.996 -7.827,26.249 -19.319,32.607l-16.722 -14.031c9.689,-0.62 17.425,-8.739 17.425,-18.577l0 -390.946c0,-9.838 -7.735,-17.956 -17.423,-18.577l16.72 -14.03zm-110.336 460.786l-438.808 0 22.187 -18.617 394.435 0 22.186 18.617zm-549.143 -4.625c-11.493,-6.357 -19.32,-18.611 -19.32,-32.607l0 -390.948c0,-13.996 7.827,-26.249 19.319,-32.606l16.721 14.03c-9.689,0.62 -17.424,8.739 -17.424,18.577l0 390.946c0,9.838 7.736,17.957 17.425,18.577l-16.721 14.031zm152.869 -327.888c-7.492,24.282 -30.111,41.926 -56.852,41.926 -32.855,0 -59.488,-26.633 -59.488,-59.488 0,-23.068 13.13,-43.068 32.323,-52.937l84.017 70.499zm172.81 47.796c25.66,-25.745 44.894,-40.752 62.279,-45.443l-58.219 48.85 -4.06 -3.407zm134.28 -8.653c37.461,40.483 89.08,112.468 181.607,213.63l0 42.506 -20.949 0 -232.954 -195.471 72.296 -60.665zm44.811 256.136l-350.061 0.001 175.03 -146.869 175.031 146.868zm-465.91 0.001l-20.947 0 -0.001 -35.345c93.339,-123.248 85.96,-198.183 171.144,-90.685l-150.196 126.03zm630.984 -493.005l-340.105 285.381 -340.104 -285.381 -8.955 0 0 16.789 334.578 280.744 -334.578 280.744 0 18.525 6.885 0 342.174 -287.118 342.174 287.118 6.885 0 0 -18.525 -334.578 -280.744 334.578 -280.744 0 -16.789 -8.954 0z" class=""></path>
          </svg>
        </a>
        <a href="#" id="bvi_images_false" class="bvi-link bvi-display-none" title="Показать изображения">
          <svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" version="1.1" style=" fill-rule:evenodd; " class="bvi-svg" viewBox="0 0 698.118 596.802">
            <path fill="currentColor" d="M37.233 65.695l623.651 0c20.479,0 37.234,16.754 37.234,37.232l0 390.947c0,20.479 -16.755,37.233 -37.234,37.233l-623.651 0c-20.479,0 -37.233,-16.754 -37.233,-37.233l0 -390.947c0,-20.478 16.754,-37.232 37.233,-37.232zm0 18.616l623.652 0c10.239,0 18.617,8.377 18.617,18.616l0 390.946c0,10.24 -8.378,18.617 -18.617,18.617l-623.652 0c-10.24,0 -18.617,-8.377 -18.617,-18.617l0 -390.946c0,-10.239 8.377,-18.616 18.617,-18.616zm78.104 37.232c32.855,0 59.488,26.634 59.488,59.488 0,32.855 -26.633,59.489 -59.488,59.489 -32.855,0 -59.488,-26.634 -59.488,-59.489 0,-32.854 26.633,-59.488 59.488,-59.488zm104.609 261.249c251.725,-275.215 166.525,-231.448 440.94,68.575l0 42.506 -623.653 0 -0.001 -35.344c97.376,-128.578 85.116,-204.61 182.714,-75.737z" class=""></path>
          </svg>
        </a>
        <a href="#" id="bvi_images_grayscale" class="bvi-link" title="Изображения черно-белые">
          <svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" class="bvi-svg" style=" fill-rule:evenodd; ">
            <path fill="currentColor" d="M 288,23.5 C 416.47498,23.5 520.67954,127.57143 520.67954,256 520.67954,384.37586 416.47498,488.5 288,488.5 159.47225,488.5 55.32046,384.37586 55.32046,256 55.32046,127.57143 159.47225,23.5 288,23.5 Z m 0,40.91157 V 447.53572 C 182.10707,447.53572 96.263617,361.81123 96.263617,256 96.263617,150.18877 182.10707,64.41157 288,64.41157 Z" id="path899" class=""></path>
          </svg>
        </a>
        <a href="#" id="bvi_of" class="bvi-link" title="Обычная версия сайта">
          <svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 204.59 174.898" class="bvi-svg">
            <path fill="currentColor" d="M203.354 82.263c-8.897,-17.359 -21.821,-32.122 -37.456,-42.986l-7.852 7.852c14.836,9.885 27.165,23.648 35.596,40.111 0.048,0.093 0.048,0.327 0,0.42 -17.643,34.447 -52.322,57.074 -91.347,57.074 -12.362,0 -24.29,-2.274 -35.378,-6.475l-8.385 8.385c13.496,5.802 28.281,9.002 43.763,9.002 43.664,0 81.808,-25.446 101.059,-63.015 0.811,-1.607 1.236,-3.384 1.236,-5.184 0,-1.799 -0.425,-3.577 -1.236,-5.183l0 -0.001zm-57.295 -54.009l-0.005 -0.002c-13.496,-5.801 -28.279,-9 -43.759,-9 -43.664,0 -81.808,25.446 -101.059,63.015 -0.811,1.607 -1.236,3.384 -1.236,5.184 0,1.8 0.425,3.577 1.236,5.183 8.897,17.359 21.821,32.123 37.456,42.987l7.852 -7.852 12.699 -12.699c-5.123,-7.967 -8.096,-17.447 -8.096,-27.621 0,-28.243 22.905,-51.148 51.148,-51.148 11.261,0 20.639,2.843 28.151,7.566l7.227 -7.227 8.386 -8.386zm-12.987 43.85c2.307,4.619 3.608,9.83 3.608,15.345 0,18.99 -15.395,34.385 -34.385,34.385 -5.515,0 -10.726,-1.301 -15.345,-3.608l6.212 -6.213c2.844,1.058 5.921,1.637 9.133,1.637 14.471,0 26.201,-11.73 26.201,-26.201 0,-3.212 -0.579,-6.289 -1.637,-9.133l6.213 -6.212zm-30.777 -19.04c5.515,0 10.726,1.3 15.345,3.609l-46.121 46.121c-2.309,-4.619 -3.609,-9.83 -3.609,-15.345 0,-3.012 0.389,-5.932 1.116,-8.716 2.992,2.397 6.787,3.831 10.919,3.831 9.653,0 17.479,-7.826 17.479,-17.479 0,-4.127 -1.432,-7.92 -3.824,-10.911 2.777,-0.723 5.691,-1.11 8.695,-1.11zm91.307 -53.064l-174.898 174.898 -7.716 0 174.899 -174.898 7.715 0z" class=""></path>
          </svg>
        </a>
      </div>
    </div>
  </div>
  <!-- </div> -->
</div>
</div>
</div>
`);

// function test(a) {
//   console.log(' загружена панель для слабовидящих');
// }

function bvi_font_size_less() {
  console.log('размер шрифта уменьшен');
  fontSize = fontSize - 1;
  document.body.style.fontSize = fontSize + "px";
  bvi_font_size.innerHTML = fontSize;
  set_cookie("bvi-font-size", fontSize);
}

function bvi_font_size_more() {
  console.log('размер шрифта увеличен');
  fontSize = fontSize + 1;
  document.body.style.fontSize = fontSize + "px";
  bvi_font_size.innerHTML = fontSize;
  set_cookie("bvi-font-size", fontSize);
}
bvi_tts_false.onclick = function() {
  bvi_tts = false;
  bvi_tts_false.classList.add('bvi-display-none');
  bvi_tts_true.classList.remove('bvi-display-none');
}
bvi_tts_true.onclick = function() {
  bvi_tts_false.classList.remove('bvi-display-none');
  bvi_tts_true.classList.add('bvi-display-none');
}
bvi_images_true.onclick = function() {
  bvi_images_true.classList.add('bvi-display-none');
  bvi_images_false.classList.remove('bvi-display-none');
}
bvi_images_false.onclick = function() {
  bvi_images_true.classList.remove('bvi-display-none');
  bvi_images_false.classList.add('bvi-display-none');
}
bvi_images_grayscale.onclick = function() {
  bvi_images_true.classList.remove('bvi-display-none');
  bvi_images_false.classList.add('bvi-display-none');
}
bvi_of.onclick = function() {
  ExitBvi();

}

  f_restart();