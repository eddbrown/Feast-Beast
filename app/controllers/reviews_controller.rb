class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def new
    @feast = Feast.find(params[:feast_id])
    @review = Review.new
  end

  def create
    @feast = Feast.find(params[:feast_id])
    @feast.reviews.create(review_params)
    redirect_to feasts_path
  end

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end
end
