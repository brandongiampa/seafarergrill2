$(document).ready(function(){

  if (isIndex == true) {
    $('body').css("overflowY", "hidden");
  }
  else {
    $('body').css("overflowY", "visible");
  }
});

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
      foodPic +
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
      foodPic +
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
      foodPic +
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
  console.log($(this).data());
});
