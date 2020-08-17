class PlacesController < ApplicationController
  def index
    @places = Place.all
  def show
    @place = Place.find(params[:id])
  end
end
