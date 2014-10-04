$(document).ready( function () {

  if ( document.referrer == null || document.referrer.indexOf(window.location.hostname) < 0 ) {
    $('.bigtext').fadeIn("slow");
}
  else
    $('.bigtext').css({display: "block"});

  $('.longtext').readmore();

  $(window).scroll( function () {
    $("footer").fadeIn("slow");
  });

  // PRACTICE
  //   $("h2").css({color: "red"});
  //
  //   $("h1").hover(function () {
  //     $(this).css({color: "red"});
  //    $(this).css("font-size", "1em");
  //  });

  $('a[href^="#"]').click(function (){
    $('html, body').animate({scrollTop: $( $.attr(this, 'href') ).offset().top}, 900);
      return false;
  });

});
