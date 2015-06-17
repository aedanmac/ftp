class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to new_session_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end

  private

  def user_params
    params.require(:user).permit(:email,:password)
  end

end

