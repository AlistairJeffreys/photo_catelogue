class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  private
  
  def logged_in_user
    unless logged_in?
      flash[:danger] = "You are not an admin!"
      redirect_to root_path
    end
  end
end
