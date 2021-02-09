class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: user_params[:username])
    if user.authenticate(user_params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.username}!"
      redirect_to '/'
    else
      flash[:error] = "Sorry, your credentials are bad."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private
  def user_params
    params.permit(:username, :password)
  end
end
