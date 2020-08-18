class UsersController < ApplicationController
  def edit
    @id = params[:id]
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    user = User.find(params[:id])
    authorize user
    strong_user[:id] = params[:id]
    User.update(strong_user)
    redirect_to user_path(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    User.destroy(user)
    redirect_to places_path
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def strong_user
    params.require(:person).permit(:compagny, :money, :bio, :photo)
  end
end
