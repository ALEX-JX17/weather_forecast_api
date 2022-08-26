class Api::V1::ForecastController < ApplicationController
    require 'uri'
    require 'net/http'

    def query
        @response = reservamos_query(params[:city])
       
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

end
