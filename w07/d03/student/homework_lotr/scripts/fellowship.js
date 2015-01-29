console.log("fellowship.js loaded");

var $body = $("body");
var $lands = lands;


// var makeMiddleEarth = function() {
//   $("<section id=\"middle-earth\">");
//   for ( var i = 0, len = lands.length; i < len; i++) {
//     var $land = $("<article>");
//     $land.addClass("land");
//     $land.append("<h1>");
//     var $landName = $("h1");
//     $landName.text($lands[i]);
//     $("#middle-earth").append($land)
//   }

// }

var makeMiddleEarth = function() {
  var $section = $("<section id=\"middle-earth\">");
  for ( var i = 0, len = lands.length; i < len; i++) {
    var $land = $("<article>");
    $land.addClass("land");
    var $h1 = $("<h1>");
    $land.append($h1);
    $h1.text(lands[i]);
    $section.append($h1);
  }
    $body.append($section);
}

setTimeout(makeMiddleEarth, 2000);
makeMiddleEarth()



//  I got stuck in the first problem and tried many different ways of configuring this for over 2 hours. Researched, experimented in the console.

// $nameLand = $("<h1>");
//       $nameLand.text(lands[i]);
