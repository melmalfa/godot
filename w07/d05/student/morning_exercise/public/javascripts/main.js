// to toggle something:

var wayNoWayToggle = function(event) {
  //get the text of the button
  var buttonText = $(event.target).text();
  //if the text is way
  if ( buttonText === "way") {
    // set the text to no way
    $(event.target).text("no way");
  } else {
    // set the text to way
    $(event.target).text("way");
  }
};

// $(".way-no-way") refers to the button class
$(".way-no-way").on("click", wayNoWayToggle);

var hideW = function(event) {
  $(event.target).addClass("hidden");
  $("input.input-name").removeClass("hidden");
  var sp = $(event.target).text();
  // var sp = $("span.name").text();
  //we use val to access the value of input fields
  $("input.input-name").val(sp);
};

$("span.name").on("click", hideW);

var updateName = function(event) {
  // if we hit return
  if ( event.keyCode == 13) {
  $(event.target).addClass("hidden");
  $("span.name").removeClass("hidden");
  var sp1 = $(event.target).text();
  $("span.name").text(sp1);
  }
};

$("input.input-name").on("keypress",updateName);












