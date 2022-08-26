This is a Reservamos challenge Api For Weather Forecast of Mexican cities

ruby version: "3.0.4"
rails version: "~> 7.0.3", ">= 7.0.3.1"

NOTE: To test the API run your rails server in your localhost and modify the default: http://localhost:3000 as you need it.

Use Case
An endpoint that receives a city name and return a list of cities with it’s weather forecast:
    Params:
        Partial or total name of any city in México
    Results:
        List of cities that match the given param including the maximum and minimum temperature
        for the next 7 days(But the API really return 8 days) include only cities into results.


HOW TO USE
GET weather forecast for a given mexican city name

    http://localhost:3000/api/v1/forecast?city=mon

PARAMS
|    city        |    mon
|                |    Total o partial name place for avaible Reservamos's places, but the Api only will
|                |    response with Mexican cities.

EXAMPLE RESPONSE:

{
    "cities": [
        {
            "city_name": "Monterrey",
            "daily_weather_forecast": [
                {
                    "temp_min": 24.32,
                    "temp_max": 30.81
                },
                {
                    "temp_min": 23.59,
                    "temp_max": 34.4
                },
                {
                    "temp_min": 23.88,
                    "temp_max": 34.86
                },
                {
                    "temp_min": 24.24,
                    "temp_max": 35.46
                },
                {
                    "temp_min": 24.36,
                    "temp_max": 35
                },
                {
                    "temp_min": 23.98,
                    "temp_max": 33.79
                },
                {
                    "temp_min": 23.49,
                    "temp_max": 32.69
                },
                {
                    "temp_min": 23.28,
                    "temp_max": 30.67
                }
            ]
        },
        {
            "city_name": "Monteon",
            "daily_weather_forecast": [
                {
                    "temp_min": 26.29,
                    "temp_max": 30.93
                },
                {
                    "temp_min": 25.21,
                    "temp_max": 29.48
                },
                {
                    "temp_min": 25.2,
                    "temp_max": 29.68
                },
                {
                    "temp_min": 25.51,
                    "temp_max": 29.56
                },
                {
                    "temp_min": 25.66,
                    "temp_max": 29.46
                },
                {
                    "temp_min": 25.5,
                    "temp_max": 28.19
                },
                {
                    "temp_min": 25.82,
                    "temp_max": 29.35
                },
                {
                    "temp_min": 25.47,
                    "temp_max": 29.21
                }
            ]
        },
        {
            "city_name": "Morelia",
            "daily_weather_forecast": [
                {
                    "temp_min": 12.03,
                    "temp_max": 24.52
                },
                {
                    "temp_min": 12.13,
                    "temp_max": 22.66
                },
                {
                    "temp_min": 13.56,
                    "temp_max": 21.61
                },
                {
                    "temp_min": 13.23,
                    "temp_max": 20.56
                },
                {
                    "temp_min": 12.9,
                    "temp_max": 23.8
                },
                {
                    "temp_min": 14.35,
                    "temp_max": 23.29
                },
                {
                    "temp_min": 13.78,
                    "temp_max": 22.96
                },
                {
                    "temp_min": 12.46,
                    "temp_max": 24.73
                }
            ]
        },
        {
            "city_name": "Moroleón",
            "daily_weather_forecast": [
                {
                    "temp_min": 12.3,
                    "temp_max": 26.46
                },
                {
                    "temp_min": 12.18,
                    "temp_max": 27.02
                },
                {
                    "temp_min": 14.2,
                    "temp_max": 26.25
                },
                {
                    "temp_min": 13.71,
                    "temp_max": 24.85
                },
                {
                    "temp_min": 13.75,
                    "temp_max": 25.42
                },
                {
                    "temp_min": 14.95,
                    "temp_max": 25.59
                },
                {
                    "temp_min": 14.42,
                    "temp_max": 24.84
                },
                {
                    "temp_min": 13.16,
                    "temp_max": 27.56
                }
            ]
        },
        {
            "city_name": "Monclova",
            "daily_weather_forecast": [
                {
                    "temp_min": 23.22,
                    "temp_max": 30.58
                },
                {
                    "temp_min": 25.31,
                    "temp_max": 33.86
                },
                {
                    "temp_min": 26.09,
                    "temp_max": 34.14
                },
                {
                    "temp_min": 26.06,
                    "temp_max": 35.31
                },
                {
                    "temp_min": 26.12,
                    "temp_max": 33.18
                },
                {
                    "temp_min": 25.09,
                    "temp_max": 31.13
                },
                {
                    "temp_min": 24.44,
                    "temp_max": 30.03
                },
                {
                    "temp_min": 24.36,
                    "temp_max": 28.84
                }
            ]
        }
    ]
}

Developer: Alejandro JX