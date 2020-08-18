class UsersController < ApplicationController
  def edit
    @id = params[:id]
    @user = User.find(params[:id])
  end

  def update
    strong_user[:id] = params[:id]
    User.update(strong_user)
    redirect_to user_path(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    User.destroy(user)
    redirect_to places_path
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def strong_user
    params.require(:person).permit(:compagny, :money, :bio)
  end
end
