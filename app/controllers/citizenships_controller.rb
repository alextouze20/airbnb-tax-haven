class CitizenshipsController < ApplicationController
  def new
  end

  def create
    @citizenship = Citizenship.new
    @user = current_user
    @place = Place.find(params[:place_id])
    @citizenship.place = @place
    @citizenship.user = @user
    @citizenship.save
    redirect_to place_citizenship_path(@place, @citizenship)
  end

  def show
    @citizenship = Citizenship.find(params[:id])
  end

  def destroy
  end
end
