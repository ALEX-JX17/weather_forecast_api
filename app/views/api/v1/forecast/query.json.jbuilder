json.cities do
    json.array!(@response) do |city|
        json.city_name city['city_name']

        json.daily_weather_forecast do      
            json.array!(city['daily_weather_forecast']) do |day|
                json.temp_min day['temp']['min']
                json.temp_max day['temp']['max']
            end
        end#daily_weather_forecast

    end
end#cities