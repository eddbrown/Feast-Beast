class FeastsController < ApplicationController

before_action :authenticate_user!, :except => [:index, :show]

  def index
    @feasts = Feast.all
    @user = current_user
  end

  def new
    @feast = Feast.new
  end

  def create
    feast = Feast.new
    current_user.create_feast(feast_params)
    redirect_to '/feasts'
  end

  def show
    @feast = Feast.find(params[:id])
    !@feast.yelp_id.nil? ? @result = Yelp.client.business(@feast.yelp_id) : nil
    !@feast.instagram_id.nil? ? @instagram = Instagram.user_recent_media(@feast.instagram_id, {:count => 10}) : nil
    !@feast.twitter_id.nil? ?  @feast_tweet = @feast.feast_tweets(@feast.twitter_id) : nil
    !@feast.twitter_id.nil? ?  @client_tweet = @feast.client_tweets(@feast.twitter_id) : nil
  end

  def edit
    @feast = Feast.find(params[:id])
    if @feast.user_id == current_user.id
      render 'edit'
    else
      flash[:notice] = "You cannot edit this feast"
      redirect_to '/feasts'
    end
  end

  def update
    @feast = Feast.find(params[:id])
    @feast.update(feast_params)
    redirect_to '/feasts'
  end

  def destroy
    @feast = Feast.find(params[:id])
    if @feast.user_id == current_user.id
      @feast.destroy
      flash[:notice] = "Feast deleted successfully"
    else
      flash[:notice] = "You cannot delete this feast"
    end
    redirect_to '/feasts'
  end

  def feast_params
    params.require(:feast).permit(:name, :image, :address, :description,  :twitter_id, :instagram_user, :icon, :category)
  end



end

