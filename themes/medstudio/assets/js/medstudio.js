/* ---------  версия для слабовидящих ---------  */
var fontSizeStart = Number(window.getComputedStyle(document.body).getPropertyValue('font-size').match(/\d+/)[0]); //разиер шрифта страницы

var thisUrl = document.currentScript.src;
thisUrl = thisUrl.substring(0, thisUrl.lastIndexOf('/')); //директория скрипта
//console.log('href = ' + thisUrl);

var root = document.querySelector(':root');
var cookie_bvi = get_cookie("bvi");


//delete_cookie ( "bvi" );
//console.log('cookie = ' + cookie_bvi);

if (cookie_bvi !== null) {
  colorBvi();
  //console.log("cookie_bvi - запускаем изменение цвета");
  let loadedJSbvi = document.createElement('script');
  loadedJSbvi.src = thisUrl + "/panelBvi.js";
  document.body.prepend(loadedJSbvi);
  //console.log('loadedJSbvi=' + loadedJSbvi);
  if (typeof bvi == 'undefined') {
    var bvi = true;
  }
} else {
  //console.log("cookie_bvi - ничего не делаем");
}

if (typeof bvi == 'undefined') {
  var bvi = false;
}


bvi_btn.onclick = function() {

  if (!bvi) {
    bvi = true;
    colorBvi();
    set_cookie("bvi", "true");
    // window.speechSynthesis.speak(new SpeechSynthesisUtterance("Версия сайта для слабовидящих"));

    let loadedJSbvi = document.createElement('script');
    // loadedJSbvi.src = "/themes/medstudio/assets/js/panelBvi.js";
    loadedJSbvi.src = thisUrl + "/panelBvi.js";
    document.querySelector('header').style.borderBottom = "1px solid var(--second-color)";
    //loadedJSbvi.type = "text/javascript";
    //loadedJSbvi.language = "javascript";
    document.body.prepend(loadedJSbvi);
    // console.log('loadedJSbvi=' + loadedJSbvi);

  } else {
    ExitBvi();
  }

}



function colorBvi() {
  //console.log('colorBvi');
  document.querySelector('.bvi-txt').innerHTML = "Обычная&nbsp;версия сайта";


  document.querySelector('.svg-eye').innerHTML = '<svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 204.59 174.898" class="bvi-svg-eye"><path fill="currentColor" d="M203.354 82.263c-8.897,-17.359 -21.821,-32.122 -37.456,-42.986l-7.852 7.852c14.836,9.885 27.165,23.648 35.596,40.111 0.048,0.093 0.048,0.327 0,0.42 -17.643,34.447 -52.322,57.074 -91.347,57.074 -12.362,0 -24.29,-2.274 -35.378,-6.475l-8.385 8.385c13.496,5.802 28.281,9.002 43.763,9.002 43.664,0 81.808,-25.446 101.059,-63.015 0.811,-1.607 1.236,-3.384 1.236,-5.184 0,-1.799 -0.425,-3.577 -1.236,-5.183l0 -0.001zm-57.295 -54.009l-0.005 -0.002c-13.496,-5.801 -28.279,-9 -43.759,-9 -43.664,0 -81.808,25.446 -101.059,63.015 -0.811,1.607 -1.236,3.384 -1.236,5.184 0,1.8 0.425,3.577 1.236,5.183 8.897,17.359 21.821,32.123 37.456,42.987l7.852 -7.852 12.699 -12.699c-5.123,-7.967 -8.096,-17.447 -8.096,-27.621 0,-28.243 22.905,-51.148 51.148,-51.148 11.261,0 20.639,2.843 28.151,7.566l7.227 -7.227 8.386 -8.386zm-12.987 43.85c2.307,4.619 3.608,9.83 3.608,15.345 0,18.99 -15.395,34.385 -34.385,34.385 -5.515,0 -10.726,-1.301 -15.345,-3.608l6.212 -6.213c2.844,1.058 5.921,1.637 9.133,1.637 14.471,0 26.201,-11.73 26.201,-26.201 0,-3.212 -0.579,-6.289 -1.637,-9.133l6.213 -6.212zm-30.777 -19.04c5.515,0 10.726,1.3 15.345,3.609l-46.121 46.121c-2.309,-4.619 -3.609,-9.83 -3.609,-15.345 0,-3.012 0.389,-5.932 1.116,-8.716 2.992,2.397 6.787,3.831 10.919,3.831 9.653,0 17.479,-7.826 17.479,-17.479 0,-4.127 -1.432,-7.92 -3.824,-10.911 2.777,-0.723 5.691,-1.11 8.695,-1.11zm91.307 -53.064l-174.898 174.898 -7.716 0 174.899 -174.898 7.715 0z" class=""></path></svg>';


  var bviElementList = document.querySelectorAll('.bvi-display');
  for (let bviElement of bviElementList) {
    bviElement.classList.add('bvi-display-none');
  }

  root.style.setProperty('--main-color', '#373737');
  root.style.setProperty('--btn-color', '#000');
  root.style.setProperty('--second-color', '#000');
  root.style.setProperty('--second-color-font', '#808080');
  root.style.setProperty('--second-color-font', '#000');
  root.style.setProperty('--second-color-font-active', '#626262');
  //document.logo.src = "/themes/medstudio/assets/images/logo_medstudio.svg";


}

function colorStandart() {
  //console.log('colorStandart');
  document.querySelector('.bvi-txt').innerHTML = "Версия сайта для&nbsp;слабовидящих";

  document.querySelector('.svg-eye').innerHTML = '<svg aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" class="bvi-svg-eye"><path fill="currentColor" d="M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z" class=""></path></svg>';





  document.body.style.fontSize = fontSizeStart + "px";

  var bviElementList = document.querySelectorAll('.bvi-display');
  for (let bviElement of bviElementList) {
    bviElement.classList.remove('bvi-display-none');
  }

  // root.style.setProperty('--main-color', '#373737');
  // root.style.setProperty('--btn-color', '#C9302C');
  // root.style.setProperty('--second-color', '#808080');
  // root.style.setProperty('--second-color-font', '#808080');
  // root.style.setProperty('--second-color-font-active', '#626262');



  root.style.setProperty('--bg-html-color', ' #fff');
  root.style.setProperty('--bg-html-second', ' #fafafa');
  root.style.setProperty('--main-color', ' #373737');
  root.style.setProperty('--btn-color', '#70a3d0');
  root.style.setProperty('--btn-hover', ' #566BAF');
  root.style.setProperty('--elem-color', ' #70a3d0');
  root.style.setProperty('--elem-hover-color', ' #566BAF');
  root.style.setProperty('--second-color', ' #808080');
  root.style.setProperty('--second-color-font', ' #808080');
  root.style.setProperty('--second-color-font-active', ' #626262');
  root.style.setProperty('--bg-color-light', ' #edeeeb');
  root.style.setProperty('--hover-bg', ' #f8f8f8');
  root.style.setProperty('--tin-line-color', ' rgba(0, 0, 0, 0.08)');
  root.style.setProperty('--alert', ' #ff0000');
  root.style.setProperty('--white', ' #fff');

}

function ExitBvi() {
  bvi = false;
  colorStandart();
  delete_cookie("bvi");
  delete_cookie("bvi-font-size");
  document.body.style.fontSize = 16 + "px";
  // window.speechSynthesis.speak(new SpeechSynthesisUtterance("Обычная версия сайта"));
  document.querySelector('header').style.borderBottom = "none";
  panelBvi.remove();
  f_restart();
}

/* ---------  версия для слабовидящих ---------  */

function twoRow_slider(swiperContainer, effect_, delay_) {
  alert('функция twoRow_slider отключена');
  /*
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 3,
        slidesPerColumn: 2,
        spaceBetween: 30,
        slidesPerColumnFill: 'row',
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });
      */
}



function top_slider(swiperContainer, effect_ = 'fade', delay_ = 5000) {


  // let slider = document.querySelector('.swiper-slider-top');
  var swiper = new Swiper(swiperContainer, {
    // navigation: {
    //   nextEl: '.swiper-button-next',
    //   prevEl: '.swiper-button-prev',
    // },
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },

    autoplay: {
      delay: delay_,
      //  delay: 5000,
      disableOnInteraction: true,
    },

    loop: true,
    slidesPerGroup: 1,
    // effect: effect_,

    // spaceBetween: 30,
    // grabCursor: true,
    // effect: "slide",
    // effect: "cube",
    // effect: "coverflow",
    effect: effect_,
    fadeEffect: {
        crossFade: true
      },

  });

}

// console.log('var out = '+loop_);


function f_slider(sliderCount_, spaceBetween_, swiperContainer, maxWidth, swiper_button_prev, swiper_button_next, slidesPerGroup_, slidesPerColumn_) {

  var slidesPerColumn_ = slidesPerColumn_ ? slidesPerColumn_ : 1;
  var slidesPerColumnFill_ = slidesPerColumn_ == 1 ? 'column' : 'row';

  // console.log("___ f_slider из medstudio.js ___");


  let button_prev = swiper_button_prev;
  let button_next = swiper_button_next;
  let sliderCount = sliderCount_; //сколько слайдов на экране если ширина слайда статична
  let spaceBetween = spaceBetween_; // расстояние между слайдами
  let slider = document.querySelector(swiperContainer);
  let btn = document.querySelector('.swiper-slider');
  // let realCount = slider.querySelectorAll('.card-person').length;
  let realCount = slider.querySelectorAll('.swiper-slide').length;
  if (realCount < sliderCount) { sliderCount = realCount };

  //let Slide = slider.querySelectorAll(".card-person-slider");

  // let _in = btn.querySelectorAll(".in");
  // let _out = btn.querySelectorAll(".out");

  let widthSlider = slider.clientWidth;
  let widthParent = slider.parentNode.clientWidth;
  let widthRow = slider.parentNode.parentNode.parentNode.parentNode.clientWidth;

  let widthSlide = (widthSlider - spaceBetween * (sliderCount - 1)) / sliderCount
  // console.log(widthSlide + " возможная ширина слайда");

  if (maxWidth !== 0) {

    if (widthSlide >= maxWidth) {
      widthSlide = maxWidth;
      slider.style.width = widthSlide * sliderCount + (sliderCount - 1) * spaceBetween + "px";

    }
  } else {
    widthSlide = widthRow;
  }


  // console.log(button_prev + " button_prev");
  // console.log(widthRow + " ширина row");
  // console.log(widthParent + " ширина роидителя Slider");

  // console.log(widthSlider + " ширина слайдера");
  // console.log(widthSlide + " установленая ширина слайда");
  // console.log(maxWidth + " максимально разрешенная ширина слайда");
  // console.log(realCount + " число слайдов в слайдере");


  slider.style.margin = 0;

  if (widthParent - widthSlider > 10) {
    slider.parentNode.querySelector(button_next).style.position = "relative";
    slider.parentNode.querySelector(button_prev).style.position = "relative";

  } else {
    slider.parentNode.querySelector(button_next).style.position = "absolute";
    slider.parentNode.querySelector(button_prev).style.position = "absolute";
  }

  switch (sliderCount) {
    case 1:
      var breakpointsCount_1 = 1;
      var breakpointsCount_2 = 1;
      var breakpointsCount_3 = 1;
      var breakpointsCount_4 = 1;
      break;

    case 2:
      var breakpointsCount_1 = 1;
      var breakpointsCount_2 = 2;
      var breakpointsCount_3 = 2;
      var breakpointsCount_4 = 2;
      break;

    case 3:
      var breakpointsCount_1 = 1;
      var breakpointsCount_2 = 2;
      var breakpointsCount_3 = 3;
      var breakpointsCount_4 = 3;
      break;

    case 4:
      var breakpointsCount_1 = 1;
      var breakpointsCount_2 = 2;
      var breakpointsCount_3 = 3;
      var breakpointsCount_4 = 4;
      break;

    case 5:
      var breakpointsCount_1 = 1;
      var breakpointsCount_2 = 2;
      var breakpointsCount_3 = 4;
      var breakpointsCount_4 = 5;
      break;

    default:
      var breakpointsCount_1 = 1;
      var breakpointsCount_2 = 2;
      var breakpointsCount_3 = 4;
      var breakpointsCount_4 = sliderCount_;
  }


  // slidesPerGroup



  if (slidesPerGroup_ > 0) {

    if (slidesPerGroup_ > breakpointsCount_1) {
      var slidesPerGroup_1 = breakpointsCount_1;
    } else {
      var slidesPerGroup_1 = slidesPerGroup_;
    }

    if (slidesPerGroup_ > breakpointsCount_2) {
      var slidesPerGroup_2 = breakpointsCount_2;
    } else {
      var slidesPerGroup_2 = slidesPerGroup_;
    }

    if (slidesPerGroup_ > breakpointsCount_3) {
      var slidesPerGroup_3 = breakpointsCount_3;
    } else {
      var slidesPerGroup_3 = slidesPerGroup_;
    }

    if (slidesPerGroup_ > breakpointsCount_4) {
      var slidesPerGroup_4 = breakpointsCount_4;
    } else {
      var slidesPerGroup_4 = slidesPerGroup_;
    }

  } else {
    var slidesPerGroup_1 = breakpointsCount_1;
    var slidesPerGroup_2 = breakpointsCount_2;
    var slidesPerGroup_3 = breakpointsCount_3;
    var slidesPerGroup_4 = breakpointsCount_4;
  }

  let mySwiper = new Swiper(slider, {


    // Optional parameters
    loop: false,
    // slideToClickedSlide: true,
    // centeredSlides: true,
    slidesPerView: sliderCount,
    //slidesPerView: 'auto', // все слайды на экран если ширина слайде расчитывается
    slidesPerGroup: sliderCount,
    spaceBetween: spaceBetween,
    effect: "slide",
    updateOnImagesReady: true,
    preloadImages: false,
    lazy: true,
    centeredSlides: false,
    watchSlidesVisibility: true,

    // lazy: {
    //   loadPrevNext: true,
    //   loadPrevNextAmount: 2,
    //   loadOnTransitionStart: true,
    // },


    slidesPerColumn: slidesPerColumn_,
    slidesPerColumnFill: slidesPerColumnFill_,


    // grabCursor: true,

    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },

    /*
        autoplay: {
        delay: 1000,
        disableOnInteraction: true,
        },
        loop: true,
        */

    // Navigation arrows
    navigation: {
      nextEl: button_next,
      prevEl: button_prev,
    },

    // And if we need scrollbar
    scrollbar: {
      // el: '.swiper-scrollbar',
    },




    on: {
      init: function() {
        // console.log('swiper initialized');
        this.autoplay.stop();

      },

      imagesReady: function() {
        //  swiper.update();
        //this.el.classList.remove('loading');
      }

    },


    breakpoints: {
      // when window width is >= 320px
      240: {
        slidesPerView: breakpointsCount_1,
        slidesPerGroup: slidesPerGroup_1,
        slidesPerColumn: slidesPerColumn_,
        slidesPerColumnFill: slidesPerColumnFill_,
        spaceBetween: spaceBetween,
        // spaceBetween: 0,
        // width: 240
      },
      660: {
        slidesPerView: breakpointsCount_2,
        slidesPerGroup: slidesPerGroup_2,
        slidesPerColumn: slidesPerColumn_,
        slidesPerColumnFill: slidesPerColumnFill_,
        spaceBetween: spaceBetween,

      },
      // when window width is >= 990px
      990: {
        slidesPerView: breakpointsCount_3,
        slidesPerGroup: slidesPerGroup_3,
        slidesPerColumn: slidesPerColumn_,
        slidesPerColumnFill: slidesPerColumnFill_,
        spaceBetween: spaceBetween,
      },
      // when window width is >= 1200px
      1200: {
        slidesPerView: breakpointsCount_4,
        slidesPerGroup: slidesPerGroup_4,
        slidesPerColumn: slidesPerColumn_,
        slidesPerColumnFill: slidesPerColumnFill_,
        spaceBetween: spaceBetween,
      }
    },


  })

} //end slider-person-card



// лайтбокс
//https://github.com/biati-digital/glightbox/blob/master/README.md
//https://github.com/blueimp/Gallery/blob/master/README.md

//Swiper js
//https://www.youtube.com/watch?v=OjVK055CTNI


// document.addEventListener("DOMContentLoaded", f_restart);

/* этот костыль запускает функции после отрисовки DOM */
var windowOnloadAdd = function(event) {
  if (window.onload) {
    window.onload = window.onload + event;
  } else {
    window.onload = event;
  };
};

windowOnloadAdd(function() {
  f_restart();
});

f_restart();

/* end этот костыль запускает функции после отрисовки DOM */
window.addEventListener("resize", f_restart);



function f_restart() {
  fontSize = Number(window.getComputedStyle(document.body).getPropertyValue('font-size').match(/\d+/)[0]);


  // console.log("размер шрифта страницы " + fontSize + 'px');
  menu_top();

}

function menu_top() {

  // console.log("_________ _________ _________ " + window.pageYOffset);

  let head_height = document.querySelector(".top_line").clientHeight + fontSize * 4;
  /* 4 - т.к. у шапки отступы по 2em сверху и снизу */
  // console.log("высота шапки " + head_height + 'px');

  // let w_screen = window.innerWidth;
  // let w_screen = document.body.clientWidth;
  // let w_screen = document.documentElement.clientWidth;

  let top_nav = document.querySelector('#top_nav');
  let div_panelBvi = document.querySelector('#div_panelBvi');
  let scroll_Y = window.pageYOffset;
  let panelBvi_height = div_panelBvi.clientHeight;
  let panelBvi = document.querySelector('.panelBvi');

  // if (window.innerWidth > 767.98) {
  //   document.querySelector('#menu__toggle').checked = false;
  // }

  // let w_screen = window.matchMedia('(max-width:767.98px)');
  // if (!w_screen.matches) {
  //   document.querySelector('#menu__toggle').checked = false;
  // }

  if (scroll_Y <= head_height) {
    top_nav.style.paddingLeft = 0 + "px";
    top_nav.style.paddingRight = 0 + "px";
    top_nav.classList.remove('fixed-top-menu');

    document.querySelector('.patch-top_nav').style.display = 'none';
    top_nav.style.removeProperty("top");



    if (bvi) {
      div_panelBvi.style.paddingLeft = 0 + "px";
      div_panelBvi.style.paddingRight = 0 + "px";
      div_panelBvi.classList.remove('fixed-containerBvi');
      if (panelBvi) {
        panelBvi.classList.remove('panelBvi_lr');
      }

    }

  } else {
    top_nav.classList.add('fixed-top-menu');
    document.querySelector('.patch-top_nav').style.display = 'block';
    let width_container = document.querySelector('.container').offsetWidth;
    //console.log("ширина контейнера " + width_container + 'px');
    let padding_fixed_top_menu = (document.documentElement.clientWidth - width_container) / 2 + 15;
    top_nav.style.paddingLeft = padding_fixed_top_menu + "px";
    top_nav.style.paddingRight = padding_fixed_top_menu + "px";

    if (bvi) {
      div_panelBvi.classList.add('fixed-containerBvi');
      top_nav.style.top = panelBvi_height + "px";
      document.querySelector('.patch-top_nav').style.height = head_height + panelBvi_height + "px";
      // panelBvi.style.paddingLeft = 0;
      // panelBvi.style.paddingRight = 0;
      if (panelBvi) {
        panelBvi.classList.add('panelBvi_lr');
      }




      div_panelBvi.style.paddingLeft = padding_fixed_top_menu + "px";
      div_panelBvi.style.paddingRight = padding_fixed_top_menu + "px";


    } else {
      top_nav.style.top = 0;
      document.querySelector('.patch-top_nav').style.height = head_height + "px";
    }
  }
}

window.addEventListener('scroll', function() {
  menu_top();

});


function collapsTable(table, btn, duration, typeCollaps, typeExpand) {

  var CollapsElement = document.getElementById(table);
  var CollapsBtn = document.getElementById(btn);
  var full_height = CollapsElement.scrollHeight;

  if (full_height > CollapsElement.clientHeight) {
    // console.log('показать');

    animate({
      duration: duration,
      timing(timeFraction) {
        switch (typeExpand) {
          case 'easeOut':
            //console.log('easeOut');
            return Math.pow(timeFraction, 1 / (timeFraction * 5 + 2));
            break;

          case 'easeIn':
            //console.log('easeIn');
            return 1 - Math.sin(Math.acos(timeFraction));
            break;

          case 'log':
            return Math.pow(timeFraction, 3);
            break;

          default:
            //console.log('Linear');
            return timeFraction;
            break;
        }
      },
      draw(progress) {
        CollapsElement.style.height = progress * full_height + "px";
      }
    });

    CollapsBtn.innerHTML = "Спрятать цены<span></span>";
  } else {

    var h = full_height;

    //console.log('скрыть' + duration);

    animate({
      duration: duration,
      timing(timeFraction) {
        switch (typeCollaps) {
          case 'easeOut':
            return Math.pow(timeFraction, 1 / (timeFraction * 5 + 2));
            break;

          case 'easeIn':
            return 1 - Math.sin(Math.acos(timeFraction));
            break;

          case 'log':
            return Math.pow(timeFraction, 3);
            break;

          default:
            return timeFraction;
            break;
        }
      },
      draw(progress) {
        h = full_height - progress * full_height;
        CollapsElement.style.height = h + "px";
      }
    });

    CollapsBtn.innerHTML = "Показать все цены<span></span>";
  }

}




// слайдер в FAQ без jQuery + timeSet
function collapsElementFaqNativeTimeSet(idblock, id, hide_othe_answer, duration) {
  // console.log(idblock + ' ' + id + ' ' + hide_othe_answer + ' ' + duration)

  if (hide_othe_answer != true) {
    var CollapsElementList = document.getElementById(idblock).querySelectorAll('.faq');
    for (let ElemCollaps of CollapsElementList) {
      let full_height = ElemCollaps.querySelector('.answer').scrollHeight;
      if (full_height == ElemCollaps.querySelector('.answer').clientHeight) {
        let h = full_height;
        // console.log("скрыть всё");
        animate({
          duration: duration,
          timing(timeFraction) {
            return timeFraction;
            //return Math.pow(timeFraction, 3);
            //return Math.pow(timeFraction,1/(timeFraction*5+2))
            return Math.pow(timeFraction, 1 / (timeFraction * 10 + 2))
          },
          draw(progress) {
            h = full_height - progress * full_height;
            ElemCollaps.querySelector('.answer').style.height = h + "px";
          }
        });
      }
    }
    var RotateElementList = document.getElementById(idblock).querySelectorAll('.faq');
    for (let ElemRotate of RotateElementList) {
      ElemRotate.querySelector('.arrow').classList.remove('arrow-rotate');
    }
  }


  var CollapsElement = document.getElementById(id);
  var full_height = CollapsElement.querySelector('.answer').scrollHeight;
  if (full_height > CollapsElement.querySelector('.answer').clientHeight)


  {
    CollapsElement.querySelector('.arrow').classList.add('arrow-rotate');
    animate({
      duration: duration,
      timing(timeFraction) {
        return timeFraction;
        // return Math.pow(timeFraction, 3);
        return 1 - Math.sin(Math.acos(timeFraction));
      },
      draw(progress) {
        CollapsElement.querySelector('.answer').style.height = progress * full_height + "px";
      }
    });

  } else {

    let h = full_height;
    // console.log('скрыть одно');
    animate({
      duration: duration,
      timing(timeFraction) {
        return timeFraction;
        // return Math.pow(timeFraction, 3);
        return Math.pow(timeFraction, 1 / (timeFraction * 5 + 2))
      },
      draw(progress) {
        h = full_height - progress * full_height;
        CollapsElement.querySelector('.answer').style.height = h + "px";
      }
    });

  }
}
//end слайдер в FAQ без jQuery + timeSet



function popup() {

  var lightbox = GLightbox({
    selector: selector,
    // selector: 'qqq',
  });
  //console.log('selector ' + selector);
}

function animate({ timing, draw, duration }) {
  let start = performance.now();
  requestAnimationFrame(function animate(time) {

    // timeFraction изменяется от 0 до 1
    let timeFraction = (time - start) / duration;
    if (timeFraction > 1) timeFraction = 1;

    // вычисление текущего состояния анимации
    let progress = timing(timeFraction);
    draw(progress); // отрисовать её
    if (timeFraction < 1) {
      requestAnimationFrame(animate);
    }
  });
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



/*-------------------------------------------------------*/
// Parallax
/*-------------------------------------------------------*/
function updatePositionParallax() {

  document.querySelectorAll('.orion-bg-parallax').forEach(orion_parallax => {

    let para_position = orion_parallax.getBoundingClientRect().top;
    let el_height = orion_parallax.offsetHeight;
    // let el_height = orion_parallax.clientHeight;
    // let screen_height = window.innerHeight;
    let screen_height = document.documentElement.clientHeight;
    let para_bg_percent = (50 / (el_height + screen_height)) * (document.body.scrollTop + screen_height - para_position);
    // let para_bg_percent = ( 100 / (el_height + screen_height)) * (window.pageYOffset + screen_height - para_position)/2;

    if (para_bg_percent > 0 && para_bg_percent < 100) {
      orion_parallax.style.backgroundPositionY = para_bg_percent + "%";
    }
    //console.log(para_bg_percent);

  });

}

window.onload = function() {
  if (document.querySelectorAll('.orion-bg-parallax').length > 0) {
    window.addEventListener('scroll', updatePositionParallax, false);
    updatePositionParallax();
  }


}


/*-------------------------------------------------------*/
// END Parallax
/*-------------------------------------------------------*/


//console.log("medstudio.js загружен");