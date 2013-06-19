$(function () {

  // orchestrate apple fall
  $('#apple').delay(700)
    .animate({ top: '78px' }, 400, 'easeOutBounce', function() {
      setTimeout(function() {
        $('h1').css('opacity', 1);
      }, 400);
    });

});
