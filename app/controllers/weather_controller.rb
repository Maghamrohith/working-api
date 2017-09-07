class WeatherController <ApplicationController
 def search
  if params[:name]
  response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{params[:name]}&APPID=0dec6af6196597b36a44df8835d48372&units=metric")
      @result = JSON.parse(response.body)
    end
end
end
