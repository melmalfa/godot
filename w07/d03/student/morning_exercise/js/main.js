  var h = document.querySelector("head")

var loadJS = function() {
  var s = document.createElement("script");
  s.setAttribute("src", "js/app.js");
  h.appendChild(s);
}
loadJS();

var loadCSS = function() {
  var l = document.createElement("link");
  l.setAttribute("href", "css/style.css", "rel", "stylesheet");
  // l.setAttribute("rel", "stylesheet");
  h.appendChild(l);
}
loadCSS()

var loadStyle = function() {
  var style = document.createElement("style");
  // sTyle.appendAttribute("text", "javascript");
  style.textContent = "(body {background: blue })";
  h.appendChild(style)
}
loadStyle()

var colorify = function() {
  var bColor = window.prompt("enter a color");
   document.body.style.backgroundColor = bColor;
}
colorify()

var jQueryify = function() {
  var sc = document.createElement("script")
  sc.setAttribute("src", "https://code.jquery.com/jquery-1.11.2.min.js");
  h.appendChild(sc);
}
jQueryify()

var lodashify = function() {
 var scr = document.createElement("script");
 scr.setAttribute("src", "https://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js");
  h.appendChild(scr);
}
lodashify

// Take a look at the code in js/adventure.js What other two libraries will your adventureTime function need to load in the DOM before it can run?

var adventureTime = function() {
  var scri = document.createElement("script");
 scri.setAttribute("src", "js/adventure.js");
  h.appendChild(scri);
}
adventureTime()

// Update jQuerify and LoDashyify to append messages to the DOM that say they've been loaded and use setTimeout to remove the message from the DOM after 5 seconds.

