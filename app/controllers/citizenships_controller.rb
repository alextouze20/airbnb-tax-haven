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
    redirect_to user_path(@user)
  end

  def destroy
  end
end
