$(document).ready( function () {

  //Fades in counter only on first visit to site, else no animation
  if ( document.referrer === null || document.referrer.indexOf(window.location.hostname) < 0 ) {
    $('.bigtext').fadeIn("slow");
}
  else
    $('.bigtext').css({display: "block"});

  //Clips posts and allows user to expand posts
  if (window.location.pathname === '/') {
    $('.longtext').readmore();
  }
  else {
    $('.longtext').readmore('destroy');
  }

  //Footer fades in when scrolling down, fades out at top.
  $(window).scroll( function () {
    if ( $(window).scrollTop() <= 0 ) {
      $( 'footer' ).fadeOut("slow");
    }
    else
      {
      $("footer").fadeIn("slow");
      }
    });

  //All internal links get scroll animation
  $('a[href^="#"]').click(function (){
    $('html, body').animate({scrollTop: $( $.attr(this, 'href') ).offset().top}, 900);
      return false;
  });

  //Carousel of images
  $('.moreposts').slick({
	  slidesToShow: 5,
    slidesToScroll: 5,
    arrows: true,
    draggable: false
	});

});

  // //Show only first five elements on home page
  // if (window.location.pathname === '/') {
  //   // console.log("I am at home page");
  //   $(".0").show();
  //   $(".arrows").show();
  //   $(".1").css(display: "none" );
  //   }
  // else
  //   {console.log("This isn't working");}
  //

  // PRACTICE
  //   $("h2").css({color: "red"});
  //
  //   $("h1").hover(function () {
  //     $(this).css({color: "red"});
  //    $(this).css("font-size", "1em");
  //  });
