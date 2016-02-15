class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      session[:logged_in] = (user == 'admin' && password == 'password')
    end
    if user = authenticate_with_http_basic {|user_name, password| User.authenticate(user,
    password) }
      session[:user_id] = user.id
      session[:logged_in] = true
    else
      request_http_basic_authentication
    end
  end
  helper_method :logged_in?
  
  def logged_in?
    session[:logged_in]
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
