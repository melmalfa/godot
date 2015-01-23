var mouseDepressed = false;

var body = document.querySelector("body");

var mouseIn = function(event) {
    event.target.setAttribute("class", "tile green");
  }

var mouseOut = function(event) {
    event.target.setAttribute("class", "tile");
  }

var canvas = document.querySelector(".canvas");
for (var i = 0; i < 805; i++) {
  var lots = document.createElement("div");
  lots.setAttribute("class", "tile");
  lots.addEventListener("mouseover", mouseIn);
  lots.addEventListener("mouseout", mouseOut);
  canvas.appendChild(lots);
}




