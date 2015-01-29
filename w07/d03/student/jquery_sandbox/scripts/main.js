// the $ is a courtesy to other programmers to let them know that this object is a jquery object
// now this jQuery onject has a lot of method we can call on it.
// in jquery do not have to switch between query selector and queryselectorAll- it automatically selects all
//set attribute = .attr(2 arguments)
//in concole, when objects have [] around it, it means it is a jQuery object
// to select a non-jqury object, use .eq so instead of $lis[0]  can use %lis.eq(0)

// queries the DOM
$("ul")

// creating something in memory that we can manipulate
$("<ul>")

// assigns a jQuery variable name title to what elements have the id of title
var $title = $("#title")
$title.addClass("pleasant")


$title.attr("role", "page identification")


var $lis = $("li");
$lis.eq(0).css("color", "orange");

//creates something in memory. setting innertext to Bully . . .
var $newLi = $("<li>");
$newLi.text("Bully Repulsion");

//adds to every ul
$("ul").append($newLi);

var $tomBoy = $("<li class='tomboy' id='marpdarp'>");
$tomBoy.text("Hey Class");

$("ul").append($tomBoy);

//////////////////////fart store exercise

////says to go within the body element to find what it needs- as opposed to starting at document- saves time

var $body = $("body");
var $title = $body.find("#title");
var $allThePeas = $body.find("p");

$("h1").addClass("classy").text("The Fart Store").css("font-size", "8em");

$body.addClass("backdrop");
// $("body").addClass("backdrop");

$("p").first().text("- Established 2014 -").addClass("sub-head");
// $allThePeas.eq(0) . . .

var $secondP = $("p").first().next()

$secondP.html("Everything You Need to Start <span>Farting</span> Around");
// secondp = $allThePeas.eq(1).html . . .

$("h2").remove();
$("ul").remove();

$("p").addClass("classy");
// $allThePeas.addClass("classy");

$("<div></div>").addClass("product-container");
// var $container = $("<div class=\"product-container|>");
//  the < and > here mean create (carrots)

for(var i = 0; i < 8; i++) {
  var newJar = $("<div class=\"jar\">");
  //  the < and > here mean create (carrots)
  $container.append(newJar);
}
$body.append($container);

$secondP.after().add($container);

var $button = $("<button>Sample the Product</button?").attr("id", "sample-button");
$container.after($button;)

$button.on("click", function() {
  var $div = $('<div class="product">')
}
  $div.fadeIn("slow", function(){
    setTimeout( function(){ $div.fadeOut("slow"); }, 5000);
  )}






