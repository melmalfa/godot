$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  var $userInfo    = $(".user-info"),
      var $xButton     = $(".x"),
      var $heartButton = $(".heart"),
      var $matchesContainer = $(".matches-container");

  var ageInYears = function(){ return Math.floor((Math.random() * 25) + 23) };

  var getNewUser = function(){
  // $xButton.on('click', function(){
    $.ajax({
        url: "http://api.randomuser.me",
        type: "GET",
        dataType: "json"
     }).done(function(data){
      var user = data["results"][0]["user"];
      // pictureURL = user["picture"]["medium"];
      name = user.name.first + " " + user.name.last

      var tinderTemplateSource = $("#tinder-template").html();
      var generateUserHTML = _.template(tinderTemplateSource);
      var userHTML = generateUserHTML({ image_url: pictureURL, name: name, age: ageInYears() });
      var caughtUser = $userInfo.html(userHTML);
    });
    $.ajax({
        url: "http://thecatapi.com/api/images/get?format=src&type=gif",
        type: "GET",
        dataType: "json"
     }).done(function(data){
      pictureUrl = data;

      var tinderTemplateSource = $("#tinder-template").html();
      var generateUserHTML = _.template(tinderTemplateSource);
      var userHTML = generateUserHTML({ image_url: pictureURL, name: name, age: ageInYears() });
      var caughtUser = $userInfo.html(userHTML);
    });

   };

   var moveUser = function(){
   var clearTemplateSource = $("#clearfix-template").html();
   var generateClearTemplate = _.template(clearTemplateSource);
   var clearFix = generateClearTemplate({img_src: pictureURL, src_text: name });
   $matchesContainer.append(clearFix);
  }
   $xButton.on('click', getNewUser);
   $heartButton.on('click', moveUser);

});

// img src="http://thecatapi.com/api/images/get?format=src&type=gif













// $.ajax({





