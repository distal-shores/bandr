class SessionsController < ApplicationController


  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  # def create
  #   # user = User.find_by(email: params[:email])
  #   user = User.from_omniauth(env["omniauth.auth"])

  #   if user && user.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     redirect_to movies_path, notice: "Welcome back, #{user.first_name}!"
  #   else
  #     flash.now[:alert] = "Log in failed..."
  #     render :new
  #   end
  # end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_path, notice: "Adios!"
  # end
end


 