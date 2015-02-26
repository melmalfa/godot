$("document").ready(function(){
  console.log("document ready");

  greeter = $("#greeter")

  greeter.on('click', function(){
    greeter.text("Hello with JS");
  });

});
