class ReviewsController < ApplicationController
  def create
    review = Review.new(strong_review)
    review.user = current_user
    review.place = Place.find(params[:place_id])
    redirect_to place_path(param[:place_id])
  end

  def destroy
    Review.destroy(Review.find(params[:id]))
    redirect_to place_path(param[:place_id])
  end

  private

  def strong_review
    params.require(:review).permit(:content, :rating)
    re
  end
end
