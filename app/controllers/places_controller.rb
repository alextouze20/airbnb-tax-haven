class PlacesController < ApplicationController
  def index
    @places = policy_scope(Place).order(created_at: :desc)
    if params[:query].present?
      @places = @places.select { |place| place.min_income <= params[:query].to_i }
      @places = "Fuck off Peasant." if @places.empty?
    end
  end

  def show
    @review = Review.new()
    @place = Place.find(params[:id])
    authorize @place
  end

  def new
    @place = Place.new()
    authorize @place
  end

  def create
    @place = Place.new(strong_place)
    authorize @place
    @place.user = current_user
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

  def destroy
    @place = Place.find(params[:id])
    authorize @place
    @place.destroy!
    redirect_to places_path
  end

  def edit
    @place = Place.find(params[:id])
    authorize @place
  end

  def update
    place = Place.find(params[:id])
    authorize place
    place.name = strong_place[:name]
    place.tax = strong_place[:tax]
    place.control = strong_place[:control]
    place.reputation = strong_place[:reputation]
    place.regime = strong_place[:regime]
    place.position = strong_place[:position]
    place.continent = strong_place[:continent]
    place.min_income = strong_place[:min_income]
    place.description = strong_place[:description]
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
