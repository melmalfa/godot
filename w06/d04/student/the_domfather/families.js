// create am event handler
// assign a event listener- add to thing we want to trigger
// click on the body
// make the background black
// make the text white

var body = document.querySelector("body");

var invertBody = function(event) {
  body.style.backgroundColor = "black";
  body.style.color = "white";
}

body.addEventListener("click", invertBody);

var clickEventHandler = function(event) {
  event.stopPropagation()   //stops event from bubbling up
// that changes te event.target to red
   event.target.style.backgroundColor = "red";
}

var sonny = document.querySelector("#sonny");
sonny.addEventListener("click", clickEventHandler);

// defne counter outside of the function
//because we don't want to redefine it every time
var counter = 0;
var burySonnyHandler = function(event) {
  //don't want to trigger the body click event
  event.stopPropagation();
  event.target.style.backgroundColor =
  red";
// if Sonny has been clicked 149 times
// remove him from the dom

//  // counter++;
//  // if (counter > 10) {
//  //   corleone.removeChild(sonny);
//   }
// }

sonny.addEventListener("click", burySonnyHandler)
