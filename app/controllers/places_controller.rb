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
end
