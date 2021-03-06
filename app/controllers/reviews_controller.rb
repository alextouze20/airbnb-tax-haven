class ReviewsController < ApplicationController
  def new
    review = Review.new
    authorize review
  end

  def create
    review = Review.new(strong_review)
    review.user = current_user
    review.place = Place.find(params[:place_id])
    authorize review
    if review.save
      redirect_to place_path(params[:place_id])
    else
      redirect_to place_path(
        params[:place_id],
        commit: "Create Review",
        review: {
          content: params[:review][:content],
          rating: params[:review][:rating]
        }
      )

    end
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
