$(function () {

  // retina images
  $('.work img').retina('@2x');

  // setup image sliders
  $('.slides').slidesjs({
    width: 760,
    height: 640,
    navigation: false,
    pagination: {
      effect: 'fade'
    },
    effect: {
      fade: {
        speed: 400,
        crossfade: true
      }
    }
  });

  // orchestrate apple fall
  $('#apple').delay(700)
    .animate({ top: '78px' }, 400, 'easeOutBounce', function() {
      setTimeout(function() {
        $('h1').css('opacity', 1);

        setTimeout(function() {
          $('#main').css('opacity', 1);
          // unfix header
          $('#header').removeClass('fixed');
        }, 1500);
      }, 400);
    });

});
