class UsersController < ApplicationController
  def new
    # code
  end

  def create
    user = User.create(user_params)
    flash[:success] = "Welcome, #{user.username}!"
    session[:user_id]= user.id
    redirect_to '/'
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
