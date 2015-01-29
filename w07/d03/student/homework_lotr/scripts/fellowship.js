console.log("followship.js loaded");

var $body = $("body");
var $lands = lands;


var makeMiddleEarth = function() {
  $("<section id=\"middle-earth\">");
  for ( var i = 0, len = lands.length; i < len; i++) {
    var $land = $("<article>");
    $land.addClass("land");
    $land.append("<h1>");
    var $h1 = $("h1");
    $h1.textContent("$lands[i]");
  }

}

setTimeout(makeMiddleEarth, 2000)
