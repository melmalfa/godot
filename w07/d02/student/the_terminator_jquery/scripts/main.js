console.log("main.js linked");
$(document).ready(function(){
  var inhabitants = $("h1");
  $(inhabitants).text("Inhabitants of Los Angeles (1984)");
  cops = $(".cop");
  $(cops).css("color", "lightskyblue");
  $("div#los-angeles").append("<div class='terminator'></div>");
  var theOneTrueSarahConnor = $("#the-one-true-sarah-connor");
  $(theOneTrueSarahConnor).addClass("badass");
  var poorSouls = $(".collateral-damage");
  //not sure the following removes them one by one, though according to the docs this format has an implicit each loop- does that mean it happens one by one?
  $(poorSouls).remove("li");
});
