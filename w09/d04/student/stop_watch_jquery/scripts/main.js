console.log("main.js linked");
$(document).ready(function(){

  var start = $("#start")
  var reset = $("#reset")
  var pause = $("#pause")
  var timer = $("#timer")
  var time;

  var count = 0;
  var timerFun = function(){
    time =  setInterval(function(){
      timer.text("Time elapsed: "+count++);
      }, 1000)
    }

  start.on("click", timerFun);

  reset.on("click", function(){
    clearInterval(time);
    timer.text("Stop Watch");
    count = 0;
  });

  pause.on("click", function(){
    clearInterval(time);

  });

});

