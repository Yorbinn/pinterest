class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sing_up) { |u| u.permit(:email, :password, :password_confirmation, :phone)}
  end
end
