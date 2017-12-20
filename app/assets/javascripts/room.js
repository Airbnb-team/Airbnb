// $(function() {
//   var $win = $(window),
//       $main = $('.Maincontent'),
//       $nav = $('.navbarfirst'),
//       $main1 = $('.right-box'),
//       navHeight = $nav.outerHeight(),
//       navPos = $nav.offset(),
//       fixedClass = 'is-fixed';
//       fixed2Class = 'is-fixed2';
//
//   $win.on('load scroll', function() {
//     var value = $(this).scrollTop();
//     // console.log();
//     // if ($(window).scrollTop() > 200){
//     //   $('.navbarfirst').addClass('is-fixed');
//     // } else{
//     //   $('.navbarfirst').removeClass('is-fixed');
//     // }
//     if ( value > navPos ) {
//       $nav.addClass(fixedClass);
//       $main.css('margin-top', navHeight);
//       $main1.addClass(fixed2Class);
//       // $main1.css('margin-top', navHeight);
//     } else {
//       $nav.removeClass(fixedClass);
//       $main.css('margin-top', '0');
//       $main1.removeClass(fixed2Class);
//       $main1.css('margin-top', '0');
//     }
//   });
// });
