class ReviewsController < ApplicationController
  def new
    review = Review.new
    authorize review
  end
  def create
    review = Review.new(strong_review)
    review.user = current_user
    authorize review
    review.place = Place.find(params[:place_id])
    review.save
    redirect_to place_path(params[:place_id])
  end

  def destroy
    Review.destroy(Review.find(params[:id]))
    redirect_to place_path(params[:place_id])
  end

  private

  def strong_review
    params.require(:review).permit(:content, :rating)
  end
end
