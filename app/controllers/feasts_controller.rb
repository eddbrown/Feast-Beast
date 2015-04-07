class FeastsController < ApplicationController
  def index
    @feasts = Feast.all
  end

  def new
    @feast = Feast.new
  end

  def create
    @feast = Feast.create(feast_params)
    redirect_to '/feasts'
  end

  def feast_params
    params.require(:feast).permit(:name)
  end

  def show
    
  end
end
