class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @requests = Request.where(seller: @user.id)
  end

  def create
    @user = User.create(user_params)
  end

  def user_params
    params.require(:user).permit(:image)
  end
end