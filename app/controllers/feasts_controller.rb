class FeastsController < ApplicationController
  def index
    @feasts = Feast.all
    @hash = Gmaps4rails.build_markers(@feasts) do |feast, marker|
      marker.lat feast.latitude
      marker.lng feast.longitude
      # marker.weight review.rating
      marker.infowindow '<h2>'+feast.name+'</h2>' + feast.description
      marker.picture({
        "url" => "http://www.robertgrantstats.co.uk/software/marker-icon-purple.png",
        "width" => 26,
        "height" => 42})
    end
  end

  def new
    @feast = Feast.new
  end

  def create
    @feast = Feast.create(feast_params)
    redirect_to '/feasts'
  end

  def feast_params
    params.require(:feast).permit(:name, :address, :description)
  end

  def show
    @feast = Feast.find(params[:id])
  end

  def edit
    @feast = Feast.find(params[:id])
  end

  def update
    @feast = Feast.find(params[:id])
    @feast.update(feast_params)

    redirect_to '/feasts'
  end

  def destroy
    @feast = Feast.find(params[:id])
    @feast.destroy
    flash[:notice] = 'Feast deleted successfully'
    redirect_to '/feasts'
  end
end

