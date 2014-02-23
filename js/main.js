$(function() {
  // retina images
  $('.work figure img').retina('@2x');

  // setup image sliders
  $('.slides').slidesjs({
    width: 760,
    height: 640,
    navigation: {
      active: false,
      effect: 'fade'
    },
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
});

$('#boot').load(function () {
  $('body').removeClass('preload');
  // orchestrate apple fall
  $('#apple, #root').show();
  $('#apple').delay(700)
    .animate({ top: '78px' }, 400, 'easeOutBounce', function() {
      setTimeout(function() {
        $('h1').css('opacity', 1);

        setTimeout(function() {
          $('#main').css('opacity', 1);
          $('#header').removeClass('fixed'); // unfix header
        }, 600);
      }, 400);
    });
});
