$(document).ready( function () {

  //Fades in counter only on first visit to site, else no animation
  if ( document.referrer == null || document.referrer.indexOf(window.location.hostname) < 0 ) {
    $('.bigtext').fadeIn("slow");
}
  else
    $('.bigtext').css({display: "block"});

  //Clips posts and allows user expand posts
  $('.longtext').readmore();

  //Fade in footer
  $(window).scroll( function () {
    $("footer").fadeIn("slow");
  });

  //All internal links get scroll animation
  $('a[href^="#"]').click(function (){
    $('html, body').animate({scrollTop: $( $.attr(this, 'href') ).offset().top}, 900);
      return false;
  });

});


  // PRACTICE
  //   $("h2").css({color: "red"});
  //
  //   $("h1").hover(function () {
  //     $(this).css({color: "red"});
  //    $(this).css("font-size", "1em");
  //  });
