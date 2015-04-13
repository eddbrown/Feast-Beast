class YelpContentsController < ApplicationController

  def get
    @feast = Feast.find(params[:id])
    params = {term: 'Street Food', limit: 5}
    local = {cc: 'GB', lang: 'eng'  }
    coordinates = {latitude: @feast.latitude, longitude: @feast.longitude}
    @results = Yelp.client.search_by_coordinates(coordinates, params, local)
  end

  def post 
    @feast = Feast.find(params[:id])
    @feast.yelp_id = params[:yelp_id]
    @feast.save
    redirect_to '/feasts'
  end

end
