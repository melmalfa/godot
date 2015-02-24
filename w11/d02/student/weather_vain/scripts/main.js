$(document).ready(function(){
  console.log("document ready");

  var $forecast = $("#forecast")


  $(".pure-button").on("click", function(e){
    $city = $("#pure-input-rounded").val();
    e.preventDefault();
    $.ajax({
    url: "http://api.openweathermap.org/data/2.5/weather",
    type: "GET",
    data: { q: $city, units: "imperial" },
    dataType: "json"
    }).done(function(data){
      var temp = data.main.temp
      // data['list'][0]['main']['temp']
      $forecast.append("In "+$city+" , it's "+temp+" degrees Farenheit.");
    });
  });

  // sets the day's date at the bottom of viewport
  var $date = $(".date");
  var currentDateString = moment().format('dddd, MMMM Do');
  $date.text(currentDateString);

});
