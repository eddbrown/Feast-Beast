class YelpContentsController < ApplicationController

  def new
    @feast = Feast.find(params[:feast_id])
    @yelp_content = YelpContent.new
    render 'new'
  end

end
