class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
