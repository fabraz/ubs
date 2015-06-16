class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :user_name
  end
  
  def lookup_ip_location
    if Rails.env.development?
      Geocoder.search(request.remote_ip).first
    else
      request.location
    end
  end

end
	
