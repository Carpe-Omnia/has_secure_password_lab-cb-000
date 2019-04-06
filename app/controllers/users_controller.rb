class UsersController < ApplicationController
  def create
    User.create(user_params)
    redirect_to '/home'
  end
  def home
  end
  def new
    @user = User.new
  end
  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
