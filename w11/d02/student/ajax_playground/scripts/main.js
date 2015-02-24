$(document).ready(function(){
  console.log("document ready");

  // caches reference to body element
  var $body = $("body");
  $("#random-user-btn").on("click", function(){
    $.ajax({
        url: "http://api.randomuser.me",
        type: "GET",
        dataType: "json"
      }).done(function(data){
      var user = data["results"][0]["user"];
      var pictureUrl = user["picture"]["medium"];
      var image = $("<img>").attr("src", pictureUrl);
      $("body").append(image);
  // debugger
    });
  });

  $("#female-user-btn").on("click", function(){
  $.ajax({
    url: "http://api.randomuser.me",
    type: "GET",
    // client-side params hash
    //best to make a function for the data info you want to pass in
    data: { gender: "female" },
    dataType: "json"
      }).done(function(data){
      var user = data["results"][0]["user"];
      var pictureUrl = user["picture"]["medium"];
      var image = $("<img>").attr("src", pictureUrl);
      $("body").append(image);
    });
  });

   $("#male-user-btn").on("click", function(){
    $.ajax({
    url: "http://api.randomuser.me",
    type: "GET",
    // client-side params hash
    //best to make a function for the data info you want to pass in
    data: { gender: "male" },
    dataType: "json"
      }).done(function(data){
      var user = data["results"][0]["user"];
      var pictureUrl = user["picture"]["medium"];
      var image = $("<img>").attr("src", pictureUrl);
      $("body").append(image);
    });
  });


});




