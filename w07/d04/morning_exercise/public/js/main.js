// var bang = function(event){
//   console.log("BANG!");
// };

var $body = $("body")
removeShot = function(){
  $body.removeClass("shot");
}

var shotCount = 0;

var bang = function(event){
    if ( shotCount < 10 ) {
    $body.addClass("shot");
    setTimeout(removeShot, 3000);
    shotCount++;
    } else {
    $body.addClass("dead");
    $("img").addClass("hidden");
    }
  };

var appendCast = function(){
  var $ul = $("#cast");
  var $li, actorName;
  for (prop in cast) {
  debugger
  actorName = cast[prop].actor;
  $li = $("<li>").text(actorName);
  $ul.append($li);
  }
}


var keypressHandler = function(event) {
  console.log(event.keyCode);
  var letter = String.fromCharCode(event.keyCode)
  console.log(leyter);
  if (letter === "c") {
    appendCast();
  }
}


// var bang = function(event){
//   if ( shotCount < 10 ) {}
//   $body.css("background-color","red");
//   setTimeout(backToWhite, 3000);
// } else {
//   $body.css("background-color","black");
//   $("img").addClass("hidden");
//   }
// };



// once the DOM has loaded
$(document).ready(function(){
  // attach event listener
  $(window).on("mousemove", bang);
  $(window).on("keypress", keypressHandler);

});


