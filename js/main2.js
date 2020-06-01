/***********************************************************
Trying to eliminate jQuery for SEO purposes, but is very
difficult to emulate jQuery animations
************************************************************/

//setting up screen behavior between home and menu
document.addEventListener('DOMContentLoaded', setBackgroundMovable);

//setting up strings and where to put them
document.addEventListener('DOMContentLoaded',()=>{
  var contentLeft = 0;
  var contentRight = 0;
  var contentTop = 0;
  var contentBottom = 0;
  var foodName = "";
  var foodText = "";
  var foodPrice = "";
  var foodPic = "";
});
/*click x on modal and close*/
document.addEventListener('DOMContentLoaded',()=>{
  closeModal();
}));

function setBackgroundMovable() {
  if (isIndex){
    document.querySelector('body').style.overflowY = "hidden";
  }else {
    document.querySelector('body').style.overflowY = "visible";
  }
}
function closeModal() {
  $("#close-btn").on("click", function(){
    $("#menu-single-item").slideUp(400, function(){
      $(".opaque").fadeTo(200, 1);
    });
  })
}
