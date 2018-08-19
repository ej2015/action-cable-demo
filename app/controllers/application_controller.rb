class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id] 
  end


  def user_signed_in?
    redirect_to sign_in_path and return unless session[:user_id] && session[:user_id] == current_user.id 
  end

end
