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

