require 'httparty'

module WeatherApiHelper

  def weather(location)
    state = location.split(",")[1]
    city = location.split(", ")[0].gsub(" ","_")
    weather_link = "http://api.wunderground.com/api/a8ab71c610424077/conditions/q/#{state}/#{city}.json"
    response = HTTParty.get(weather_link)
    temp_in_f = response["current_observation"]["temp_f"]
    "THE CURRENT TEMPERATURE IN #{city.gsub("_", " ").capitalize} IS: #{temp_in_f} F"
  end
end
