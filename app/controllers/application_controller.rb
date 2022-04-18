class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!

  # OG card meta data setting
  # Needs to be set on Heroku with: heroku config:set DOMAIN=www.my_product.com
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end
end
