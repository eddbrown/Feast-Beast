class FeastsController < ApplicationController
  def index
    @feasts = Feast.all
  end

  def new
  end

  def create
    Feast.create(feast_params)
    redirect_to '/feasts'
  end

  def feast_params
    params.require(:feast).permit(:name)
  end
end
