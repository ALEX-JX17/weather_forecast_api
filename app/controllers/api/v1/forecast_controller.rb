class Api::V1::ForecastController < ApplicationController
    require 'uri'
    require 'net/http'

    def query
        @response = reservamos_query(params[:city])
        #As was required the response only will include Mexican Cities
        @response = @response.select do |place| 
            place['result_type'] == 'city' && 
            place['country'] == 'México'
        end
        #The daily weather forecast api returned 8 days values, not only for 7 days, 
        #that is why 8 days forecast will be returned
        @response.each do |city|
            city['daily_weather_forecast']  = OpenWeather_query(city)['daily']
        end
       
        render :query
    end

    private
    #RESERVAMOS API
    #Get places information
    def reservamos_query(place)
        url = URI("https://search.reservamos.mx/api/v2/places?q=#{place}")
        res = Net::HTTP.get_response(url)
        JSON(res.body)
    end

    #OpenWeather's API
    #Get cities weather forecast
    def OpenWeather_query(city)
        lat = city['lat']
        lon = city['long']
        url = URI("https://api.openweathermap.org/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,hourly,alerts&units=metric&appid=a5a47c18197737e8eeca634cd6acb581")
        res = Net::HTTP.get_response(url)   
        JSON(res.body)       
    end

end
