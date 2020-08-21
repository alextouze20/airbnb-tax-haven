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
   citizenship = Citizenship.find(params[:id])
   authorize citizenship
   Citizenship.destroy(citizenship.id)
   redirect_to profile_path(current_user.id)
  end
end
