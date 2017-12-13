class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
<<<<<<< HEAD
  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:account_update, keys: [:name,:email,:phone_number,:description])
=======
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
>>>>>>> origin/master
  end
end
