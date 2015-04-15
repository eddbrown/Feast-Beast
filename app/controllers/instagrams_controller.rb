class InstagramsController < ApplicationController

  def get
    @feast = Feast.find(params[:id])
    @instagram_result = Instagram.user_search(@feast.instagram_user)
  end

  def post 
    @feast = Feast.find(params[:id])
    @feast.instagram_id = params[:instagram_id]
    @feast.save
    redirect_to '/feasts'
  end

end
