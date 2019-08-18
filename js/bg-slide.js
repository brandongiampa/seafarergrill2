document.onmousemove = function() {
  let x = window.event.pageX;
  let y = window.event.pageY;
  let bg = document.getElementById("hero-image");
  let width = window.outerWidth;
  let height = window.outerHeight;

  if (y <= height) {
    let scrollX = x/width * 14;
    let scrollY = y/height * 14;
    bg.style.left = 0 - scrollX + "px";
    bg.style.top = 0 - scrollY + "px";
  }
}
