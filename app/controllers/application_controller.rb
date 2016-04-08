class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :current_user, :user_signed_in?, :access_denied!
  protected

    def current_user
    	@current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def user_signed_in?
    	current_user.is_a? User
    end

    def authenticate_user!
    	user_signed_in? || access_denied!
    end

    def access_denied!
    	redirect_to sign_in_path, alert: "Sign in to continue" and return false
    end
end
