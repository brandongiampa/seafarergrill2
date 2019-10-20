//setting up screen behavior between home and menu
$(document).ready(function(){

  if (isIndex == true) {
    $('body').css("overflowY", "hidden");
  }
  else {
    $('body').css("overflowY", "visible");
  }
});

//setting up strings and where to put them
$( document ).ready(function(){
  var contentLeft = 0;
  var contentRight = 0;
  var contentTop = 0;
  var contentBottom = 0;
  var foodName = "";
  var foodText = "";
  var foodPrice = "";
  var foodPic = "";
})

/*click x on modal and close*/
$( document ).ready(function(){
  $("#close-btn").on("click", function(){
    $("#menu-single-item").slideUp(400, function(){
      $(".opaque").fadeTo(200, 1);
    });
  })
});
/*click background on modal and close*/
$( document ).ready(function(){

  $("#menu-single-item").on("click", function(e){

    contentLeft = $(".modal-content").offset().left;
    contentRight = $(".modal-content").offset().left + $(".modal-content").width();
    contentTop = $(".modal-content").offset().top;
    contentBottom = $(".modal-content").offset().top + $(".modal-content").height();

    console.log("X: " + e.clientX + ", Y: " + e.clientY);
    console.log("Left: " + contentLeft + ", Right: " + contentRight);
    console.log("Top: " + contentTop + ", Bottom: " + contentBottom);

    if ((e.clientX < contentLeft | e.clientX > contentRight) | (e.clientY < contentTop | e.clientY > contentBottom)) {
      $("#menu-single-item").slideUp(400, function(){
        $(".opaque").fadeTo(200, 1);
      })
    }
  })
});
/*click name, send info and slide modal down*/
$( document ).ready(function(){
  $(".menu-title a").on("click", function(e){
    e.preventDefault();
    foodName = this.textContent;
    foodPic = this.parentElement.previousElementSibling.innerHTML;
    foodPrice = this.parentElement.nextElementSibling.textContent;
    foodText = this.parentElement.nextElementSibling.nextElementSibling.getAttribute("value");
    $(".modal-text").html(
      '<img src="img/medium/' + foodPic.substring(32) +
      '<h1>' + foodName + '<span class="price">' + foodPrice + '</span></h1>' +
      '<p>' + foodText + '</p>'
    );
    $(".opaque").fadeTo(200, .2, function(){
      $("#menu-single-item").slideDown();
    })
  });
});
/*click More..., send info and slide modal down*/
$( document ).ready(function(){
  $(".menu-text a").on("click", function(e){
    e.preventDefault();
    foodName = this.parentElement.previousElementSibling.previousElementSibling.textContent;
    foodPic = this.parentElement.previousElementSibling.previousElementSibling.previousElementSibling.innerHTML;
    foodPrice = this.parentElement.previousElementSibling.textContent;
    foodText = this.parentElement.getAttribute("value");
    $(".modal-text").html(
      '<img src="img/medium/' + foodPic.substring(32) +
      '<h1>' + foodName + '<span class="price">' + foodPrice + '</span></h1>' +
      '<p>' + foodText + '</p>'
    );
    $(".opaque").fadeTo(200, .2, function(){
      $("#menu-single-item").slideDown();
    })
  });
});
/*click More..., send info and slide modal down*/
$( document ).ready(function(){
  $(".menu-pic a").on("click", function(e){
    e.preventDefault();
    foodName = this.parentElement.nextElementSibling.textContent;
    foodPic = this.innerHTML;
    foodPrice = this.parentElement.nextElementSibling.nextElementSibling.textContent;
    foodText = this.parentElement.nextElementSibling.nextElementSibling.nextElementSibling.getAttribute("value");
    $(".modal-text").html(
      '<img src="img/medium/' + foodPic.substring(19) +
      '<h1>' + foodName + '<span class="price">' + foodPrice + '</span></h1>' +
      '<p>' + foodText + '</p>'
    );
    $(".opaque").fadeTo(200, .2, function(){
      $("#menu-single-item").slideDown();
    })
  });
});
//set bg images
$( document ).ready(function(){
  //select all menu categories
  $('.menu-category').css("background-image", "img/" + $(this).data() + ".jpg");
});

//mobile food menu show-more/less variables
var textAbbr;
var textFull;/*
var showMore;
var showLess;*/

//mobile food-menu show more
$( document ).ready(function(){
  $('.show-more a').on('click', function(e){
    e.preventDefault();
    textAbbr = this.parentElement.parentElement;
    textFull = this.parentElement.parentElement.nextElementSibling;
    textAbbr.style.height = '0';
    textAbbr.style.visibility = 'hidden';
    textAbbr.style.position = 'absolute';
    textAbbr.style.top = '0';
    textAbbr.style.left = '0';
    textFull.style.visibility = 'visible';
    textFull.style.height = 'auto';
    textFull.style.position = 'static';
    textFull.children.style
  });
});
//mobile food-menu show less
$( document ).ready(function(){
  $('.show-less a').on('click', function(e){
    e.preventDefault();

    textAbbr = this.parentElement.parentElement.previousElementSibling;
    textFull = this.parentElement.parentElement;

    textFull.style.height = '0';
    textFull.style.visibility = 'hidden';
    textFull.style.position = 'absolute';
    textFull.style.top = '0';
    textFull.style.left = '0';
    textAbbr.style.position = 'static';
    textAbbr.style.visibility = 'visible';
    textAbbr.style.height = 'auto';
  });
});

//mobile menu open
$( document ).ready(function(){
  $('#open-menu-button').on('click', function(){
    $(this).fadeOut(50, function(){
      this.style.visibility = 'hidden';
      $('#main-nav-m').css("visibility", "visible");
      $('#main-nav-m').fadeIn(50, function(){
        $('#close-menu').fadeOut(1);
        $('#close-menu').css("visibility", "visible");
        $('#close-menu').fadeIn(50);
      });

    });
  });
});

//mobile menu close
$( document ).ready(function(){
  $('#close-menu').on('click', function(){
    $(this).fadeOut(50, function(){
      this.style.visibility = 'hidden';
      $('#main-nav-m').fadeOut(50 , function(){
        $('#main-nav-m').css("visibility", "hidden");
        $('#open-menu-button').css("visibility", "visible");
        $('#open-menu-button').fadeIn(50);
        $('#main-nav-m').css("visibility", "hidden");
      });

    });

  });
});

//expand info on mobile
$('.info-link-m a').on('click', function(e){
  e.preventDefault();/*
  console.log(this.parentElement.nextElementSibling);
  this.parentElement.nextElementSibling.style.visibility = 'visible';
  this.parentElement.nextElementSibling.style.height = 'auto';*/
  $(this).parent().next().toggleClass('pop-out-appear');
});
