class CitizenshipsController < ApplicationController
  def new
    citizenship = ""
    authorize citizenship
  end

  def create
    @citizenship = Citizenship.new
    @user = current_user
    @place = Place.find(params[:place_id])
    @citizenship.place = @place
    @citizenship.user = @user
    @citizenship.save
    authorize @citizenship
    redirect_to place_citizenship_path(@place, @citizenship)
  end

  def show
    @citizenship = Citizenship.find(params[:id])
    authorize @citizenship
  end

  def destroy
  end
end
