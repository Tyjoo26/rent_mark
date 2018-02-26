class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def current_manager?
    current_user && current_user.manager?
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def authenticate!
    redirect_to login_path, alert: "You must have the proper credentials to access that information!"unless current_user.registered?
  end

end
