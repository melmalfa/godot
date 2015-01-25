var mouseDepressed = false;

var body = document.querySelector("body");

var colors = ["red", "goldenrod", "blue"];

var mouseIn = function(event) {
    event.target.setAttribute("class", "tile green");
  }

var mouseOut = function(event) {
    event.target.setAttribute("class", "tile");
  }

var canvas = document.querySelector(".canvas");

var reSet = document.querySelector(".reset");

canvas.addEventListener("mousedown",(mouseDepressed = true));
canvas.addEventListener("mouseup",(mouseDepressed = false));

for (var i = 0; i < 805; i++) {
  var lots = document.createElement("div");
  lots.setAttribute("class", "tile");
  lots.addEventListener("mouseover", mouseIn);
  canvas.appendChild(lots);
  if (mouseDepressed = false) {
    lots.addEventListener("mouseout", mouseOut);
  }
}


reSet.addEventListener()
//i don't think this worked
// var mouseDown = function(event) {
//   event.target(mouseDepressed = "true")
// }

//this did not work:
// var mouseOut = function(event) {
//   if mouseDepressed = false;
//     event.target.setAttribute("class", "tile");
//   else
//   }




// original before part 3
// for (var i = 0; i < 805; i++) {
//   var lots = document.createElement("div");
//   lots.setAttribute("class", "tile");
//   lots.addEventListener("mouseover", mouseIn);
//   lots.addEventListener("mouseout", mouseOut);
//   canvas.appendChild(lots);
// }







