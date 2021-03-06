class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :authenticate_user

  private

  def current_user
    session[:user_id]
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate_user
    unless logged_in?
      redirect_to login_path
    end
  end
end
