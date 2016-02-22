class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  protected 
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user


def restrict_access
    if !current_user
      flash[:alert] = 'You must log in.'
      redirect_to root_path
    end
  end  
end
