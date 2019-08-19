$(document).ready(function() {
  $('.smooth a[href^="#"]').on('click', function(e) {
    e.preventDefault();

    var target;
    if (window.innerWidth > 900){
      target = this.hash;
    }
    else {
      target = this.hash +'-m';
    }

    var $target = $(target);

    //scroll and show hash
    $('html, body').animate({
      'scrollTop': $target.offset().top
    }, 1000, 'swing', function() {
      window.location.hash = target;
    });
  });
});
