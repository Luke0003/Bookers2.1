class ApplicationController < ActionController::Base
  before_action :config_permit_parameters, if: :devise_controller?

  protected

  def config_permit_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

end

