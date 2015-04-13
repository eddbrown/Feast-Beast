class YelpContentsController < ApplicationController

  def new
    @feast = Feast.find(params[:feast_id])
    @yelp_content = YelpContent.new
    params = {term: 'Street Food', limit: 5}
    local = {cc: 'GB', lang: 'eng'  }
    coordinates = {latitude: @feast.latitude, longitude: @feast.longitude}
    @results = Yelp.client.search_by_coordinates(coordinates, params, local)
    #render 'new'
  end

  def create 
    @feast = Feast.find(params[:feast_id])

    #https://github.com/Yelp/yelp-ruby
    #https://www.yelp.co.uk/developers/documentation/v2/search_api
    #fire away coordinates to yelp and return business names
  end

end
