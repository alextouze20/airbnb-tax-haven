class PlacesController < ApplicationController
  def index
    if params[:query].present?
      @places = Place.where(min_income: (0..params[:query].to_i))
      # or you can also use:
      # @places = Place.where("min_income <= ?", params[:query])
      @places = "Fuck off peasant" if @places.empty?
    else
      @places = Place.all
    end
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
                                  :description,
                                  :thumbnail,
                                  photos: [])
  end
end
