$(function() {
  var $win = $(window),
      $main = $('.col-md-6 .room-showpage-reservation-col'),
      $nav = $('.room-showpage-reservation'),
      navHeight = $nav.outerHeight(),
      footerHeight = $('.room-location').outerHeight(),
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
