class PlacesController < ApplicationController
  def index
    @places = Place.all
  end
  def show
    @place = Place.find(params[:id])
  end
  def new
    @place = Place.new()
  end

  def create
    place = Place.new(strong_place)
    place.user = current_user
    place.save
    redirect_to places_path
  end

  private
  def strong_place
    params.require(:place).permit(:name,
                                  :tax,
                                  :control,
                                  :reputation,
                                  :regime,
                                  :position,
                                  :continent,
                                  :min_income,
                                  :description)
  end
end
