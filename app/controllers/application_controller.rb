class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end



  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  
end
