$(document).ready( function () {

    $('.longtext').readmore();

    $(window).scroll( function () {
      console.log("This is working");
      $("footer").css({visibility: "visible"});
    });

  // PRACTICE
  //   $("h2").css({color: "red"});
  //
  //   $("h1").hover(function () {
  //     $(this).css({color: "red"});
  //    $(this).css("font-size", "1em");
  //  });

});
