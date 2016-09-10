class UserController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nome]) do |user_params|
    devise_parameter_sanitizer.permit(:account_update, keys:[:nome])
      user_params.permit(:nome, :email)
    end

end
