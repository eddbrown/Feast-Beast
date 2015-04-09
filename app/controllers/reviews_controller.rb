class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def new
    @feast = Feast.find(params[:feast_id])
    @review = Review.new
  end

  def create
    @feast = Feast.find(params[:feast_id])
    @review = @feast.create_review(current_user, review_params)
    if @review.save 
      redirect_to '/feasts' 
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.user == current_user
      @review.destroy
      flash[:notice] = "Review deleted successfully"
    else
      flash[:notice] = "You cannot delete this review"
    end
    redirect_to '/feasts'
  end

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end
end
