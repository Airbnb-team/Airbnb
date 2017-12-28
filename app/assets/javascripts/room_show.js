$(function() {
  var $win = $(window),
      $main = $('.col-md-6 .room-showpage-reservation-col'),
      $nav = $('.room-showpage-reservation'),
      navHeight = $nav.outerHeight(),
      footerHeight = $('.row').outerHeight(),
      documentHeight = $(document).height(),
      navPos = $nav.offset().top,
      fixedClass = 'is-fixed',
      hideClass = 'is-hide';

  $win.on('load scroll', function() {
    var value = $(this).scrollTop();
        scrollPos = $win.height() + value;
    if ( value > navPos ) {
      if ( documentHeight - scrollPos <= footerHeight ) {
        $nav.addClass(hideClass);
      } else {
        $nav.removeClass(hideClass);
      }
      $nav.addClass(fixedClass);
      $main.css('margin-top', navHeight);
    } else {
      $nav.removeClass(fixedClass);
      $main.css('margin-top', '0');
    }
  });
$(function(){
  var show = $(".room-showpage-price").text().split('円')
  price_with_mark = show[0];
  price_itself = price_with_mark.replace(/¥|,/g, "");
  var page_coming_price = $(".coming_price_with_mark");
  console.log(price_itself);
  var days = 1000 * 60 * 60 * 24;
  var todaysDate = new Date(2017,8,12);
  var date2 = new Date(2017,8,31)
  var result = date2 - todaysDate
  var  dates_of_stay = result/days
  console.log(dates_of_stay);
  });
});

$(function(){
  $('a[href^=#]').click(function(){
    var speed = 4000;
    var href = $(this).attr("href");
    var target = $(href == "#" || href == "" ? 'html' :href);
    var position = target.offset().top;
    $('body, html').animate({scrollTop:position}, speed, 'slow');
    return false;
  });
});

