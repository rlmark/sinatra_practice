$(document).ready( function () {

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
