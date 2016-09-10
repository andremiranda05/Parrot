class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome]) do |user_params|
      user_params.permit(:nome, :email)
    end

  end


end
